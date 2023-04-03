import winim/lean
import unknwn
{.passL: "-L. -lxaudio2_8 ".}

const CLSID_XAudio20* = IID(Data1:0xfac23f48'i32, Data2:0x31f5, Data3:0x45a8, Data4:[0xb4'u8, 0x9b, 0x52, 0x25, 0xd6, 0x14, 0x01, 0xaa])
const CLSID_XAudio21* = IID(Data1:0xe21a7345'i32, Data2:0xeb21, Data3:0x468e, Data4:[0xbe'u8, 0x50, 0x80, 0x4d, 0xb9, 0x7c, 0xf7, 0x08])
const CLSID_XAudio22* = IID(Data1:0xb802058a'i32, Data2:0x464a, Data3:0x42db, Data4:[0xbc'u8, 0x10, 0xb6, 0x50, 0xd6, 0xf2, 0x58, 0x6a])
const CLSID_XAudio23* = IID(Data1:0x4c5e637a'i32, Data2:0x16c7, Data3:0x4de3, Data4:[0x9c'u8, 0x46, 0x5e, 0xd2, 0x21, 0x81, 0x96, 0x2d])
const CLSID_XAudio24* = IID(Data1:0x03219e78'i32, Data2:0x5bc3, Data3:0x44d1, Data4:[0xb9'u8, 0x2e, 0xf6, 0x3d, 0x89, 0xcc, 0x65, 0x26])
const CLSID_XAudio25* = IID(Data1:0x4c9b6dde'i32, Data2:0x6809, Data3:0x46e6, Data4:[0xa2'u8, 0x78, 0x9b, 0x6a, 0x97, 0x58, 0x86, 0x70])
const CLSID_XAudio26* = IID(Data1:0x3eda9b49'i32, Data2:0x2085, Data3:0x498b, Data4:[0x9b'u8, 0xb2, 0x39, 0xa6, 0x77, 0x84, 0x93, 0xde])
const CLSID_XAudio27* = IID(Data1:0x5a508685'i32, Data2:0xa254, Data3:0x4fba, Data4:[0x9b'u8, 0x82, 0x9a, 0x24, 0xb0, 0x03, 0x06, 0xaf])
const CLSID_XAudio2Debug* = IID(Data1:0xdb05ea35'i32, Data2:0x0329, Data3:0x4d4b, Data4:[0xa5'u8, 0x3a, 0x6d, 0xea, 0xd0, 0x3d, 0x38, 0x52])
const IID_IXAudio20* = IID(Data1:0x8bcf1f58'i32, Data2:0x9fe7, Data3:0x4583, Data4:[0x8a'u8, 0xc6, 0xe2, 0xad, 0xc4, 0x65, 0xc8, 0xbb])
const IID_IXAudio22* = IID(Data1:0x8bcf1f58'i32, Data2:0x9fe7, Data3:0x4583, Data4:[0x8a'u8, 0xc6, 0xe2, 0xad, 0xc4, 0x65, 0xc8, 0xbb])
const IID_IXAudio23* = IID(Data1:0x8bcf1f58'i32, Data2:0x9fe7, Data3:0x4583, Data4:[0x8a'u8, 0xc6, 0xe2, 0xad, 0xc4, 0x65, 0xc8, 0xbb])
const IID_IXAudio27* = IID(Data1:0x8bcf1f58'i32, Data2:0x9fe7, Data3:0x4583, Data4:[0x8a'u8, 0xc6, 0xe2, 0xad, 0xc4, 0x65, 0xc8, 0xbb])
const IID_IXAudio28* = IID(Data1:0x60d8dac8'i32, Data2:0x5aa1, Data3:0x4e8e, Data4:[0xb5'u8, 0x97, 0x2f, 0x5e, 0x28, 0x83, 0xd4, 0x84])
const IID_IXAudio2* = IID(Data1:0x2b02e3cf'i32, Data2:0x2e0b, Data3:0x4ec3, Data4:[0xbe'u8, 0x45, 0x1b, 0x2a, 0x3f, 0xe7, 0x21, 0x0d])

#Windows definitions
const WAVE_FORMAT_PCM* = 0x1
const WAVE_FORMAT_IEEE_FLOAT* = 0x3
type
    SAMPLES_UNION*  {.bycopy,  union.}  =  object
        wValidBitsPerSample*:  WORD
        wSamplesPerBlock*:  WORD
        wReserved*:  WORD

    WAVEFORMATEX*  {.bycopy.}  =  object
        wFormatTag*:  WORD
        nChannels*:  WORD
        nSamplesPerSec*:  DWORD
        nAvgBytesPerSec*:  DWORD
        nBlockAlign*:  WORD
        wBitsPerSample*:  WORD
        cbSize*:  WORD

    WAVEFORMATEXTENSIBLE*  {.bycopy.}  =  object
        Format*:  WAVEFORMATEX
        Samples*:  SAMPLES_UNION
        dwChannelMask*:  DWORD
        SubFormat*:  GUID
       
#XAudio2
const
  XAUDIO2_MAX_BUFFER_BYTES* = (0x80000000)
  XAUDIO2_MAX_QUEUED_BUFFERS* = (64)
  XAUDIO2_MAX_BUFFERS_SYSTEM* = (2)
  XAUDIO2_MAX_AUDIO_CHANNELS* = (64)
  XAUDIO2_MIN_SAMPLE_RATE* = (1000)
  XAUDIO2_MAX_SAMPLE_RATE* = (200000)
  XAUDIO2_MAX_VOLUME_LEVEL* = (16777216.0000000)
  XAUDIO2_MIN_FREQ_RATIO* = (1.0 / 1024.00000000000)
  XAUDIO2_MAX_FREQ_RATIO* = (1024.00000000000)
  XAUDIO2_DEFAULT_FREQ_RATIO* = (2.00000000000000)
  XAUDIO2_MAX_FILTER_ONEOVERQ* = (1.50000000000000)
  XAUDIO2_MAX_FILTER_FREQUENCY* = (1.00000000000000)
  XAUDIO2_MAX_LOOP_COUNT* = (254)
  XAUDIO20_MAX_LOOP_COUNT* = (0x100000)
  XAUDIO2_COMMIT_NOW* = (0)
  XAUDIO2_COMMIT_ALL* = (0)
  XAUDIO2_INVALID_OPSET* = (0xffffffff)
  XAUDIO2_NO_LOOP_REGION* = (0)
  XAUDIO2_LOOP_INFINITE* = (255)
  XAUDIO20_LOOP_INFINITE*:UINT = -1
  XAUDIO2_DEFAULT_CHANNELS* = (0)
  XAUDIO2_DEFAULT_SAMPLERATE* = (0)
  
