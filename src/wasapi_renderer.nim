type RenderBuffer* = object
    Next:ptr RenderBuffer
    BufferLength:UINT32
    Buffer:ptr BYTE

    #~ ~RenderBuffer()= delete [] _Buffer

type RenderSampleType = enum
    SampleTypeFloat,
    SampleType16BitPCM
    
type CWASAPIRendererVtbl=object
    Base: IUnknown

    CWASAPIRenderer(Endpoint:ptr IMMDevice);
    Initialize(EngineLatency:UINT32):bool
    Shutdown();
    Start(RenderBufferQueue:ptr RenderBuffer):bool
    Stop();
    ChannelCount(This:):WORD { return _MixFormat.nChannels; }
    SamplesPerSecond():UINT32 { return _MixFormat.nSamplesPerSec; }
    BytesPerSample():UINT32 { return _MixFormat.BitsPerSample / 8; }
    SampleType():RenderSampleType { return _RenderSampleType; }
    FrameSize():UINT32 { return _FrameSize; }
    BufferSize():UINT32 { return _BufferSize; }
    BufferSizePerPeriod():UINT32
    STDMETHOD_(ULONG, AddRef)()
    STDMETHOD_(ULONG, Release)()

    #~ ~CWASAPIRenderer(void);
    RefCount: LONG
    #  Core Audio Rendering member variables.
    Endpoint:ptr IMMDevice
    AudioClient:ptr IAudioClient
    RenderClient:ptr IAudioRenderClient

    RenderThread, ShutdownEvent:HANDLE
    MixFormat:ptr WAVEFORMATEX
    FrameSize:UINT32
    RenderSampleType:RenderSampleType
    BufferSize:UINT32
    EngineLatencyInMS:LONG

    #  Render buffer management.
    RenderBufferQueue:ptr RenderBuffer

    #~ static DWORD __stdcall WASAPIRenderThread(LPVOID Context);
    DoRenderThread(This:CWASAPIRenderer):DWORD

    #IUnknown
    STDMETHOD(QueryInterface)(REFIID iid, void **pvObject);

    #Utility functions.
    CalculateMixFormatType():bool
    InitializeAudioEngine():bool
    LoadFormat():bool
