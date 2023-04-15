import winim/lean
import audiosessiontypes

type
  WAVEFORMATEX* {.bycopy.} = object
    wFormatTag*: WORD
    nChannels*: WORD
    nSamplesPerSec*: DWORD
    nAvgBytesPerSec*: DWORD
    nBlockAlign*: WORD
    wBitsPerSample*: WORD
    cbSize*: WORD

  AUDCLNT_BUFFERFLAGS* = enum
    AUDCLNT_BUFFERFLAGS_DATA_DISCONTINUITY = 0x1, 
    AUDCLNT_BUFFERFLAGS_SILENT = 0x2,
    AUDCLNT_BUFFERFLAGS_TIMESTAMP_ERROR = 0x4

  AUDCLNT_STREAMOPTIONS* = enum
    AUDCLNT_STREAMOPTIONS_NONE = 0x0, 
    AUDCLNT_STREAMOPTIONS_RAW = 0x1,
    AUDCLNT_STREAMOPTIONS_MATCH_FORMAT = 0x2,
    AUDCLNT_STREAMOPTIONS_AMBISONICS = 0x4
    
  AudioClientProperties* {.bycopy.} = object
    cbSize*: UINT32
    bIsOffload*: WINBOOL
    eCategory*: AUDIO_STREAM_CATEGORY
    Options*: AUDCLNT_STREAMOPTIONS
    
type REFERENCE_TIME* = LONGLONG
    
