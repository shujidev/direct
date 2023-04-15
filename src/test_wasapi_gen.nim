#NOT WORKING YET!
import winim/lean
import direct/[audiosessiontypes, audioclient]

const TONE_DURATION_SEC = cint 30;
const TONE_AMPLITUDE = 0.5;     # Scalar value, should be between 0.0 - 1.0


type ToneSampleGenerator = object
   m_SampleQueue:ptr RenderBuffer
   m_SampleQueueTail:ptr ptr RenderBuffer
    
proc IsEOF(This:ToneSampleGenerator):BOOL = return This.m_SampleQueue==nil
proc GetBufferLength(This:ToneSampleGenerator):UINT32 = return if This.m_SampleQueue!=nil: This.m_SampleQueue.BufferSize else: 0

proc ToneSampleGenerator(This:ToneSampleGenerator)=
    This.m_SampleQueue = nil
    This.m_SampleQueueTail = This.m_SampleQueue

#~ ToneSampleGenerator::~ToneSampleGenerator()
#~ {
    #~ # Flush unused samples
    #~ Flush();
#~ }


#  Create a linked list of sample buffers
proc GenerateSampleBuffer(This:ToneSampleGenerator, Frequency:DWORD, FramesPerPeriod:UINT32, wfx:ptr WAVEFORMATEX):HRESULT =
    var hr = S_OK;

    var renderBufferSizeInBytes = UINT32 FramesPerPeriod * wfx.nBlockAlign;
    var renderDataLength = UINT64 ( wfx.nSamplesPerSec * TONE_DURATION_SEC * wfx.nBlockAlign ) + ( renderBufferSizeInBytes - 1 )
    var renderBufferCount = UINT64 renderDataLength / renderBufferSizeInBytes;

    var theta = 0.0

    for i in 0..<renderBufferCount:
        var SampleBuffer = RenderBuffer();
        if nullptr == SampleBuffer:
            return E_OUTOFMEMORY

        SampleBuffer.BufferSize = renderBufferSizeInBytes;
        SampleBuffer.BytesFilled = renderBufferSizeInBytes;
        SampleBuffer.Buffer = new (std::nothrow) BYTE[ renderBufferSizeInBytes ];
        if nil == SampleBuffer.Buffer:
            return E_OUTOFMEMORY

        case GetRenderSampleType( wfx ):
        of RenderSampleType::SampleType16BitPCM:
            GenerateSineSamples<short>( SampleBuffer.Buffer, SampleBuffer.BufferSize, Frequency, wfx.nChannels, wfx.nSamplesPerSec, TONE_AMPLITUDE, &theta);
            break;

        of RenderSampleType::SampleType24in32BitPCM:
            GenerateSineSamples<int24in32>(SampleBuffer.Buffer, SampleBuffer.BufferSize, Frequency, wfx.nChannels, wfx.nSamplesPerSec, TONE_AMPLITUDE, &theta);
            break;

        of RenderSampleType::SampleTypeFloat:
            GenerateSineSamples( SampleBuffer.Buffer, SampleBuffer.BufferSize, Frequency, wfx.nChannels, wfx.nSamplesPerSec, TONE_AMPLITUDE, &theta);
            break;

        else:
            return E_UNEXPECTED;
            break;

        m_SampleQueueTail = SampleBuffer;
        m_SampleQueueTail = SampleBuffer.Next;
    return hr



#  Generate samples which represent a sine wave that fits into the specified buffer.
#
#  T:  Type of data holding the sample (short, int, byte, float)
#  Buffer - Buffer to hold the samples
#  BufferLength - Length of the buffer.
#  ChannelCount - Number of channels per audio frame.
#  SamplesPerSecond - Samples/Second for the output data.
#  InitialTheta - Initial theta value - start at 0, modified in this function.
#
proc GenerateSineSamples(This:ToneSampleGenerator, Buffer:ptr BYTE, BufferLength:int, Frequency, ChannelCount, SamplesPerSecond:DWORD, Amplitude:double, InitialTheta:ptr double) =
    var sampleIncrement = (Frequency * (M_PI*2)) / SamplesPerSecond;
    var dataBuffer = Buffer
    var theta = if InitialTheta!=NULL: InitialTheta else: 0

    for i in countup(0, BufferLength div sizeof(T), ChannelCount):
        double sinValue = Amplitude * sin( theta );
        for j in 0..<ChannelCount:
            dataBuffer[i+j] = sinValue
        theta += sampleIncrement

    if InitialTheta != NULL:
        InitialTheta = theta


#  File the Data buffer of size BytesToRead with the first item in the queue.  Caller is responsible for allocating and freeing buffer
proc FillSampleBuffer(This:ToneSampleGenerator, BytesToRead:UINT32, Data:ptr BYTE): HRESULT =
    if nullptr == Data: return E_POINTER

    RenderBuffer *SampleBuffer = m_SampleQueue;

    if BytesToRead > SampleBuffer.BufferSize): return E_INVALIDARG;

    CopyMemory( Data, SampleBuffer.Buffer, BytesToRead );

    m_SampleQueue = m_SampleQueue.Next;
    SAFE_DELETE(SampleBuffer);

    return S_OK;
}


#  Remove and free unused samples from the queue
proc Flush()=
    while m_SampleQueue != nil:
        var SampleBuffer:ptr RenderBuffer = m_SampleQueue;
        m_SampleQueue = SampleBuffer->Next;
        SAFE_DELETE( SampleBuffer )