const XAUDIO2_DEFAULT_PROCESSOR*  =  0xffffffff
#~ const XAUDIO2_DEFAULT_PROCESSOR*  =  0x1
type

    XAUDIO2_WINDOWS_PROCESSOR_SPECIFIER*  {.size: sizeof(UINT32).} =  enum
        Processor1  =  0x1,  Processor2  =  0x2,  Processor3  =  0x4,  Processor4  =  0x8,
        Processor5  =  0x10,  Processor6  =  0x20,  Processor7  =  0x40,  Processor8  =  0x80,
        Processor9  =  0x100,  Processor10  =  0x200,  Processor11  =  0x400,  Processor12  =  0x800,
        Processor13  =  0x1000,  Processor14  =  0x2000,  Processor15  =  0x4000,
        Processor16  =  0x8000,  Processor17  =  0x10000,  Processor18  =  0x20000,
        Processor19  =  0x40000,  Processor20  =  0x80000,  Processor21  =  0x100000,
        Processor22  =  0x200000,  Processor23  =  0x400000,  Processor24  =  0x800000,
        Processor25  =  0x1000000,  Processor26  =  0x2000000,  Processor27  =  0x4000000,
        Processor28  =  0x8000000,  Processor29  =  0x10000000,  Processor30  =  0x20000000,
        Processor31  =  0x40000000,  Processor32  =  0x80000000,
        XAUDIO2_ANY_PROCESSOR  =  0xffffffff
    XAUDIO2_PROCESSOR*  =  XAUDIO2_WINDOWS_PROCESSOR_SPECIFIER
    
    XAUDIO2_PERFORMANCE_DATA*  {.bycopy.}  =  object
        AudioCyclesSinceLastQuery*:  UINT64
        TotalCyclesSinceLastQuery*:  UINT64
        MinimumCyclesPerQuantum*:  UINT32
        MaximumCyclesPerQuantum*:  UINT32
        MemoryUsageInBytes*:  UINT32
        CurrentLatencyInSamples*:  UINT32
        GlitchesSinceEngineStarted*:  UINT32
        ActiveSourceVoiceCount*:  UINT32
        TotalSourceVoiceCount*:  UINT32
        ActiveSubmixVoiceCount*:  UINT32
        ActiveResamplerCount*:  UINT32
        ActiveMatrixMixCount*:  UINT32
        ActiveXmaSourceVoices*:  UINT32
        ActiveXmaStreams*:  UINT32

    XAUDIO22_PERFORMANCE_DATA*  {.bycopy.}  =  object
        AudioCyclesSinceLastQuery*:  UINT64
        TotalCyclesSinceLastQuery*:  UINT64
        MinimumCyclesPerQuantum*:  UINT32
        MaximumCyclesPerQuantum*:  UINT32
        MemoryUsageInBytes*:  UINT32
        CurrentLatencyInSamples*:  UINT32
        GlitchesSinceEngineStarted*:  UINT32
        ActiveSourceVoiceCount*:  UINT32
        TotalSourceVoiceCount*:  UINT32
        ActiveSubmixVoiceCount*:  UINT32
        TotalSubmixVoiceCount*:  UINT32
        ActiveXmaSourceVoices*:  UINT32
        ActiveXmaStreams*:  UINT32

    XAUDIO20_PERFORMANCE_DATA*  {.bycopy.}  =  object
        AudioCyclesSinceLastQuery*:  UINT64
        TotalCyclesSinceLastQuery*:  UINT64
        MinimumCyclesPerQuantum*:  UINT32
        MaximumCyclesPerQuantum*:  UINT32
        MemoryUsageInBytes*:  UINT32
        CurrentLatencyInSamples*:  UINT32
        GlitchesSinceLastQuery*:  UINT32
        ActiveSourceVoiceCount*:  UINT32
        TotalSourceVoiceCount*:  UINT32
        ActiveSubmixVoiceCount*:  UINT32
        TotalSubmixVoiceCount*:  UINT32
        ActiveXmaSourceVoices*:  UINT32
        ActiveXmaStreams*:  UINT32

    XAUDIO2_DEVICE_ROLE*  =  enum
        InvalidDeviceRole  =  not  0xf,
        NotDefaultDevice  =  0x0,
        DefaultConsoleDevice  =  0x1,
        DefaultMultimediaDevice  =  0x2,
        DefaultCommunicationsDevice  =  0x4,
        DefaultGameDevice  =  0x8,
        GlobalDefaultDevice  =  0xf,
    XAUDIO2_DEVICE_DETAILS*  {.bycopy.}  =  object
        DeviceID*:  array[256,  WCHAR]
        DisplayName*:  array[256,  WCHAR]
        Role*:  XAUDIO2_DEVICE_ROLE
        OutputFormat*:  WAVEFORMATEXTENSIBLE

    XAUDIO27_VOICE_DETAILS*  {.bycopy.}  =  object
        CreationFlags*:  UINT32
        InputChannels*:  UINT32
        InputSampleRate*:  UINT32

    XAUDIO2_VOICE_DETAILS*  {.bycopy.}  =  object
        CreationFlags*:  UINT32
        ActiveFlags*:  UINT32
        InputChannels*:  UINT32
        InputSampleRate*:  UINT32

    XAUDIO2_SEND_DESCRIPTOR*  {.bycopy.}  =  object
        Flags*:  UINT32
        pOutputVoice*:  ptr  IXAudio2Voice

    XAUDIO23_VOICE_SENDS*  {.bycopy.}  =  object
        OutputCount*:  UINT32
        pOutputVoices*:  ptr  ptr  IXAudio2Voice

    XAUDIO2_VOICE_SENDS*  {.bycopy.}  =  object
        SendCount*:  UINT32
        pSends*:  ptr  XAUDIO2_SEND_DESCRIPTOR

    XAUDIO2_EFFECT_DESCRIPTOR*  {.bycopy.}  =  object
        pEffect*:  ptr  IUnknown
        InitialState*:  WINBOOL
        OutputChannels*:  UINT32

    XAUDIO2_EFFECT_CHAIN*  {.bycopy.}  =  object
        EffectCount*:  UINT32
        pEffectDescriptors*:  ptr  XAUDIO2_EFFECT_DESCRIPTOR

    XAUDIO2_FILTER_TYPE* = enum
        LowPassFilter = 0, BandPassFilter = 1, HighPassFilter = 2, NotchFilter = 3
        
    XAUDIO2_FILTER_PARAMETERS* {.bycopy.} = object
        Type*: XAUDIO2_FILTER_TYPE
        Frequency*: cfloat
        OneOverQ*: cfloat
        
    XAUDIO2_BUFFER* {.bycopy.} = object
        Flags*: UINT32
        AudioBytes*: UINT32
        pAudioData*: ptr BYTE
        PlayBegin*: UINT32
        PlayLength*: UINT32
        LoopBegin*: UINT32
        LoopLength*: UINT32
        LoopCount*: UINT32
        pContext*: pointer

    XAUDIO2_BUFFER_WMA* {.bycopy.} = object
        pDecodedPacketCumulativeBytes*: ptr UINT32
        PacketCount*: UINT32

    XAUDIO2_VOICE_STATE* {.bycopy.} = object
        pCurrentBufferContext*: pointer
        BuffersQueued*: UINT32
        SamplesPlayed*: UINT64

    XAUDIO2_DEBUG_CONFIGURATION* {.bycopy.} = object
        TraceMask*: UINT32
        BreakMask*: UINT32
        LogThreadID*: WINBOOL
        LogFileline*: WINBOOL
        LogFunctionName*: WINBOOL
        LogTiming*: WINBOOL
    
    AUDIO_STREAM_CATEGORY* = enum
        AudioCategory_Other,
        AudioCategory_ForegroundOnlyMedia,
        AudioCategory_BackgroundCapableMedia,
        AudioCategory_Communications,
        AudioCategory_Alerts,
        AudioCategory_SoundEffects,
        AudioCategory_GameEffects,
        AudioCategory_GameMedia,
        AudioCategory_GameChat,
        AudioCategory_Speech,
        AudioCategory_Movie,
        AudioCategory_Media,
        AudioCategory_FarFieldSpeech,
        AudioCategory_UniformSpeech,
        AudioCategory_VoiceTyping
    

    IXAudio2EngineCallbackVtbl* = object
        OnProcessingPassStart*: proc (This:ptr IXAudio2EngineCallback) {.stdcall.}
        OnProcessingPassEnd*: proc (This:ptr IXAudio2EngineCallback) {.stdcall.}
        OnCriticalError*: proc (This:ptr IXAudio2EngineCallback, Error:HRESULT) {.stdcall.}
    IXAudio2EngineCallback* = object
        lpVtbl*: ptr IXAudio2EngineCallbackVtbl
    IXAudio20VoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio20Voice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio20Voice, pSendList:ptr XAUDIO23_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio20Voice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio20Voice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio20Voice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio20Voice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio20Voice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio20Voice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio20Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio20Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio20Voice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio20Voice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio20Voice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio20Voice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio20Voice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio20Voice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float): HRESULT {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio20Voice) {.stdcall.}
    IXAudio20Voice* = object
        lpVtbl*: ptr IXAudio20VoiceVtbl
    IXAudio23VoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio23Voice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio23Voice, pSendList:ptr XAUDIO23_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio23Voice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio23Voice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio23Voice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio23Voice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio23Voice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio23Voice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio23Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio23Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio23Voice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio23Voice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio23Voice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio23Voice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio23Voice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio23Voice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio23Voice) {.stdcall.}
    IXAudio23Voice* = object
        lpVtbl*: ptr IXAudio23VoiceVtbl
    IXAudio27VoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio27Voice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio27Voice, pSendList:ptr XAUDIO2_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio27Voice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio27Voice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio27Voice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio27Voice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio27Voice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio27Voice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio27Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio27Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetOutputFilterParameters*: proc (This:ptr IXAudio27Voice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputFilterParameters*: proc (This:ptr IXAudio27Voice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio27Voice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio27Voice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio27Voice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio27Voice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio27Voice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio27Voice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio27Voice) {.stdcall.}
    IXAudio27Voice* = object
        lpVtbl*: ptr IXAudio27VoiceVtbl
    IXAudio2VoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio2Voice, pVoiceDetails:ptr XAUDIO2_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio2Voice, pSendList:ptr XAUDIO2_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio2Voice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio2Voice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio2Voice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio2Voice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio2Voice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio2Voice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetOutputFilterParameters*: proc (This:ptr IXAudio2Voice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputFilterParameters*: proc (This:ptr IXAudio2Voice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio2Voice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio2Voice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio2Voice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio2Voice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio2Voice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio2Voice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio2Voice) {.stdcall.}
    IXAudio2Voice* = object
        lpVtbl*: ptr IXAudio2VoiceVtbl
    IXAudio20SourceVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio20SourceVoice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio20SourceVoice, pSendList:ptr XAUDIO23_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio20SourceVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio20SourceVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio20SourceVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio20SourceVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio20SourceVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio20SourceVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio20SourceVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio20SourceVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio20SourceVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio20SourceVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio20SourceVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio20SourceVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio20SourceVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio20SourceVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float): HRESULT {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio20SourceVoice) {.stdcall.}
        Start*: proc (This:ptr IXAudio20SourceVoice, Flags:UINT32=0, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        Stop*: proc (This:ptr IXAudio20SourceVoice, Flags:UINT32=0, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        SubmitSourceBuffer*: proc (This:ptr IXAudio20SourceVoice, pBuffer:ptr XAUDIO2_BUFFER, pBufferWMA:ptr XAUDIO2_BUFFER_WMA=nil): HRESULT {.stdcall.}
        FlushSourceBuffers*: proc (This:ptr IXAudio20SourceVoice): HRESULT {.stdcall.}
        Discontinuity*: proc (This:ptr IXAudio20SourceVoice): HRESULT {.stdcall.}
        ExitLoop*: proc (This:ptr IXAudio20SourceVoice, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetState*: proc (This:ptr IXAudio20SourceVoice, pVoiceState:ptr XAUDIO2_VOICE_STATE) {.stdcall.}
        SetFrequencyRatio*: proc (This:ptr IXAudio20SourceVoice, Ratio:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFrequencyRatio*: proc (This:ptr IXAudio20SourceVoice, pRatio:ptr float) {.stdcall.}
    IXAudio20SourceVoice* = object
        lpVtbl*: ptr IXAudio20SourceVoiceVtbl
    IXAudio23SourceVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio23SourceVoice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio23SourceVoice, pSendList:ptr XAUDIO23_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio23SourceVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio23SourceVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio23SourceVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio23SourceVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio23SourceVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio23SourceVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio23SourceVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio23SourceVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio23SourceVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio23SourceVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio23SourceVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio23SourceVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio23SourceVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio23SourceVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio23SourceVoice) {.stdcall.}
        Start*: proc (This:ptr IXAudio23SourceVoice, Flags:UINT32=0, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        Stop*: proc (This:ptr IXAudio23SourceVoice, Flags:UINT32=0, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        SubmitSourceBuffer*: proc (This:ptr IXAudio23SourceVoice, pBuffer:ptr XAUDIO2_BUFFER, pBufferWMA:ptr XAUDIO2_BUFFER_WMA=nil): HRESULT {.stdcall.}
        FlushSourceBuffers*: proc (This:ptr IXAudio23SourceVoice): HRESULT {.stdcall.}
        Discontinuity*: proc (This:ptr IXAudio23SourceVoice): HRESULT {.stdcall.}
        ExitLoop*: proc (This:ptr IXAudio23SourceVoice, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetState*: proc (This:ptr IXAudio23SourceVoice, pVoiceState:ptr XAUDIO2_VOICE_STATE) {.stdcall.}
        SetFrequencyRatio*: proc (This:ptr IXAudio23SourceVoice, Ratio:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFrequencyRatio*: proc (This:ptr IXAudio23SourceVoice, pRatio:ptr float) {.stdcall.}
    IXAudio23SourceVoice* = object
        lpVtbl*: ptr IXAudio23SourceVoiceVtbl
    IXAudio27SourceVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio27SourceVoice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio27SourceVoice, pSendList:ptr XAUDIO2_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio27SourceVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio27SourceVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio27SourceVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio27SourceVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio27SourceVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio27SourceVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio27SourceVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio27SourceVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetOutputFilterParameters*: proc (This:ptr IXAudio27SourceVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputFilterParameters*: proc (This:ptr IXAudio27SourceVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio27SourceVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio27SourceVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio27SourceVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio27SourceVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio27SourceVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio27SourceVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio27SourceVoice) {.stdcall.}
        Start*: proc (This:ptr IXAudio27SourceVoice, Flags:UINT32=0, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        Stop*: proc (This:ptr IXAudio27SourceVoice, Flags:UINT32=0, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        SubmitSourceBuffer*: proc (This:ptr IXAudio27SourceVoice, pBuffer:ptr XAUDIO2_BUFFER, pBufferWMA:ptr XAUDIO2_BUFFER_WMA=nil): HRESULT {.stdcall.}
        FlushSourceBuffers*: proc (This:ptr IXAudio27SourceVoice): HRESULT {.stdcall.}
        Discontinuity*: proc (This:ptr IXAudio27SourceVoice): HRESULT {.stdcall.}
        ExitLoop*: proc (This:ptr IXAudio27SourceVoice, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetState*: proc (This:ptr IXAudio27SourceVoice, pVoiceState:ptr XAUDIO2_VOICE_STATE) {.stdcall.}
        SetFrequencyRatio*: proc (This:ptr IXAudio27SourceVoice, Ratio:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFrequencyRatio*: proc (This:ptr IXAudio27SourceVoice, pRatio:ptr float) {.stdcall.}
        SetSourceSampleRate*: proc (This:ptr IXAudio27SourceVoice, NewSourceSampleRate:UINT32): HRESULT {.stdcall.}
    IXAudio27SourceVoice* = object
        lpVtbl*: ptr IXAudio27SourceVoiceVtbl
    IXAudio2SourceVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio2SourceVoice, pVoiceDetails:ptr XAUDIO2_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio2SourceVoice, pSendList:ptr XAUDIO2_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio2SourceVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio2SourceVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio2SourceVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio2SourceVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio2SourceVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio2SourceVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio2SourceVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio2SourceVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetOutputFilterParameters*: proc (This:ptr IXAudio2SourceVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputFilterParameters*: proc (This:ptr IXAudio2SourceVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio2SourceVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio2SourceVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio2SourceVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio2SourceVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio2SourceVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio2SourceVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio2SourceVoice) {.stdcall.}
        Start*: proc (This:ptr IXAudio2SourceVoice, Flags:UINT32=0, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        Stop*: proc (This:ptr IXAudio2SourceVoice, Flags:UINT32=0, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        SubmitSourceBuffer*: proc (This:ptr IXAudio2SourceVoice, pBuffer:ptr XAUDIO2_BUFFER, pBufferWMA:ptr XAUDIO2_BUFFER_WMA=nil): HRESULT {.stdcall.}
        FlushSourceBuffers*: proc (This:ptr IXAudio2SourceVoice): HRESULT {.stdcall.}
        Discontinuity*: proc (This:ptr IXAudio2SourceVoice): HRESULT {.stdcall.}
        ExitLoop*: proc (This:ptr IXAudio2SourceVoice, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetState*: proc (This:ptr IXAudio2SourceVoice, pVoiceState:ptr XAUDIO2_VOICE_STATE, Flags:UINT32) {.stdcall.}
        SetFrequencyRatio*: proc (This:ptr IXAudio2SourceVoice, Ratio:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFrequencyRatio*: proc (This:ptr IXAudio2SourceVoice, pRatio:ptr float) {.stdcall.}
        SetSourceSampleRate*: proc (This:ptr IXAudio2SourceVoice, NewSourceSampleRate:UINT32): HRESULT {.stdcall.}
    IXAudio2SourceVoice* = object
        lpVtbl*: ptr IXAudio2SourceVoiceVtbl
    IXAudio20SubmixVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio20SubmixVoice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio20SubmixVoice, pSendList:ptr XAUDIO23_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio20SubmixVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio20SubmixVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio20SubmixVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio20SubmixVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio20SubmixVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio20SubmixVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio20SubmixVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio20SubmixVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio20SubmixVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio20SubmixVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio20SubmixVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio20SubmixVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio20SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio20SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float): HRESULT {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio20SubmixVoice) {.stdcall.}
    IXAudio20SubmixVoice* = object
        lpVtbl*: ptr IXAudio20SubmixVoiceVtbl
    IXAudio23SubmixVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio23SubmixVoice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio23SubmixVoice, pSendList:ptr XAUDIO23_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio23SubmixVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio23SubmixVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio23SubmixVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio23SubmixVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio23SubmixVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio23SubmixVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio23SubmixVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio23SubmixVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio23SubmixVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio23SubmixVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio23SubmixVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio23SubmixVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio23SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio23SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio23SubmixVoice) {.stdcall.}
    IXAudio23SubmixVoice* = object
        lpVtbl*: ptr IXAudio23SubmixVoiceVtbl
    IXAudio27SubmixVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio27SubmixVoice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio27SubmixVoice, pSendList:ptr XAUDIO2_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio27SubmixVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio27SubmixVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio27SubmixVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio27SubmixVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio27SubmixVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio27SubmixVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio27SubmixVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio27SubmixVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetOutputFilterParameters*: proc (This:ptr IXAudio27SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputFilterParameters*: proc (This:ptr IXAudio27SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio27SubmixVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio27SubmixVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio27SubmixVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio27SubmixVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio27SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio27SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio27SubmixVoice) {.stdcall.}
    IXAudio27SubmixVoice* = object
        lpVtbl*: ptr IXAudio27SubmixVoiceVtbl
    IXAudio2SubmixVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio2SubmixVoice, pVoiceDetails:ptr XAUDIO2_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio2SubmixVoice, pSendList:ptr XAUDIO2_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio2SubmixVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio2SubmixVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio2SubmixVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio2SubmixVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio2SubmixVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio2SubmixVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio2SubmixVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio2SubmixVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetOutputFilterParameters*: proc (This:ptr IXAudio2SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputFilterParameters*: proc (This:ptr IXAudio2SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio2SubmixVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio2SubmixVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio2SubmixVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio2SubmixVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio2SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio2SubmixVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio2SubmixVoice) {.stdcall.}
    IXAudio2SubmixVoice* = object
        lpVtbl*: ptr IXAudio2SubmixVoiceVtbl
    IXAudio20MasteringVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio20MasteringVoice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio20MasteringVoice, pSendList:ptr XAUDIO23_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio20MasteringVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio20MasteringVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio20MasteringVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio20MasteringVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio20MasteringVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio20MasteringVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio20MasteringVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio20MasteringVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio20MasteringVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio20MasteringVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio20MasteringVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio20MasteringVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio20MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio20MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float): HRESULT {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio20MasteringVoice) {.stdcall.}
    IXAudio20MasteringVoice* = object
        lpVtbl*: ptr IXAudio20MasteringVoiceVtbl
    IXAudio23MasteringVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio23MasteringVoice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio23MasteringVoice, pSendList:ptr XAUDIO23_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio23MasteringVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio23MasteringVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio23MasteringVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio23MasteringVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio23MasteringVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio23MasteringVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio23MasteringVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio23MasteringVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio23MasteringVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio23MasteringVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio23MasteringVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio23MasteringVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio23MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio23MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio23MasteringVoice) {.stdcall.}
    IXAudio23MasteringVoice* = object
        lpVtbl*: ptr IXAudio23MasteringVoiceVtbl
    IXAudio27MasteringVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio27MasteringVoice, pVoiceDetails:ptr XAUDIO27_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio27MasteringVoice, pSendList:ptr XAUDIO2_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio27MasteringVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio27MasteringVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio27MasteringVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio27MasteringVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio27MasteringVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio27MasteringVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio27MasteringVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio27MasteringVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetOutputFilterParameters*: proc (This:ptr IXAudio27MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputFilterParameters*: proc (This:ptr IXAudio27MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio27MasteringVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio27MasteringVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio27MasteringVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio27MasteringVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio27MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio27MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio27MasteringVoice) {.stdcall.}
    IXAudio27MasteringVoice* = object
        lpVtbl*: ptr IXAudio27MasteringVoiceVtbl
    IXAudio2MasteringVoiceVtbl* = object
        GetVoiceDetails*: proc (This:ptr IXAudio2MasteringVoice, pVoiceDetails:ptr XAUDIO2_VOICE_DETAILS) {.stdcall.}
        SetOutputVoices*: proc (This:ptr IXAudio2MasteringVoice, pSendList:ptr XAUDIO2_VOICE_SENDS): HRESULT {.stdcall.}
        SetEffectChain*: proc (This:ptr IXAudio2MasteringVoice, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        EnableEffect*: proc (This:ptr IXAudio2MasteringVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        DisableEffect*: proc (This:ptr IXAudio2MasteringVoice, EffectIndex:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectState*: proc (This:ptr IXAudio2MasteringVoice, EffectIndex:UINT32, pEnabled:ptr BOOL) {.stdcall.}
        SetEffectParameters*: proc (This:ptr IXAudio2MasteringVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetEffectParameters*: proc (This:ptr IXAudio2MasteringVoice, EffectIndex:UINT32, pParameters:pointer, ParametersByteSize:UINT32): HRESULT {.stdcall.}
        SetFilterParameters*: proc (This:ptr IXAudio2MasteringVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetFilterParameters*: proc (This:ptr IXAudio2MasteringVoice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetOutputFilterParameters*: proc (This:ptr IXAudio2MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputFilterParameters*: proc (This:ptr IXAudio2MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, pParameters:ptr XAUDIO2_FILTER_PARAMETERS) {.stdcall.}
        SetVolume*: proc (This:ptr IXAudio2MasteringVoice, Volume:cfloat, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetVolume*: proc (This:ptr IXAudio2MasteringVoice, pVolume:ptr float) {.stdcall.}
        SetChannelVolumes*: proc (This:ptr IXAudio2MasteringVoice, Channels:UINT32, pVolumes:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetChannelVolumes*: proc (This:ptr IXAudio2MasteringVoice, Channels:UINT32, pVolumes:ptr float) {.stdcall.}
        SetOutputMatrix*: proc (This:ptr IXAudio2MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetOutputMatrix*: proc (This:ptr IXAudio2MasteringVoice, pDestinationVoice:ptr IXAudio2Voice, SourceChannels:UINT32, DestinationChannels:UINT32, pLevelMatrix:ptr float) {.stdcall.}
        DestroyVoice*: proc (This:ptr IXAudio2MasteringVoice) {.stdcall.}
        GetChannelMask*: proc (This:ptr IXAudio2MasteringVoice, pChannelMask:ptr DWORD) {.stdcall.}
    IXAudio2MasteringVoice* = object
        lpVtbl*: ptr IXAudio2MasteringVoiceVtbl
    IXAudio20VoiceCallbackVtbl* = object
        OnVoiceProcessingPassStart*: proc (This:ptr IXAudio20VoiceCallback) {.stdcall.}
        OnVoiceProcessingPassEnd*: proc (This:ptr IXAudio20VoiceCallback) {.stdcall.}
        OnStreamEnd*: proc (This:ptr IXAudio20VoiceCallback) {.stdcall.}
        OnBufferStart*: proc (This:ptr IXAudio20VoiceCallback, pBufferContext:pointer) {.stdcall.}
        OnBufferEnd*: proc (This:ptr IXAudio20VoiceCallback, pBufferContext:pointer) {.stdcall.}
        OnLoopEnd*: proc (This:ptr IXAudio20VoiceCallback, pBufferContext:pointer) {.stdcall.}
        OnVoiceError*: proc (This:ptr IXAudio20VoiceCallback, pBuffercontext:pointer, Error:HRESULT) {.stdcall.}
    IXAudio20VoiceCallback* = object
        lpVtbl*: ptr IXAudio20VoiceCallbackVtbl
    IXAudio2VoiceCallbackVtbl* = object
        OnVoiceProcessingPassStart*: proc (This:ptr IXAudio2VoiceCallback, BytesRequired:UINT32) {.stdcall.}
        OnVoiceProcessingPassEnd*: proc (This:ptr IXAudio2VoiceCallback) {.stdcall.}
        OnStreamEnd*: proc (This:ptr IXAudio2VoiceCallback) {.stdcall.}
        OnBufferStart*: proc (This:ptr IXAudio2VoiceCallback, pBufferContext:pointer) {.stdcall.}
        OnBufferEnd*: proc (This:ptr IXAudio2VoiceCallback, pBufferContext:pointer) {.stdcall.}
        OnLoopEnd*: proc (This:ptr IXAudio2VoiceCallback, pBufferContext:pointer) {.stdcall.}
        OnVoiceError*: proc (This:ptr IXAudio2VoiceCallback, pBuffercontext:pointer, Error:HRESULT) {.stdcall.}
    IXAudio2VoiceCallback* = object
        lpVtbl*: ptr IXAudio2VoiceCallbackVtbl
    IXAudio20Vtbl* = object
        QueryInterface*: proc (This:ptr IXAudio20, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IXAudio20): ULONG {.stdcall.}
        Release*: proc (This:ptr IXAudio20): ULONG {.stdcall.}
        GetDeviceCount*: proc (This:ptr IXAudio20, pCount:ptr UINT32): HRESULT {.stdcall.}
        GetDeviceDetails*: proc (This:ptr IXAudio20, Index:UINT32, pDeviceDetails:ptr XAUDIO2_DEVICE_DETAILS): HRESULT {.stdcall.}
        Initialize*: proc (This:ptr IXAudio20, Flags:UINT32, XAudio2Processor:XAUDIO2_PROCESSOR): HRESULT {.stdcall.}
        RegisterForCallbacks*: proc (This:ptr IXAudio20, pCallback:ptr IXAudio2EngineCallback): HRESULT {.stdcall.}
        UnregisterForCallbacks*: proc (This:ptr IXAudio20, pCallback:ptr IXAudio2EngineCallback) {.stdcall.}
        CreateSourceVoice*: proc (This:ptr IXAudio20, ppSourceVoice:ptr ptr IXAudio2SourceVoice, pSourceFormat:ptr WAVEFORMATEX, Flags:UINT32=0, MaxFrequencyRatio:cfloat=XAUDIO2_DEFAULT_FREQ_RATIO, pCallback:ptr IXAudio2VoiceCallback=nil, pSendList:ptr XAUDIO23_VOICE_SENDS=nil, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        CreateSubmixVoice*: proc (This:ptr IXAudio20, ppSubmixVoice:ptr ptr IXAudio2SubmixVoice, InputChannels:UINT32, InputSampleRate:UINT32, Flags:UINT32=0, ProcessingStage:UINT32=0, pSendList:ptr XAUDIO23_VOICE_SENDS=nil, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        CreateMasteringVoice*: proc (This:ptr IXAudio20, ppMasteringVoice:ptr ptr IXAudio2MasteringVoice, InputChannels:UINT32=XAUDIO2_DEFAULT_CHANNELS, InputSampleRate:UINT32=XAUDIO2_DEFAULT_SAMPLERATE, Flags:UINT32=0, DeviceIndex:UINT32=0, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        StartEngine*: proc (This:ptr IXAudio20): HRESULT {.stdcall.}
        StopEngine*: proc (This:ptr IXAudio20) {.stdcall.}
        CommitChanges*: proc (This:ptr IXAudio20, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetPerformanceData*: proc (This:ptr IXAudio20, pPerfData:ptr XAUDIO20_PERFORMANCE_DATA) {.stdcall.}
        SetDebugConfiguration*: proc (This:ptr IXAudio20, pDebugConfiguration:ptr XAUDIO2_DEBUG_CONFIGURATION, pReserved:pointer=nil) {.stdcall.}
    IXAudio20* = object
        lpVtbl*: ptr IXAudio20Vtbl
    IXAudio22Vtbl* = object
        QueryInterface*: proc (This:ptr IXAudio22, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IXAudio22): ULONG {.stdcall.}
        Release*: proc (This:ptr IXAudio22): ULONG {.stdcall.}
        GetDeviceCount*: proc (This:ptr IXAudio22, pCount:ptr UINT32): HRESULT {.stdcall.}
        GetDeviceDetails*: proc (This:ptr IXAudio22, Index:UINT32, pDeviceDetails:ptr XAUDIO2_DEVICE_DETAILS): HRESULT {.stdcall.}
        Initialize*: proc (This:ptr IXAudio22, Flags:UINT32, XAudio2Processor:XAUDIO2_PROCESSOR): HRESULT {.stdcall.}
        RegisterForCallbacks*: proc (This:ptr IXAudio22, pCallback:ptr IXAudio2EngineCallback): HRESULT {.stdcall.}
        UnregisterForCallbacks*: proc (This:ptr IXAudio22, pCallback:ptr IXAudio2EngineCallback) {.stdcall.}
        CreateSourceVoice*: proc (This:ptr IXAudio22, ppSourceVoice:ptr ptr IXAudio2SourceVoice, pSourceFormat:ptr WAVEFORMATEX, Flags:UINT32=0, MaxFrequencyRatio:cfloat=XAUDIO2_DEFAULT_FREQ_RATIO, pCallback:ptr IXAudio2VoiceCallback=nil, pSendList:ptr XAUDIO23_VOICE_SENDS=nil, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        CreateSubmixVoice*: proc (This:ptr IXAudio22, ppSubmixVoice:ptr ptr IXAudio2SubmixVoice, InputChannels:UINT32, InputSampleRate:UINT32, Flags:UINT32=0, ProcessingStage:UINT32=0, pSendList:ptr XAUDIO23_VOICE_SENDS=nil, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        CreateMasteringVoice*: proc (This:ptr IXAudio22, ppMasteringVoice:ptr ptr IXAudio2MasteringVoice, InputChannels:UINT32=XAUDIO2_DEFAULT_CHANNELS, InputSampleRate:UINT32=XAUDIO2_DEFAULT_SAMPLERATE, Flags:UINT32=0, DeviceIndex:UINT32=0, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        StartEngine*: proc (This:ptr IXAudio22): HRESULT {.stdcall.}
        StopEngine*: proc (This:ptr IXAudio22) {.stdcall.}
        CommitChanges*: proc (This:ptr IXAudio22, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetPerformanceData*: proc (This:ptr IXAudio22, pPerfData:ptr XAUDIO22_PERFORMANCE_DATA) {.stdcall.}
        SetDebugConfiguration*: proc (This:ptr IXAudio22, pDebugConfiguration:ptr XAUDIO2_DEBUG_CONFIGURATION, pReserved:pointer=nil) {.stdcall.}
    IXAudio22* = object
        lpVtbl*: ptr IXAudio22Vtbl
    IXAudio23Vtbl* = object
        QueryInterface*: proc (This:ptr IXAudio23, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IXAudio23): ULONG {.stdcall.}
        Release*: proc (This:ptr IXAudio23): ULONG {.stdcall.}
        GetDeviceCount*: proc (This:ptr IXAudio23, pCount:ptr UINT32): HRESULT {.stdcall.}
        GetDeviceDetails*: proc (This:ptr IXAudio23, Index:UINT32, pDeviceDetails:ptr XAUDIO2_DEVICE_DETAILS): HRESULT {.stdcall.}
        Initialize*: proc (This:ptr IXAudio23, Flags:UINT32, XAudio2Processor:XAUDIO2_PROCESSOR): HRESULT {.stdcall.}
        RegisterForCallbacks*: proc (This:ptr IXAudio23, pCallback:ptr IXAudio2EngineCallback): HRESULT {.stdcall.}
        UnregisterForCallbacks*: proc (This:ptr IXAudio23, pCallback:ptr IXAudio2EngineCallback) {.stdcall.}
        CreateSourceVoice*: proc (This:ptr IXAudio23, ppSourceVoice:ptr ptr IXAudio2SourceVoice, pSourceFormat:ptr WAVEFORMATEX, Flags:UINT32=0, MaxFrequencyRatio:cfloat=XAUDIO2_DEFAULT_FREQ_RATIO, pCallback:ptr IXAudio2VoiceCallback=nil, pSendList:ptr XAUDIO23_VOICE_SENDS=nil, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        CreateSubmixVoice*: proc (This:ptr IXAudio23, ppSubmixVoice:ptr ptr IXAudio2SubmixVoice, InputChannels:UINT32, InputSampleRate:UINT32, Flags:UINT32=0, ProcessingStage:UINT32=0, pSendList:ptr XAUDIO23_VOICE_SENDS=nil, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        CreateMasteringVoice*: proc (This:ptr IXAudio23, ppMasteringVoice:ptr ptr IXAudio2MasteringVoice, InputChannels:UINT32=XAUDIO2_DEFAULT_CHANNELS, InputSampleRate:UINT32=XAUDIO2_DEFAULT_SAMPLERATE, Flags:UINT32=0, DeviceIndex:UINT32=0, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        StartEngine*: proc (This:ptr IXAudio23): HRESULT {.stdcall.}
        StopEngine*: proc (This:ptr IXAudio23) {.stdcall.}
        CommitChanges*: proc (This:ptr IXAudio23, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetPerformanceData*: proc (This:ptr IXAudio23, pPerfData:ptr XAUDIO2_PERFORMANCE_DATA) {.stdcall.}
        SetDebugConfiguration*: proc (This:ptr IXAudio23, pDebugConfiguration:ptr XAUDIO2_DEBUG_CONFIGURATION, pReserved:pointer=nil) {.stdcall.}
    IXAudio23* = object
        lpVtbl*: ptr IXAudio23Vtbl
    IXAudio27Vtbl* = object
        QueryInterface*: proc (This:ptr IXAudio27, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IXAudio27): ULONG {.stdcall.}
        Release*: proc (This:ptr IXAudio27): ULONG {.stdcall.}
        GetDeviceCount*: proc (This:ptr IXAudio27, pCount:ptr UINT32): HRESULT {.stdcall.}
        GetDeviceDetails*: proc (This:ptr IXAudio27, Index:UINT32, pDeviceDetails:ptr XAUDIO2_DEVICE_DETAILS): HRESULT {.stdcall.}
        Initialize*: proc (This:ptr IXAudio27, Flags:UINT32, XAudio2Processor:XAUDIO2_PROCESSOR): HRESULT {.stdcall.}
        RegisterForCallbacks*: proc (This:ptr IXAudio27, pCallback:ptr IXAudio2EngineCallback): HRESULT {.stdcall.}
        UnregisterForCallbacks*: proc (This:ptr IXAudio27, pCallback:ptr IXAudio2EngineCallback) {.stdcall.}
        CreateSourceVoice*: proc (This:ptr IXAudio27, ppSourceVoice:ptr ptr IXAudio2SourceVoice, pSourceFormat:ptr WAVEFORMATEX, Flags:UINT32, MaxFrequencyRatio:cfloat, pCallback:ptr IXAudio2VoiceCallback, pSendList:ptr XAUDIO2_VOICE_SENDS, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        CreateSubmixVoice*: proc (This:ptr IXAudio27, ppSubmixVoice:ptr ptr IXAudio2SubmixVoice, InputChannels:UINT32, InputSampleRate:UINT32, Flags:UINT32, ProcessingStage:UINT32, pSendList:ptr XAUDIO2_VOICE_SENDS, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        CreateMasteringVoice*: proc (This:ptr IXAudio27, ppMasteringVoice:ptr ptr IXAudio2MasteringVoice, InputChannels:UINT32=XAUDIO2_DEFAULT_CHANNELS, InputSampleRate:UINT32=XAUDIO2_DEFAULT_SAMPLERATE, Flags:UINT32=0, DeviceIndex:UINT32=0, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        StartEngine*: proc (This:ptr IXAudio27): HRESULT {.stdcall.}
        StopEngine*: proc (This:ptr IXAudio27) {.stdcall.}
        CommitChanges*: proc (This:ptr IXAudio27, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetPerformanceData*: proc (This:ptr IXAudio27, pPerfData:ptr XAUDIO2_PERFORMANCE_DATA) {.stdcall.}
        SetDebugConfiguration*: proc (This:ptr IXAudio27, pDebugConfiguration:ptr XAUDIO2_DEBUG_CONFIGURATION, pReserved:pointer=nil) {.stdcall.}
    IXAudio27* = object
        lpVtbl*: ptr IXAudio27Vtbl
    IXAudio2Vtbl* = object
        QueryInterface*: proc (This:ptr IXAudio2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IXAudio2): ULONG {.stdcall.}
        Release*: proc (This:ptr IXAudio2): ULONG {.stdcall.}
        RegisterForCallbacks*: proc (This:ptr IXAudio2, pCallback:ptr IXAudio2EngineCallback): HRESULT {.stdcall.}
        UnregisterForCallbacks*: proc (This:ptr IXAudio2, pCallback:ptr IXAudio2EngineCallback) {.stdcall.}
        CreateSourceVoice*: proc (This:ptr IXAudio2, ppSourceVoice:ptr ptr IXAudio2SourceVoice, pSourceFormat:ptr WAVEFORMATEX, Flags:UINT32=0, MaxFrequencyRatio:cfloat=XAUDIO2_DEFAULT_FREQ_RATIO, pCallback:ptr IXAudio2VoiceCallback=nil, pSendList:ptr XAUDIO2_VOICE_SENDS=nil, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil): HRESULT {.stdcall.}
        CreateSubmixVoice*: proc (This:ptr IXAudio2, ppSubmixVoice:ptr ptr IXAudio2SubmixVoice, InputChannels:UINT32, InputSampleRate:UINT32, Flags:UINT32, ProcessingStage:UINT32, pSendList:ptr XAUDIO2_VOICE_SENDS, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN): HRESULT {.stdcall.}
        CreateMasteringVoice*: proc (This:ptr IXAudio2, ppMasteringVoice:ptr ptr IXAudio2MasteringVoice, InputChannels:UINT32=XAUDIO2_DEFAULT_CHANNELS, InputSampleRate:UINT32=XAUDIO2_DEFAULT_SAMPLERATE, Flags:UINT32=0, DeviceIndex:ptr WCHAR=nil, pEffectChain:ptr XAUDIO2_EFFECT_CHAIN=nil, StreamCategory=UINT32 AudioCategory_GameEffects): HRESULT {.stdcall.}
        StartEngine*: proc (This:ptr IXAudio2): HRESULT {.stdcall.}
        StopEngine*: proc (This:ptr IXAudio2) {.stdcall.}
        CommitChanges*: proc (This:ptr IXAudio2, OperationSet:UINT32=XAUDIO2_COMMIT_NOW): HRESULT {.stdcall.}
        GetPerformanceData*: proc (This:ptr IXAudio2, pPerfData:ptr XAUDIO2_PERFORMANCE_DATA) {.stdcall.}
        SetDebugConfiguration*: proc (This:ptr IXAudio2, pDebugConfiguration:ptr XAUDIO2_DEBUG_CONFIGURATION, pReserved:pointer=nil) {.stdcall.}
    IXAudio2* = object
        lpVtbl*: ptr IXAudio2Vtbl



## * IXAudio20Voice methods **

template IXAudio20Voice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio20Voice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio20Voice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio20Voice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio20Voice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio20Voice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio20Voice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters, ParametersByteSize, OperationSet)

template IXAudio20Voice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters, ParametersByteSize)

template IXAudio20Voice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio20Voice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio20Voice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio20Voice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio20Voice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio20Voice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio20Voice_SetOutputMatrix*(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio20Voice_GetOutputMatrix*(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix)

template IXAudio20Voice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)




## * IXAudio20Voice methods **

template IXAudio20SourceVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio20SourceVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio20SourceVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio20SourceVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio20SourceVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio20SourceVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio20SourceVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters, ParametersByteSize, OperationSet)

template IXAudio20SourceVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters, ParametersByteSize)

template IXAudio20SourceVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio20SourceVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio20SourceVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio20SourceVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio20SourceVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio20SourceVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio20SourceVoice_SetOutputMatrix*(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio20SourceVoice_GetOutputMatrix*(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix)

template IXAudio20SourceVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio20SourceVoice methods **

template IXAudio20SourceVoice_Start*(This, Flags, OperationSet: untyped): untyped =
  (This).lpVtbl.Start(This, Flags, OperationSet)

template IXAudio20SourceVoice_Stop*(This, Flags, OperationSet: untyped): untyped =
  (This).lpVtbl.Stop(This, Flags, OperationSet)

template IXAudio20SourceVoice_SubmitSourceBuffer*(This, pBuffer, pBufferWMA: untyped): untyped =
  (This).lpVtbl.SubmitSourceBuffer(This, pBuffer, pBufferWMA)

template IXAudio20SourceVoice_FlushSourceBuffers*(This: untyped): untyped =
  (This).lpVtbl.FlushSourceBuffers(This)

template IXAudio20SourceVoice_Discontinuity*(This: untyped): untyped =
  (This).lpVtbl.Discontinuity(This)

template IXAudio20SourceVoice_ExitLoop*(This, OperationSet: untyped): untyped =
  (This).lpVtbl.ExitLoop(This, OperationSet)

template IXAudio20SourceVoice_GetState*(This, pVoiceState: untyped): untyped =
  (This).lpVtbl.GetState(This, pVoiceState)

template IXAudio20SourceVoice_SetFrequencyRatio*(This, Ratio, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFrequencyRatio(This, Ratio, OperationSet)

template IXAudio20SourceVoice_GetFrequencyRatio*(This, pRatio: untyped): untyped =
  (This).lpVtbl.GetFrequencyRatio(This, pRatio)

## * IXAudio23Voice methods **

template IXAudio23SourceVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio23SourceVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio23SourceVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio23SourceVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio23SourceVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio23SourceVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio23SourceVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters, ParametersByteSize, OperationSet)

template IXAudio23SourceVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters, ParametersByteSize)

template IXAudio23SourceVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio23SourceVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio23SourceVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio23SourceVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio23SourceVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio23SourceVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio23SourceVoice_SetOutputMatrix*(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio23SourceVoice_GetOutputMatrix*(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix)

template IXAudio23SourceVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio23SourceVoice methods **

template IXAudio23SourceVoice_Start*(This, Flags, OperationSet: untyped): untyped =
  (This).lpVtbl.Start(This, Flags, OperationSet)

template IXAudio23SourceVoice_Stop*(This, Flags, OperationSet: untyped): untyped =
  (This).lpVtbl.Stop(This, Flags, OperationSet)

template IXAudio23SourceVoice_SubmitSourceBuffer*(This, pBuffer, pBufferWMA: untyped): untyped =
  (This).lpVtbl.SubmitSourceBuffer(This, pBuffer, pBufferWMA)

template IXAudio23SourceVoice_FlushSourceBuffers*(This: untyped): untyped =
  (This).lpVtbl.FlushSourceBuffers(This)

template IXAudio23SourceVoice_Discontinuity*(This: untyped): untyped =
  (This).lpVtbl.Discontinuity(This)

template IXAudio23SourceVoice_ExitLoop*(This, OperationSet: untyped): untyped =
  (This).lpVtbl.ExitLoop(This, OperationSet)

template IXAudio23SourceVoice_GetState*(This, pVoiceState: untyped): untyped =
  (This).lpVtbl.GetState(This, pVoiceState)

template IXAudio23SourceVoice_SetFrequencyRatio*(This, Ratio, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFrequencyRatio(This, Ratio, OperationSet)

template IXAudio23SourceVoice_GetFrequencyRatio*(This, pRatio: untyped): untyped =
  (This).lpVtbl.GetFrequencyRatio(This, pRatio)

## * IXAudio27Voice methods **

template IXAudio27SourceVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio27SourceVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio27SourceVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio27SourceVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio27SourceVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio27SourceVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio27SourceVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio27SourceVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters, ParametersByteSize)

template IXAudio27SourceVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio27SourceVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio27SourceVoice_SetOutputFilterParameters*(This, pDestinationVoice, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputFilterParameters(This, pDestinationVoice, pParameters, OperationSet)

template IXAudio27SourceVoice_GetOutputFilterParameters*(This, pDestinationVoice, pParameters: untyped): untyped =
  (This).lpVtbl.GetOutputFilterParameters(This, pDestinationVoice, pParameters)

template IXAudio27SourceVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio27SourceVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio27SourceVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio27SourceVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio27SourceVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio27SourceVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio27SourceVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio27SourceVoice methods **

template IXAudio27SourceVoice_Start*(This, Flags, OperationSet: untyped): untyped =
  (This).lpVtbl.Start(This, Flags, OperationSet)

template IXAudio27SourceVoice_Stop*(This, Flags, OperationSet: untyped): untyped =
  (This).lpVtbl.Stop(This, Flags, OperationSet)

template IXAudio27SourceVoice_SubmitSourceBuffer*(This, pBuffer, pBufferWMA: untyped): untyped =
  (This).lpVtbl.SubmitSourceBuffer(This, pBuffer, pBufferWMA)

template IXAudio27SourceVoice_FlushSourceBuffers*(This: untyped): untyped =
  (This).lpVtbl.FlushSourceBuffers(This)

template IXAudio27SourceVoice_Discontinuity*(This: untyped): untyped =
  (This).lpVtbl.Discontinuity(This)

template IXAudio27SourceVoice_ExitLoop*(This, OperationSet: untyped): untyped =
  (This).lpVtbl.ExitLoop(This, OperationSet)

template IXAudio27SourceVoice_GetState*(This, pVoiceState: untyped): untyped =
  (This).lpVtbl.GetState(This, pVoiceState)

template IXAudio27SourceVoice_SetFrequencyRatio*(This, Ratio, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFrequencyRatio(This, Ratio, OperationSet)

template IXAudio27SourceVoice_GetFrequencyRatio*(This, pRatio: untyped): untyped =
  (This).lpVtbl.GetFrequencyRatio(This, pRatio)

template IXAudio27SourceVoice_SetSourceSampleRate*(This, NewSourceSampleRate: untyped): untyped =
  (This).lpVtbl.SetSourceSampleRate(This, NewSourceSampleRate)

## * IXAudio2Voice methods **

template IXAudio2SourceVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio2SourceVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio2SourceVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio2SourceVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio2SourceVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio2SourceVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio2SourceVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio2SourceVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize)

template IXAudio2SourceVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio2SourceVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio2SourceVoice_SetOutputFilterParameters*(This, pDestinationVoice, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputFilterParameters(This, pDestinationVoice, pParameters,
      OperationSet)

template IXAudio2SourceVoice_GetOutputFilterParameters*(This, pDestinationVoice, pParameters: untyped): untyped =
  (This).lpVtbl.GetOutputFilterParameters(This, pDestinationVoice, pParameters)

template IXAudio2SourceVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio2SourceVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio2SourceVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio2SourceVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio2SourceVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio2SourceVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio2SourceVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio2SourceVoice methods **

template IXAudio2SourceVoice_Start*(This, Flags, OperationSet: untyped): untyped =
  (This).lpVtbl.Start(This, Flags, OperationSet)

template IXAudio2SourceVoice_Stop*(This, Flags, OperationSet: untyped): untyped =
  (This).lpVtbl.Stop(This, Flags, OperationSet)

template IXAudio2SourceVoice_SubmitSourceBuffer*(This, pBuffer, pBufferWMA: untyped): untyped =
  (This).lpVtbl.SubmitSourceBuffer(This, pBuffer, pBufferWMA)

template IXAudio2SourceVoice_FlushSourceBuffers*(This: untyped): untyped =
  (This).lpVtbl.FlushSourceBuffers(This)

template IXAudio2SourceVoice_Discontinuity*(This: untyped): untyped =
  (This).lpVtbl.Discontinuity(This)

template IXAudio2SourceVoice_ExitLoop*(This, OperationSet: untyped): untyped =
  (This).lpVtbl.ExitLoop(This, OperationSet)

template IXAudio2SourceVoice_GetState*(This, pVoiceState, Flags: untyped): untyped =
  (This).lpVtbl.GetState(This, pVoiceState, Flags)

template IXAudio2SourceVoice_SetFrequencyRatio*(This, Ratio, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFrequencyRatio(This, Ratio, OperationSet)

template IXAudio2SourceVoice_GetFrequencyRatio*(This, pRatio: untyped): untyped =
  (This).lpVtbl.GetFrequencyRatio(This, pRatio)

template IXAudio2SourceVoice_SetSourceSampleRate*(This, NewSourceSampleRate: untyped): untyped =
  (This).lpVtbl.SetSourceSampleRate(This, NewSourceSampleRate)

## * IXAudio20Voice methods **

template IXAudio20SubmixVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio20SubmixVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio20SubmixVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio20SubmixVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio20SubmixVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio20SubmixVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio20SubmixVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio20SubmixVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize)

template IXAudio20SubmixVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio20SubmixVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio20SubmixVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio20SubmixVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio20SubmixVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio20SubmixVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio20SubmixVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio20SubmixVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio20SubmixVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio23Voice methods **

template IXAudio23SubmixVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio23SubmixVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio23SubmixVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio23SubmixVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio23SubmixVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio23SubmixVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio23SubmixVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio23SubmixVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize)

template IXAudio23SubmixVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio23SubmixVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio23SubmixVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio23SubmixVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio23SubmixVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio23SubmixVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio23SubmixVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio23SubmixVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio23SubmixVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio27Voice methods **

template IXAudio27SubmixVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio27SubmixVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio27SubmixVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio27SubmixVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio27SubmixVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio27SubmixVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio27SubmixVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio27SubmixVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize)

template IXAudio27SubmixVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio27SubmixVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio27SubmixVoice_SetOutputFilterParameters*(This, pDestinationVoice, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputFilterParameters(This, pDestinationVoice, pParameters,
      OperationSet)

template IXAudio27SubmixVoice_GetOutputFilterParameters*(This, pDestinationVoice, pParameters: untyped): untyped =
  (This).lpVtbl.GetOutputFilterParameters(This, pDestinationVoice, pParameters)

template IXAudio27SubmixVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio27SubmixVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio27SubmixVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio27SubmixVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio27SubmixVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio27SubmixVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio27SubmixVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio2Voice methods **

template IXAudio2SubmixVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio2SubmixVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio2SubmixVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio2SubmixVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio2SubmixVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio2SubmixVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio2SubmixVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio2SubmixVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize)

template IXAudio2SubmixVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio2SubmixVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio2SubmixVoice_SetOutputFilterParameters*(This, pDestinationVoice, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputFilterParameters(This, pDestinationVoice, pParameters,
      OperationSet)

template IXAudio2SubmixVoice_GetOutputFilterParameters*(This, pDestinationVoice, pParameters: untyped): untyped =
  (This).lpVtbl.GetOutputFilterParameters(This, pDestinationVoice, pParameters)

template IXAudio2SubmixVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio2SubmixVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio2SubmixVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio2SubmixVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio2SubmixVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio2SubmixVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio2SubmixVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio20Voice methods **

template IXAudio20MasteringVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio20MasteringVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio20MasteringVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio20MasteringVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio20MasteringVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio20MasteringVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio20MasteringVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio20MasteringVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize)

template IXAudio20MasteringVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio20MasteringVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio20MasteringVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio20MasteringVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio20MasteringVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio20MasteringVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio20MasteringVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio20MasteringVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio20MasteringVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio23Voice methods **

template IXAudio23MasteringVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio23MasteringVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio23MasteringVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio23MasteringVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio23MasteringVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio23MasteringVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio23MasteringVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio23MasteringVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize)

template IXAudio23MasteringVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio23MasteringVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio23MasteringVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio23MasteringVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio23MasteringVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio23MasteringVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio23MasteringVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio23MasteringVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio23MasteringVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio27Voice methods **

template IXAudio27MasteringVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio27MasteringVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio27MasteringVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio27MasteringVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio27MasteringVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio27MasteringVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio27MasteringVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio27MasteringVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize)

template IXAudio27MasteringVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio27MasteringVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio27MasteringVoice_SetOutputFilterParameters*(This, pDestinationVoice, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputFilterParameters(This, pDestinationVoice, pParameters,
      OperationSet)

template IXAudio27MasteringVoice_GetOutputFilterParameters*(This, pDestinationVoice, pParameters: untyped): untyped =
  (This).lpVtbl.GetOutputFilterParameters(This, pDestinationVoice, pParameters)

template IXAudio27MasteringVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio27MasteringVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio27MasteringVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio27MasteringVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio27MasteringVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio27MasteringVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio27MasteringVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio2Voice methods **

template IXAudio2MasteringVoice_GetVoiceDetails*(This, pVoiceDetails: untyped): untyped =
  (This).lpVtbl.GetVoiceDetails(This, pVoiceDetails)

template IXAudio2MasteringVoice_SetOutputVoices*(This, pSendList: untyped): untyped =
  (This).lpVtbl.SetOutputVoices(This, pSendList)

template IXAudio2MasteringVoice_SetEffectChain*(This, pEffectChain: untyped): untyped =
  (This).lpVtbl.SetEffectChain(This, pEffectChain)

template IXAudio2MasteringVoice_EnableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.EnableEffect(This, EffectIndex, OperationSet)

template IXAudio2MasteringVoice_DisableEffect*(This, EffectIndex, OperationSet: untyped): untyped =
  (This).lpVtbl.DisableEffect(This, EffectIndex, OperationSet)

template IXAudio2MasteringVoice_GetEffectState*(This, EffectIndex, pEnabled: untyped): untyped =
  (This).lpVtbl.GetEffectState(This, EffectIndex, pEnabled)

template IXAudio2MasteringVoice_SetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize, OperationSet: untyped): untyped =
  (This).lpVtbl.SetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize, OperationSet)

template IXAudio2MasteringVoice_GetEffectParameters*(This, EffectIndex, pParameters, ParametersByteSize: untyped): untyped =
  (This).lpVtbl.GetEffectParameters(This, EffectIndex, pParameters,
                                    ParametersByteSize)

template IXAudio2MasteringVoice_SetFilterParameters*(This, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetFilterParameters(This, pParameters, OperationSet)

template IXAudio2MasteringVoice_GetFilterParameters*(This, pParameters: untyped): untyped =
  (This).lpVtbl.GetFilterParameters(This, pParameters)

template IXAudio2MasteringVoice_SetOutputFilterParameters*(This, pDestinationVoice, pParameters, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputFilterParameters(This, pDestinationVoice, pParameters,
      OperationSet)

template IXAudio2MasteringVoice_GetOutputFilterParameters*(This, pDestinationVoice, pParameters: untyped): untyped =
  (This).lpVtbl.GetOutputFilterParameters(This, pDestinationVoice, pParameters)

template IXAudio2MasteringVoice_SetVolume*(This, Volume, OperationSet: untyped): untyped =
  (This).lpVtbl.SetVolume(This, Volume, OperationSet)

template IXAudio2MasteringVoice_GetVolume*(This, pVolume: untyped): untyped =
  (This).lpVtbl.GetVolume(This, pVolume)

template IXAudio2MasteringVoice_SetChannelVolumes*(This, Channels, pVolumes, OperationSet: untyped): untyped =
  (This).lpVtbl.SetChannelVolumes(This, Channels, pVolumes, OperationSet)

template IXAudio2MasteringVoice_GetChannelVolumes*(This, Channels, pVolumes: untyped): untyped =
  (This).lpVtbl.GetChannelVolumes(This, Channels, pVolumes)

template IXAudio2MasteringVoice_SetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix, OperationSet: untyped): untyped =
  (This).lpVtbl.SetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix, OperationSet)

template IXAudio2MasteringVoice_GetOutputMatrix*(This, pDestinationVoice,
    SourceChannels, DestinationChannels, pLevelMatrix: untyped): untyped =
  (This).lpVtbl.GetOutputMatrix(This, pDestinationVoice, SourceChannels,
                                DestinationChannels, pLevelMatrix)

template IXAudio2MasteringVoice_DestroyVoice*(This: untyped): untyped =
  (This).lpVtbl.DestroyVoice(This)

## * IXAudio2MasteringVoice methods **

template IXAudio2MasteringVoice_GetChannelMask*(This, pChannelMask: untyped): untyped =
  (This).lpVtbl.GetChannelMask(This, pChannelMask)

## * IXAudio20VoiceCallback methods **

template IXAudio20VoiceCallback_OnVoiceProcessingPassStart*(This: untyped): untyped =
  (This).lpVtbl.OnVoiceProcessingPassStart(This)

template IXAudio20VoiceCallback_OnVoiceProcessingPassEnd*(This: untyped): untyped =
  (This).lpVtbl.OnVoiceProcessingPassEnd(This)

template IXAudio20VoiceCallback_OnStreamEnd*(This: untyped): untyped =
  (This).lpVtbl.OnStreamEnd(This)

template IXAudio20VoiceCallback_OnBufferStart*(This, pBufferContext: untyped): untyped =
  (This).lpVtbl.OnBufferStart(This, pBufferContext)

template IXAudio20VoiceCallback_OnBufferEnd*(This, pBufferContext: untyped): untyped =
  (This).lpVtbl.OnBufferEnd(This, pBufferContext)

template IXAudio20VoiceCallback_OnLoopEnd*(This, pBufferContext: untyped): untyped =
  (This).lpVtbl.OnLoopEnd(This, pBufferContext)

template IXAudio20VoiceCallback_OnVoiceError*(This, pBuffercontext, Error: untyped): untyped =
  (This).lpVtbl.OnVoiceError(This, pBuffercontext, Error)

## * IXAudio2VoiceCallback methods **

template IXAudio2VoiceCallback_OnVoiceProcessingPassStart*(This, BytesRequired: untyped): untyped =
  (This).lpVtbl.OnVoiceProcessingPassStart(This, BytesRequired)

template IXAudio2VoiceCallback_OnVoiceProcessingPassEnd*(This: untyped): untyped =
  (This).lpVtbl.OnVoiceProcessingPassEnd(This)

template IXAudio2VoiceCallback_OnStreamEnd*(This: untyped): untyped =
  (This).lpVtbl.OnStreamEnd(This)

template IXAudio2VoiceCallback_OnBufferStart*(This, pBufferContext: untyped): untyped =
  (This).lpVtbl.OnBufferStart(This, pBufferContext)

template IXAudio2VoiceCallback_OnBufferEnd*(This, pBufferContext: untyped): untyped =
  (This).lpVtbl.OnBufferEnd(This, pBufferContext)

template IXAudio2VoiceCallback_OnLoopEnd*(This, pBufferContext: untyped): untyped =
  (This).lpVtbl.OnLoopEnd(This, pBufferContext)

template IXAudio2VoiceCallback_OnVoiceError*(This, pBuffercontext, Error: untyped): untyped =
  (This).lpVtbl.OnVoiceError(This, pBuffercontext, Error)



## * IUnknown methods **

template IXAudio20_QueryInterface*(This, riid, ppvObject: untyped): untyped =
  (This).lpVtbl.QueryInterface(This, riid, ppvObject)

template IXAudio20_AddRef*(This: untyped): untyped =
  (This).lpVtbl.AddRef(This)

template IXAudio20_Release*(This: untyped): untyped =
  (This).lpVtbl.Release(This)

## * IXAudio20 methods **

template IXAudio20_GetDeviceCount*(This, pCount: untyped): untyped =
  (This).lpVtbl.GetDeviceCount(This, pCount)

template IXAudio20_GetDeviceDetails*(This, Index, pDeviceDetails: untyped): untyped =
  (This).lpVtbl.GetDeviceDetails(This, Index, pDeviceDetails)

template IXAudio20_Initialize*(This, Flags, XAudio2Processor: untyped): untyped =
  (This).lpVtbl.Initialize(This, Flags, XAudio2Processor)

template IXAudio20_RegisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.RegisterForCallbacks(This, pCallback)

template IXAudio20_UnregisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.UnregisterForCallbacks(This, pCallback)

template IXAudio20_CreateSourceVoice*(This, ppSourceVoice, pSourceFormat, Flags,
                                     MaxFrequencyRatio, pCallback, pSendList,
                                     pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSourceVoice(This, ppSourceVoice, pSourceFormat, Flags,
                                  MaxFrequencyRatio, pCallback, pSendList,
                                  pEffectChain)

template IXAudio20_CreateSubmixVoice*(This, ppSubmixVoice, InputChannels,
                                     InputSampleRate, Flags, ProcessingStage,
                                     pSendList, pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSubmixVoice(This, ppSubmixVoice, InputChannels,
                                  InputSampleRate, Flags, ProcessingStage,
                                  pSendList, pEffectChain)

template IXAudio20_CreateMasteringVoice*(This, ppMasteringVoice, InputChannels,
                                        InputSampleRate, Flags, DeviceIndex,
                                        pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateMasteringVoice(This, ppMasteringVoice, InputChannels,
                                     InputSampleRate, Flags, DeviceIndex,
                                     pEffectChain)

template IXAudio20_StartEngine*(This: untyped): untyped =
  (This).lpVtbl.StartEngine(This)

template IXAudio20_StopEngine*(This: untyped): untyped =
  (This).lpVtbl.StopEngine(This)

template IXAudio20_CommitChanges*(This, OperationSet: untyped): untyped =
  (This).lpVtbl.CommitChanges(This, OperationSet)

template IXAudio20_GetPerformanceData*(This, pPerfData: untyped): untyped =
  (This).lpVtbl.GetPerformanceData(This, pPerfData)

template IXAudio20_SetDebugConfiguration*(This, pDebugConfiguration, pReserved: untyped): untyped =
  (This).lpVtbl.SetDebugConfiguration(This, pDebugConfiguration, pReserved)

## * IUnknown methods **

template IXAudio22_QueryInterface*(This, riid, ppvObject: untyped): untyped =
  (This).lpVtbl.QueryInterface(This, riid, ppvObject)

template IXAudio22_AddRef*(This: untyped): untyped =
  (This).lpVtbl.AddRef(This)

template IXAudio22_Release*(This: untyped): untyped =
  (This).lpVtbl.Release(This)

## * IXAudio22 methods **

template IXAudio22_GetDeviceCount*(This, pCount: untyped): untyped =
  (This).lpVtbl.GetDeviceCount(This, pCount)

template IXAudio22_GetDeviceDetails*(This, Index, pDeviceDetails: untyped): untyped =
  (This).lpVtbl.GetDeviceDetails(This, Index, pDeviceDetails)

template IXAudio22_Initialize*(This, Flags, XAudio2Processor: untyped): untyped =
  (This).lpVtbl.Initialize(This, Flags, XAudio2Processor)

template IXAudio22_RegisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.RegisterForCallbacks(This, pCallback)

template IXAudio22_UnregisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.UnregisterForCallbacks(This, pCallback)

template IXAudio22_CreateSourceVoice*(This, ppSourceVoice, pSourceFormat, Flags,
                                     MaxFrequencyRatio, pCallback, pSendList,
                                     pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSourceVoice(This, ppSourceVoice, pSourceFormat, Flags,
                                  MaxFrequencyRatio, pCallback, pSendList,
                                  pEffectChain)

template IXAudio22_CreateSubmixVoice*(This, ppSubmixVoice, InputChannels,
                                     InputSampleRate, Flags, ProcessingStage,
                                     pSendList, pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSubmixVoice(This, ppSubmixVoice, InputChannels,
                                  InputSampleRate, Flags, ProcessingStage,
                                  pSendList, pEffectChain)

template IXAudio22_CreateMasteringVoice*(This, ppMasteringVoice, InputChannels,
                                        InputSampleRate, Flags, DeviceIndex,
                                        pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateMasteringVoice(This, ppMasteringVoice, InputChannels,
                                     InputSampleRate, Flags, DeviceIndex,
                                     pEffectChain)

template IXAudio22_StartEngine*(This: untyped): untyped =
  (This).lpVtbl.StartEngine(This)

template IXAudio22_StopEngine*(This: untyped): untyped =
  (This).lpVtbl.StopEngine(This)

template IXAudio22_CommitChanges*(This, OperationSet: untyped): untyped =
  (This).lpVtbl.CommitChanges(This, OperationSet)

template IXAudio22_GetPerformanceData*(This, pPerfData: untyped): untyped =
  (This).lpVtbl.GetPerformanceData(This, pPerfData)

template IXAudio22_SetDebugConfiguration*(This, pDebugConfiguration, pReserved: untyped): untyped =
  (This).lpVtbl.SetDebugConfiguration(This, pDebugConfiguration, pReserved)

## * IUnknown methods **

template IXAudio23_QueryInterface*(This, riid, ppvObject: untyped): untyped =
  (This).lpVtbl.QueryInterface(This, riid, ppvObject)

template IXAudio23_AddRef*(This: untyped): untyped =
  (This).lpVtbl.AddRef(This)

template IXAudio23_Release*(This: untyped): untyped =
  (This).lpVtbl.Release(This)

## * IXAudio23 methods **

template IXAudio23_GetDeviceCount*(This, pCount: untyped): untyped =
  (This).lpVtbl.GetDeviceCount(This, pCount)

template IXAudio23_GetDeviceDetails*(This, Index, pDeviceDetails: untyped): untyped =
  (This).lpVtbl.GetDeviceDetails(This, Index, pDeviceDetails)

template IXAudio23_Initialize*(This, Flags, XAudio2Processor: untyped): untyped =
  (This).lpVtbl.Initialize(This, Flags, XAudio2Processor)

template IXAudio23_RegisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.RegisterForCallbacks(This, pCallback)

template IXAudio23_UnregisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.UnregisterForCallbacks(This, pCallback)

template IXAudio23_CreateSourceVoice*(This, ppSourceVoice, pSourceFormat, Flags,
                                     MaxFrequencyRatio, pCallback, pSendList,
                                     pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSourceVoice(This, ppSourceVoice, pSourceFormat, Flags,
                                  MaxFrequencyRatio, pCallback, pSendList,
                                  pEffectChain)

template IXAudio23_CreateSubmixVoice*(This, ppSubmixVoice, InputChannels,
                                     InputSampleRate, Flags, ProcessingStage,
                                     pSendList, pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSubmixVoice(This, ppSubmixVoice, InputChannels,
                                  InputSampleRate, Flags, ProcessingStage,
                                  pSendList, pEffectChain)

template IXAudio23_CreateMasteringVoice*(This, ppMasteringVoice, InputChannels = XAUDIO2_DEFAULT_CHANNELS,
                                        InputSampleRate = XAUDIO2_DEFAULT_SAMPLERATE, Flags=0, DeviceIndex=0,
                                        pEffectChain: untyped=0): untyped =
  (This).lpVtbl.CreateMasteringVoice(This, ppMasteringVoice, InputChannels,
                                     InputSampleRate, Flags, DeviceIndex,
                                     pEffectChain)

template IXAudio23_StartEngine*(This: untyped): untyped =
  (This).lpVtbl.StartEngine(This)

template IXAudio23_StopEngine*(This: untyped): untyped =
  (This).lpVtbl.StopEngine(This)

template IXAudio23_CommitChanges*(This, OperationSet: untyped): untyped =
  (This).lpVtbl.CommitChanges(This, OperationSet)

template IXAudio23_GetPerformanceData*(This, pPerfData: untyped): untyped =
  (This).lpVtbl.GetPerformanceData(This, pPerfData)

template IXAudio23_SetDebugConfiguration*(This, pDebugConfiguration, pReserved: untyped): untyped =
  (This).lpVtbl.SetDebugConfiguration(This, pDebugConfiguration, pReserved)

## * IUnknown methods **

template IXAudio27_QueryInterface*(This, riid, ppvObject: untyped): untyped =
  (This).lpVtbl.QueryInterface(This, riid, ppvObject)

template IXAudio27_AddRef*(This: untyped): untyped =
  (This).lpVtbl.AddRef(This)

template IXAudio27_Release*(This: untyped): untyped =
  (This).lpVtbl.Release(This)

## * IXAudio27 methods **

template IXAudio27_GetDeviceCount*(This, pCount: untyped): untyped =
  (This).lpVtbl.GetDeviceCount(This, pCount)

template IXAudio27_GetDeviceDetails*(This, Index, pDeviceDetails: untyped): untyped =
  (This).lpVtbl.GetDeviceDetails(This, Index, pDeviceDetails)

template IXAudio27_Initialize*(This, Flags, XAudio2Processor: untyped): untyped =
  (This).lpVtbl.Initialize(This, Flags, XAudio2Processor)

template IXAudio27_RegisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.RegisterForCallbacks(This, pCallback)

template IXAudio27_UnregisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.UnregisterForCallbacks(This, pCallback)

template IXAudio27_CreateSourceVoice*(This, ppSourceVoice, pSourceFormat, Flags,
                                     MaxFrequencyRatio, pCallback, pSendList,
                                     pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSourceVoice(This, ppSourceVoice, pSourceFormat, Flags,
                                  MaxFrequencyRatio, pCallback, pSendList,
                                  pEffectChain)

template IXAudio27_CreateSubmixVoice*(This, ppSubmixVoice, InputChannels,
                                     InputSampleRate, Flags, ProcessingStage,
                                     pSendList, pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSubmixVoice(This, ppSubmixVoice, InputChannels,
                                  InputSampleRate, Flags, ProcessingStage,
                                  pSendList, pEffectChain)

template IXAudio27_CreateMasteringVoice*(This, ppMasteringVoice, InputChannels,
                                        InputSampleRate, Flags, DeviceIndex,
                                        pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateMasteringVoice(This, ppMasteringVoice, InputChannels,
                                     InputSampleRate, Flags, DeviceIndex,
                                     pEffectChain)

template IXAudio27_StartEngine*(This: untyped): untyped =
  (This).lpVtbl.StartEngine(This)

template IXAudio27_StopEngine*(This: untyped): untyped =
  (This).lpVtbl.StopEngine(This)

template IXAudio27_CommitChanges*(This, OperationSet: untyped): untyped =
  (This).lpVtbl.CommitChanges(This, OperationSet)

template IXAudio27_GetPerformanceData*(This, pPerfData: untyped): untyped =
  (This).lpVtbl.GetPerformanceData(This, pPerfData)

template IXAudio27_SetDebugConfiguration*(This, pDebugConfiguration, pReserved: untyped): untyped =
  (This).lpVtbl.SetDebugConfiguration(This, pDebugConfiguration, pReserved)

## * IUnknown methods **

template IXAudio2_QueryInterface*(This, riid, ppvObject: untyped): untyped =
  (This).lpVtbl.QueryInterface(This, riid, ppvObject)

template IXAudio2_AddRef*(This: untyped): untyped =
  (This).lpVtbl.AddRef(This)

template IXAudio2_Release*(This: untyped): untyped =
  (This).lpVtbl.Release(This)

## * IXAudio2 methods **

template IXAudio2_RegisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.RegisterForCallbacks(This, pCallback)

template IXAudio2_UnregisterForCallbacks*(This, pCallback: untyped): untyped =
  (This).lpVtbl.UnregisterForCallbacks(This, pCallback)

template IXAudio2_CreateSourceVoice*(This, ppSourceVoice, pSourceFormat, Flags,
                                    MaxFrequencyRatio, pCallback, pSendList,
                                    pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSourceVoice(This, ppSourceVoice, pSourceFormat, Flags,
                                  MaxFrequencyRatio, pCallback, pSendList,
                                  pEffectChain)

template IXAudio2_CreateSubmixVoice*(This, ppSubmixVoice, InputChannels,
                                    InputSampleRate, Flags, ProcessingStage,
                                    pSendList, pEffectChain: untyped): untyped =
  (This).lpVtbl.CreateSubmixVoice(This, ppSubmixVoice, InputChannels,
                                  InputSampleRate, Flags, ProcessingStage,
                                  pSendList, pEffectChain)

template IXAudio2_CreateMasteringVoice*(This, ppMasteringVoice, InputChannels,
                                       InputSampleRate, Flags, DeviceId,
                                       pEffectChain, StreamCategory: untyped): untyped =
  (This).lpVtbl.CreateMasteringVoice(This, ppMasteringVoice, InputChannels,
                                     InputSampleRate, Flags, DeviceId,
                                     pEffectChain, StreamCategory)

template IXAudio2_StartEngine*(This: untyped): untyped =
  (This).lpVtbl.StartEngine(This)

template IXAudio2_StopEngine*(This: untyped): untyped =
  (This).lpVtbl.StopEngine(This)

template IXAudio2_CommitChanges*(This, OperationSet: untyped): untyped =
  (This).lpVtbl.CommitChanges(This, OperationSet)

template IXAudio2_GetPerformanceData*(This, pPerfData: untyped): untyped =
  (This).lpVtbl.GetPerformanceData(This, pPerfData)

template IXAudio2_SetDebugConfiguration*(This, pDebugConfiguration, pReserved: untyped): untyped =
  (This).lpVtbl.SetDebugConfiguration(This, pDebugConfiguration, pReserved)

const
  XAUDIO2_DEBUG_ENGINE* = (1)
  XAUDIO2_VOICE_NOPITCH* = (2)
  XAUDIO2_VOICE_NOSRC* = (4)
  XAUDIO2_VOICE_USEFILTER* = (8)
  XAUDIO2_VOICE_MUSIC* = (16)
  XAUDIO2_PLAY_TAILS* = (32)
  XAUDIO2_END_OF_STREAM* = (64)
  XAUDIO2_SEND_USEFILTER* = (128)
  XAUDIO2_VOICE_NOSAMPLESPLAYED* = (256)
  XAUDIO2_DEFAULT_FILTER_TYPE* = (LowPassFilter)
  XAUDIO2_DEFAULT_FILTER_FREQUENCY* = (XAUDIO2_MAX_FILTER_FREQUENCY)
  XAUDIO2_DEFAULT_FILTER_ONEOVERQ* = (1.00000000000000)
  XAUDIO2_QUANTUM_NUMERATOR* = (1)
  XAUDIO2_QUANTUM_DENOMINATOR* = (100)
  XAUDIO2_QUANTUM_MS* = ((1000.00000000000 * XAUDIO2_QUANTUM_NUMERATOR) / XAUDIO2_QUANTUM_DENOMINATOR)
  XAUDIO2_E_INVALID_CALL* = (cast[HRESULT](0x88960001))
  XAUDIO2_E_XMA_DECODER_ERROR* = (cast[HRESULT](0x88960002))
  XAUDIO2_E_XAPO_CREATION_FAILED* = (cast[HRESULT](0x88960003))
  XAUDIO2_E_DEVICE_INVALIDATED* = (cast[HRESULT](0x88960004))
  XAUDIO20_E_XMA_DECODER_ERROR* = (cast[HRESULT](0x88960001))
  XAUDIO20_E_XAPO_CREATION_FAILED* = (cast[HRESULT](0x88960002))
  XAUDIO20_E_DEVICE_INVALIDATED* = (cast[HRESULT](0x88960003))

import math
proc XAudio2DecibelsToAmplitudeRatio*(decibels: cfloat): cfloat {.inline.} =
  return pow(10.0f, decibels / 20.0f)

proc XAudio2AmplitudeRatioToDecibels*(volume: cfloat): cfloat {.inline.} =
  if volume == 0: return -3.402823466e+38f
  return 20.0f * log10(volume)

proc XAudio2SemitonesToFrequencyRatio*(semitones: cfloat): cfloat {.inline.} =
  return pow(2.0f, semitones / 12.0f)

proc XAudio2FrequencyRatioToSemitones*(freqratio: cfloat): cfloat {.inline.} =
  return 39.86313713864835f * log10(freqratio)

proc XAudio2CutoffFrequencyToRadians*(cutofffreq: cfloat; samplerate: UINT32): cfloat {.inline.} =
  if (UINT32)(cutofffreq * 6.0f) >= samplerate: return XAUDIO2_MAX_FILTER_FREQUENCY
  return 2.0f * sin(cfloat (PI * cutofffreq / samplerate.cfloat))

proc XAudio2RadiansToCutoffFrequency*(radians: cfloat; samplerate: cfloat): cfloat {.inline.} =
  return samplerate * arcsin(radians / 2.0f) / cfloat PI

proc XAudio2Create*(pxaudio2: ptr ptr IXAudio2, flags: UINT32, processor: XAUDIO2_PROCESSOR): HRESULT {.stdcall, importc.}