const IID_IAudioClient* = IID(Data1:0x1cb9ad4c'i32, Data2:0xdbfa, Data3:0x4c32, Data4:[0xb1'u8, 0x78, 0xc2, 0xf5, 0x68, 0xa7, 0x03, 0xb2])
const IID_IAudioClient2* = IID(Data1:0x726778cd'i32, Data2:0xf60a, Data3:0x4eda, Data4:[0x82'u8, 0xde, 0xe4, 0x76, 0x10, 0xcd, 0x78, 0xaa])
const IID_IAudioRenderClient* = IID(Data1:0xf294acfc'i32, Data2:0x3146, Data3:0x4483, Data4:[0xa7'u8, 0xbf, 0xad, 0xdc, 0xa7, 0xc2, 0x60, 0xe2])
const IID_IAudioCaptureClient* = IID(Data1:0xc8adbd64'i32, Data2:0xe71e, Data3:0x48a0, Data4:[0xa4'u8, 0xde, 0x18, 0x5c, 0x39, 0x5c, 0xd3, 0x17])
const IID_IAudioClock* = IID(Data1:0xcd63314f'i32, Data2:0x3fba, Data3:0x4a1b, Data4:[0x81'u8, 0x2c, 0xef, 0x96, 0x35, 0x87, 0x28, 0xe7])
const IID_IAudioClock2* = IID(Data1:0x6f49ff73'i32, Data2:0x6727, Data3:0x49ac, Data4:[0xa0'u8, 0x08, 0xd9, 0x8c, 0xf5, 0xe7, 0x00, 0x48])
const IID_IAudioClockAdjustment* = IID(Data1:0xf6e4c0a0'i32, Data2:0x46d9, Data3:0x4fb8, Data4:[0xbe'u8, 0x21, 0x57, 0xa3, 0xef, 0x2b, 0x62, 0x6c])
const IID_ISimpleAudioVolume* = IID(Data1:0x87ce5498'i32, Data2:0x68d6, Data3:0x44e5, Data4:[0x92'u8, 0x15, 0x6d, 0xa4, 0x7e, 0xf8, 0x83, 0xd8])
const IID_IAudioStreamVolume* = IID(Data1:0x93014887'i32, Data2:0x242d, Data3:0x4068, Data4:[0x8a'u8, 0x15, 0xcf, 0x5e, 0x93, 0xb9, 0x0f, 0xe3])
const IID_IChannelAudioVolume* = IID(Data1:0x1c158861'i32, Data2:0xb533, Data3:0x4b30, Data4:[0xb1'u8, 0xcf, 0xe8, 0x53, 0xe5, 0x1c, 0x59, 0xb8])
type
    IAudioClientVtbl* = object
        QueryInterface*: proc (This:ptr IAudioClient, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IAudioClient): ULONG {.stdcall.}
        Release*: proc (This:ptr IAudioClient): ULONG {.stdcall.}
        Initialize*: proc (This:ptr IAudioClient, ShareMode:AUDCLNT_SHAREMODE, StreamFlags:DWORD, hnsBufferDuration:REFERENCE_TIME, hnsPeriodicity:REFERENCE_TIME, pFormat:ptr WAVEFORMATEX, AudioSessionGuid:LPCGUID): HRESULT {.stdcall.}
        GetBufferSize*: proc (This:ptr IAudioClient, pNumBufferFrames:ptr UINT32): HRESULT {.stdcall.}
        GetStreamLatency*: proc (This:ptr IAudioClient, phnsLatency:ptr REFERENCE_TIME): HRESULT {.stdcall.}
        GetCurrentPadding*: proc (This:ptr IAudioClient, pNumPaddingFrames:ptr UINT32): HRESULT {.stdcall.}
        IsFormatSupported*: proc (This:ptr IAudioClient, ShareMode:AUDCLNT_SHAREMODE, pFormat:ptr WAVEFORMATEX, ppClosestMatch:ptr ptr WAVEFORMATEX): HRESULT {.stdcall.}
        GetMixFormat*: proc (This:ptr IAudioClient, ppDeviceFormat:ptr ptr WAVEFORMATEX): HRESULT {.stdcall.}
        GetDevicePeriod*: proc (This:ptr IAudioClient, phnsDefaultDevicePeriod:ptr REFERENCE_TIME, phnsMinimumDevicePeriod:ptr REFERENCE_TIME): HRESULT {.stdcall.}
        Start*: proc (This:ptr IAudioClient): HRESULT {.stdcall.}
        Stop*: proc (This:ptr IAudioClient): HRESULT {.stdcall.}
        Reset*: proc (This:ptr IAudioClient): HRESULT {.stdcall.}
        SetEventHandle*: proc (This:ptr IAudioClient, eventHandle:HANDLE): HRESULT {.stdcall.}
        GetService*: proc (This:ptr IAudioClient, riid:ptr IID, ppv:ptr pointer): HRESULT {.stdcall.}
    IAudioClient* = object
        lpVtbl*: ptr IAudioClientVtbl
    IAudioClient2Vtbl* = object
        QueryInterface*: proc (This:ptr IAudioClient2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IAudioClient2): ULONG {.stdcall.}
        Release*: proc (This:ptr IAudioClient2): ULONG {.stdcall.}
        Initialize*: proc (This:ptr IAudioClient2, ShareMode:AUDCLNT_SHAREMODE, StreamFlags:DWORD, hnsBufferDuration:REFERENCE_TIME, hnsPeriodicity:REFERENCE_TIME, pFormat:ptr WAVEFORMATEX, AudioSessionGuid:LPCGUID): HRESULT {.stdcall.}
        GetBufferSize*: proc (This:ptr IAudioClient2, pNumBufferFrames:ptr UINT32): HRESULT {.stdcall.}
        GetStreamLatency*: proc (This:ptr IAudioClient2, phnsLatency:ptr REFERENCE_TIME): HRESULT {.stdcall.}
        GetCurrentPadding*: proc (This:ptr IAudioClient2, pNumPaddingFrames:ptr UINT32): HRESULT {.stdcall.}
        IsFormatSupported*: proc (This:ptr IAudioClient2, ShareMode:AUDCLNT_SHAREMODE, pFormat:ptr WAVEFORMATEX, ppClosestMatch:ptr ptr WAVEFORMATEX): HRESULT {.stdcall.}
        GetMixFormat*: proc (This:ptr IAudioClient2, ppDeviceFormat:ptr ptr WAVEFORMATEX): HRESULT {.stdcall.}
        GetDevicePeriod*: proc (This:ptr IAudioClient2, phnsDefaultDevicePeriod:ptr REFERENCE_TIME, phnsMinimumDevicePeriod:ptr REFERENCE_TIME): HRESULT {.stdcall.}
        Start*: proc (This:ptr IAudioClient2): HRESULT {.stdcall.}
        Stop*: proc (This:ptr IAudioClient2): HRESULT {.stdcall.}
        Reset*: proc (This:ptr IAudioClient2): HRESULT {.stdcall.}
        SetEventHandle*: proc (This:ptr IAudioClient2, eventHandle:HANDLE): HRESULT {.stdcall.}
        GetService*: proc (This:ptr IAudioClient2, riid:ptr IID, ppv:ptr pointer): HRESULT {.stdcall.}
        IsOffloadCapable*: proc (This:ptr IAudioClient2, Category:AUDIO_STREAM_CATEGORY, pbOffloadCapable:ptr BOOL): HRESULT {.stdcall.}
        SetClientProperties*: proc (This:ptr IAudioClient2, pProperties:ptr AudioClientProperties): HRESULT {.stdcall.}
        GetBufferSizeLimits*: proc (This:ptr IAudioClient2, pFormat:ptr WAVEFORMATEX, bEventDriven:BOOL, phnsMinBufferDuration:ptr REFERENCE_TIME, phnsMaxBufferDuration:ptr REFERENCE_TIME): HRESULT {.stdcall.}
    IAudioClient2* = object
        lpVtbl*: ptr IAudioClient2Vtbl
    IAudioRenderClientVtbl* = object
        QueryInterface*: proc (This:ptr IAudioRenderClient, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IAudioRenderClient): ULONG {.stdcall.}
        Release*: proc (This:ptr IAudioRenderClient): ULONG {.stdcall.}
        GetBuffer*: proc (This:ptr IAudioRenderClient, NumFramesRequested:UINT32, ppData:ptr ptr BYTE): HRESULT {.stdcall.}
        ReleaseBuffer*: proc (This:ptr IAudioRenderClient, NumFramesWritten:UINT32, dwFlags:DWORD): HRESULT {.stdcall.}
    IAudioRenderClient* = object
        lpVtbl*: ptr IAudioRenderClientVtbl
    IAudioCaptureClientVtbl* = object
        QueryInterface*: proc (This:ptr IAudioCaptureClient, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IAudioCaptureClient): ULONG {.stdcall.}
        Release*: proc (This:ptr IAudioCaptureClient): ULONG {.stdcall.}
        GetBuffer*: proc (This:ptr IAudioCaptureClient, ppData:ptr ptr BYTE, pNumFramesToRead:ptr UINT32, pdwFlags:ptr DWORD, pu64DevicePosition:ptr UINT64, pu64QPCPosition:ptr UINT64): HRESULT {.stdcall.}
        ReleaseBuffer*: proc (This:ptr IAudioCaptureClient, NumFramesRead:UINT32): HRESULT {.stdcall.}
        GetNextPacketSize*: proc (This:ptr IAudioCaptureClient, pNumFramesInNextPacket:ptr UINT32): HRESULT {.stdcall.}
    IAudioCaptureClient* = object
        lpVtbl*: ptr IAudioCaptureClientVtbl
    IAudioClockVtbl* = object
        QueryInterface*: proc (This:ptr IAudioClock, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IAudioClock): ULONG {.stdcall.}
        Release*: proc (This:ptr IAudioClock): ULONG {.stdcall.}
        GetFrequency*: proc (This:ptr IAudioClock, pu64Frequency:ptr UINT64): HRESULT {.stdcall.}
        GetPosition*: proc (This:ptr IAudioClock, pu64Position:ptr UINT64, pu64QPCPosition:ptr UINT64): HRESULT {.stdcall.}
        GetCharacteristics*: proc (This:ptr IAudioClock, pdwCharacteristics:ptr DWORD): HRESULT {.stdcall.}
    IAudioClock* = object
        lpVtbl*: ptr IAudioClockVtbl
    IAudioClock2Vtbl* = object
        QueryInterface*: proc (This:ptr IAudioClock2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IAudioClock2): ULONG {.stdcall.}
        Release*: proc (This:ptr IAudioClock2): ULONG {.stdcall.}
        GetDevicePosition*: proc (This:ptr IAudioClock2, DevicePosition:ptr UINT64, QPCPosition:ptr UINT64): HRESULT {.stdcall.}
    IAudioClock2* = object
        lpVtbl*: ptr IAudioClock2Vtbl
    IAudioClockAdjustmentVtbl* = object
        QueryInterface*: proc (This:ptr IAudioClockAdjustment, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IAudioClockAdjustment): ULONG {.stdcall.}
        Release*: proc (This:ptr IAudioClockAdjustment): ULONG {.stdcall.}
        SetSampleRate*: proc (This:ptr IAudioClockAdjustment, flSampleRate:float32): HRESULT {.stdcall.}
    IAudioClockAdjustment* = object
        lpVtbl*: ptr IAudioClockAdjustmentVtbl
    ISimpleAudioVolumeVtbl* = object
        QueryInterface*: proc (This:ptr ISimpleAudioVolume, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr ISimpleAudioVolume): ULONG {.stdcall.}
        Release*: proc (This:ptr ISimpleAudioVolume): ULONG {.stdcall.}
        SetMasterVolume*: proc (This:ptr ISimpleAudioVolume, fLevel:float32, EventContext:LPCGUID): HRESULT {.stdcall.}
        GetMasterVolume*: proc (This:ptr ISimpleAudioVolume, pfLevel:ptr float32): HRESULT {.stdcall.}
        SetMute*: proc (This:ptr ISimpleAudioVolume, bMute:BOOL, EventContext:LPCGUID): HRESULT {.stdcall.}
        GetMute*: proc (This:ptr ISimpleAudioVolume, pbMute:ptr BOOL): HRESULT {.stdcall.}
    ISimpleAudioVolume* = object
        lpVtbl*: ptr ISimpleAudioVolumeVtbl
    IAudioStreamVolumeVtbl* = object
        QueryInterface*: proc (This:ptr IAudioStreamVolume, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IAudioStreamVolume): ULONG {.stdcall.}
        Release*: proc (This:ptr IAudioStreamVolume): ULONG {.stdcall.}
        GetChannelCount*: proc (This:ptr IAudioStreamVolume, pdwCount:ptr UINT32): HRESULT {.stdcall.}
        SetChannelVolume*: proc (This:ptr IAudioStreamVolume, dwIndex:UINT32, fLevel:float32): HRESULT {.stdcall.}
        GetChannelVolume*: proc (This:ptr IAudioStreamVolume, dwIndex:UINT32, pfLevel:ptr float32): HRESULT {.stdcall.}
        SetAllVolumes*: proc (This:ptr IAudioStreamVolume, dwCount:UINT32, pfVolumes:ptr float32): HRESULT {.stdcall.}
        GetAllVolumes*: proc (This:ptr IAudioStreamVolume, dwCount:UINT32, pfVolumes:ptr float32): HRESULT {.stdcall.}
    IAudioStreamVolume* = object
        lpVtbl*: ptr IAudioStreamVolumeVtbl
    IChannelAudioVolumeVtbl* = object
        QueryInterface*: proc (This:ptr IChannelAudioVolume, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IChannelAudioVolume): ULONG {.stdcall.}
        Release*: proc (This:ptr IChannelAudioVolume): ULONG {.stdcall.}
        GetChannelCount*: proc (This:ptr IChannelAudioVolume, pdwCount:ptr UINT32): HRESULT {.stdcall.}
        SetChannelVolume*: proc (This:ptr IChannelAudioVolume, dwIndex:UINT32, fLevel:float32, EventContext:LPCGUID): HRESULT {.stdcall.}
        GetChannelVolume*: proc (This:ptr IChannelAudioVolume, dwIndex:UINT32, pfLevel:ptr float32): HRESULT {.stdcall.}
        SetAllVolumes*: proc (This:ptr IChannelAudioVolume, dwCount:UINT32, pfVolumes:ptr float32, EventContext:LPCGUID): HRESULT {.stdcall.}
        GetAllVolumes*: proc (This:ptr IChannelAudioVolume, dwCount:UINT32, pfVolumes:ptr float32): HRESULT {.stdcall.}
    IChannelAudioVolume* = object
        lpVtbl*: ptr IChannelAudioVolumeVtbl

