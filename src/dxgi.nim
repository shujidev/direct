import winim/lean
import dxgiformat, dxgicommon, dxgitype
const
  DXGI_CPU_ACCESS_NONE* = (0)
  DXGI_CPU_ACCESS_DYNAMIC* = (1)
  DXGI_CPU_ACCESS_READ_WRITE* = (2)
  DXGI_CPU_ACCESS_SCRATCH* = (3)
  DXGI_CPU_ACCESS_FIELD* = (15)
type
  DXGI_USAGE* = UINT
const
  DXGI_USAGE_SHADER_INPUT* = (0x10)
  DXGI_USAGE_RENDER_TARGET_OUTPUT* = (0x20)
  DXGI_USAGE_BACK_BUFFER* = (0x40)
  DXGI_USAGE_SHARED* = (0x80)
  DXGI_USAGE_READ_ONLY* = (0x100)
  DXGI_USAGE_DISCARD_ON_PRESENT* = (0x200)
  DXGI_USAGE_UNORDERED_ACCESS* = (0x400)
  DXGI_ENUM_MODES_INTERLACED* = (1)
  DXGI_ENUM_MODES_SCALING* = (2)
  DXGI_RESOURCE_PRIORITY_MINIMUM* = (0x28000000)
  DXGI_RESOURCE_PRIORITY_LOW* = (0x50000000)
  DXGI_RESOURCE_PRIORITY_NORMAL* = (0x78000000)
  DXGI_RESOURCE_PRIORITY_HIGH* = (0xa0000000)
  DXGI_RESOURCE_PRIORITY_MAXIMUM* = (0xc8000000)
  DXGI_MAP_READ* = (0x1)
  DXGI_MAP_WRITE* = (0x2)
  DXGI_MAP_DISCARD* = (0x4)
type
  DXGI_SWAP_EFFECT* = enum
    DXGI_SWAP_EFFECT_DISCARD = 0, DXGI_SWAP_EFFECT_SEQUENTIAL = 1,
    DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL = 3, DXGI_SWAP_EFFECT_FLIP_DISCARD = 4
  DXGI_RESIDENCY* = enum
    DXGI_RESIDENCY_FULLY_RESIDENT = 1,
    DXGI_RESIDENCY_RESIDENT_IN_SHARED_MEMORY = 2,
    DXGI_RESIDENCY_EVICTED_TO_DISK = 3
  DXGI_SWAP_CHAIN_FLAG* = enum
    DXGI_SWAP_CHAIN_FLAG_NONPREROTATED = 0x1,
    DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH = 0x2,
    DXGI_SWAP_CHAIN_FLAG_GDI_COMPATIBLE = 0x4,
    DXGI_SWAP_CHAIN_FLAG_RESTRICTED_CONTENT = 0x8,
    DXGI_SWAP_CHAIN_FLAG_RESTRICT_SHARED_RESOURCE_DRIVER = 0x10,
    DXGI_SWAP_CHAIN_FLAG_DISPLAY_ONLY = 0x20,
    DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT = 0x40,
    DXGI_SWAP_CHAIN_FLAG_FOREGROUND_LAYER = 0x80,
    DXGI_SWAP_CHAIN_FLAG_FULLSCREEN_VIDEO = 0x100,
    DXGI_SWAP_CHAIN_FLAG_YUV_VIDEO = 0x200,
    DXGI_SWAP_CHAIN_FLAG_HW_PROTECTED = 0x400,
    DXGI_SWAP_CHAIN_FLAG_ALLOW_TEARING = 0x800,
    DXGI_SWAP_CHAIN_FLAG_RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS = 0x1000
  DXGI_ADAPTER_FLAG* = enum
    DXGI_ADAPTER_FLAG_NONE = 0, DXGI_ADAPTER_FLAG_REMOTE = 1,
    DXGI_ADAPTER_FLAG_SOFTWARE = 2, DXGI_ADAPTER_FLAG_FORCE_DWORD = 0xffffffff
  #~ LUID* {.bycopy.} = object
    #~ LowPart*: DWORD
    #~ HighPart*: LONG

  DXGI_SURFACE_DESC* {.bycopy.} = object
    Width*: UINT
    Height*: UINT
    Format*: DXGI_FORMAT
    SampleDesc*: DXGI_SAMPLE_DESC

  DXGI_MAPPED_RECT* {.bycopy.} = object
    Pitch*: INT
    pBits*: ptr BYTE

  DXGI_OUTPUT_DESC* {.bycopy.} = object
    DeviceName*: array[32, WCHAR]
    DesktopCoordinates*: RECT
    AttachedToDesktop*: WINBOOL
    Rotation*: DXGI_MODE_ROTATION
    Monitor*: HMONITOR

  DXGI_FRAME_STATISTICS* {.bycopy.} = object
    PresentCount*: UINT
    PresentRefreshCount*: UINT
    SyncRefreshCount*: UINT
    SyncQPCTime*: LARGE_INTEGER
    SyncGPUTime*: LARGE_INTEGER

  DXGI_ADAPTER_DESC* {.bycopy.} = object
    Description*: array[128, WCHAR]
    VendorId*: UINT
    DeviceId*: UINT
    SubSysId*: UINT
    Revision*: UINT
    DedicatedVideoMemory*: SIZE_T
    DedicatedSystemMemory*: SIZE_T
    SharedSystemMemory*: SIZE_T
    AdapterLuid*: LUID

  DXGI_SWAP_CHAIN_DESC* {.bycopy.} = object
    BufferDesc*: DXGI_MODE_DESC
    SampleDesc*: DXGI_SAMPLE_DESC
    BufferUsage*: DXGI_USAGE
    BufferCount*: UINT
    OutputWindow*: HWND
    Windowed*: WINBOOL
    SwapEffect*: DXGI_SWAP_EFFECT
    Flags*: UINT

  DXGI_SHARED_RESOURCE* {.bycopy.} = object
    Handle*: HANDLE

  DXGI_ADAPTER_DESC1* {.bycopy.} = object
    Description*: array[128, WCHAR]
    VendorId*: UINT
    DeviceId*: UINT
    SubSysId*: UINT
    Revision*: UINT
    DedicatedVideoMemory*: SIZE_T
    DedicatedSystemMemory*: SIZE_T
    SharedSystemMemory*: SIZE_T
    AdapterLuid*: LUID
    Flags*: UINT

  DXGI_DISPLAY_COLOR_SPACE* {.bycopy.} = object
    PrimaryCoordinates*: array[8, array[2, FLOAT]]
    WhitePoints*: array[16, array[2, FLOAT]]
    
const IID_IDXGIObject* = IID(Data1:0xaec22fb8'i32, Data2:0x76f3, Data3:0x4639, Data4:[0x9b'u8, 0xe0, 0x28, 0xeb, 0x43, 0xa6, 0x7a, 0x2e])
const IID_IDXGIDeviceSubObject* = IID(Data1:0x3d3e0379'i32, Data2:0xf9de, Data3:0x4d58, Data4:[0xbb'u8, 0x6c, 0x18, 0xd6, 0x29, 0x92, 0xf1, 0xa6])
const IID_IDXGIResource* = IID(Data1:0x035f3ab4'i32, Data2:0x482e, Data3:0x4e50, Data4:[0xb4'u8, 0x1f, 0x8a, 0x7f, 0x8b, 0xd8, 0x96, 0x0b])
const IID_IDXGIKeyedMutex* = IID(Data1:0x9d8e1289'i32, Data2:0xd7b3, Data3:0x465f, Data4:[0x81'u8, 0x26, 0x25, 0x0e, 0x34, 0x9a, 0xf8, 0x5d])
const IID_IDXGISurface* = IID(Data1:0xcafcb56c'i32, Data2:0x6ac3, Data3:0x4889, Data4:[0xbf'u8, 0x47, 0x9e, 0x23, 0xbb, 0xd2, 0x60, 0xec])
const IID_IDXGISurface1* = IID(Data1:0x4ae63092'i32, Data2:0x6327, Data3:0x4c1b, Data4:[0x80'u8, 0xae, 0xbf, 0xe1, 0x2e, 0xa3, 0x2b, 0x86])
const IID_IDXGIOutput* = IID(Data1:0xae02eedb'i32, Data2:0xc735, Data3:0x4690, Data4:[0x8d'u8, 0x52, 0x5a, 0x8d, 0xc2, 0x02, 0x13, 0xaa])
const IID_IDXGIAdapter* = IID(Data1:0x2411e7e1'i32, Data2:0x12ac, Data3:0x4ccf, Data4:[0xbd'u8, 0x14, 0x97, 0x98, 0xe8, 0x53, 0x4d, 0xc0])
const IID_IDXGISwapChain* = IID(Data1:0x310d36a0'i32, Data2:0xd2e7, Data3:0x4c0a, Data4:[0xaa'u8, 0x04, 0x6a, 0x9d, 0x23, 0xb8, 0x88, 0x6a])
const IID_IDXGIFactory* = IID(Data1:0x7b7166ec'i32, Data2:0x21c7, Data3:0x44ae, Data4:[0xb2'u8, 0x1a, 0xc9, 0xae, 0x32, 0x1a, 0xe3, 0x69])
const IID_IDXGIDevice* = IID(Data1:0x54ec77fa'i32, Data2:0x1377, Data3:0x44e6, Data4:[0x8c'u8, 0x32, 0x88, 0xfd, 0x5f, 0x44, 0xc8, 0x4c])
const IID_IDXGIAdapter1* = IID(Data1:0x29038f61'i32, Data2:0x3839, Data3:0x4626, Data4:[0x91'u8, 0xfd, 0x08, 0x68, 0x79, 0x01, 0x1a, 0x05])
const IID_IDXGIDevice1* = IID(Data1:0x77db970f'i32, Data2:0x6276, Data3:0x48ba, Data4:[0xba'u8, 0x28, 0x07, 0x01, 0x43, 0xb4, 0x39, 0x2c])
const IID_IDXGIFactory1* = IID(Data1:0x770aae78'i32, Data2:0xf26f, Data3:0x4dba, Data4:[0xa8'u8, 0x29, 0x25, 0x3c, 0x83, 0xd1, 0xb3, 0x87])
type
    IDXGIObjectVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIObject, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIObject): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIObject): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIObject, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIObject, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIObject, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIObject, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
    IDXGIObject* = object
        lpVtbl*: ptr IDXGIObjectVtbl
    IDXGIDeviceSubObjectVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIDeviceSubObject, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIDeviceSubObject): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIDeviceSubObject): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIDeviceSubObject, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIDeviceSubObject, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIDeviceSubObject, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIDeviceSubObject, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGIDeviceSubObject, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
    IDXGIDeviceSubObject* = object
        lpVtbl*: ptr IDXGIDeviceSubObjectVtbl
    IDXGIResourceVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIResource, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIResource): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIResource): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIResource, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIResource, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIResource, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIResource, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGIResource, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
        GetSharedHandle*: proc (This:ptr IDXGIResource, pSharedHandle:ptr HANDLE): HRESULT {.stdcall.}
        GetUsage*: proc (This:ptr IDXGIResource, pUsage:ptr DXGI_USAGE): HRESULT {.stdcall.}
        SetEvictionPriority*: proc (This:ptr IDXGIResource, EvictionPriority:UINT): HRESULT {.stdcall.}
        GetEvictionPriority*: proc (This:ptr IDXGIResource, pEvictionPriority:ptr UINT): HRESULT {.stdcall.}
    IDXGIResource* = object
        lpVtbl*: ptr IDXGIResourceVtbl
    IDXGIKeyedMutexVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIKeyedMutex, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIKeyedMutex): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIKeyedMutex): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIKeyedMutex, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIKeyedMutex, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIKeyedMutex, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIKeyedMutex, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGIKeyedMutex, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
        AcquireSync*: proc (This:ptr IDXGIKeyedMutex, Key:UINT64, dwMilliseconds:DWORD): HRESULT {.stdcall.}
        ReleaseSync*: proc (This:ptr IDXGIKeyedMutex, Key:UINT64): HRESULT {.stdcall.}
    IDXGIKeyedMutex* = object
        lpVtbl*: ptr IDXGIKeyedMutexVtbl
    IDXGISurfaceVtbl* = object
        QueryInterface*: proc (This:ptr IDXGISurface, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGISurface): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGISurface): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGISurface, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGISurface, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGISurface, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGISurface, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGISurface, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGISurface, desc:ptr DXGI_SURFACE_DESC): HRESULT {.stdcall.}
        Map*: proc (This:ptr IDXGISurface, mapped_rect:ptr DXGI_MAPPED_RECT, flags:UINT): HRESULT {.stdcall.}
        Unmap*: proc (This:ptr IDXGISurface): HRESULT {.stdcall.}
    IDXGISurface* = object
        lpVtbl*: ptr IDXGISurfaceVtbl
    IDXGISurface1Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGISurface1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGISurface1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGISurface1): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGISurface1, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGISurface1, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGISurface1, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGISurface1, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGISurface1, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGISurface1, desc:ptr DXGI_SURFACE_DESC): HRESULT {.stdcall.}
        Map*: proc (This:ptr IDXGISurface1, mapped_rect:ptr DXGI_MAPPED_RECT, flags:UINT): HRESULT {.stdcall.}
        Unmap*: proc (This:ptr IDXGISurface1): HRESULT {.stdcall.}
        GetDC*: proc (This:ptr IDXGISurface1, discard1:BOOL, hdc:ptr HDC): HRESULT {.stdcall.}
        ReleaseDC*: proc (This:ptr IDXGISurface1, dirty_rect:ptr RECT): HRESULT {.stdcall.}
    IDXGISurface1* = object
        lpVtbl*: ptr IDXGISurface1Vtbl
    IDXGIOutputVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIOutput, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIOutput): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIOutput): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIOutput, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIOutput, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIOutput, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIOutput, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGIOutput, desc:ptr DXGI_OUTPUT_DESC): HRESULT {.stdcall.}
        GetDisplayModeList*: proc (This:ptr IDXGIOutput, format:DXGI_FORMAT, flags:UINT, mode_count:ptr UINT, desc:ptr DXGI_MODE_DESC): HRESULT {.stdcall.}
        FindClosestMatchingMode*: proc (This:ptr IDXGIOutput, mode:ptr DXGI_MODE_DESC, closest_match:ptr DXGI_MODE_DESC, device:pointer): HRESULT {.stdcall.}
        WaitForVBlank*: proc (This:ptr IDXGIOutput): HRESULT {.stdcall.}
        TakeOwnership*: proc (This:ptr IDXGIOutput, device:pointer, exclusive:BOOL): HRESULT {.stdcall.}
        ReleaseOwnership*: proc (This:ptr IDXGIOutput) {.stdcall.}
        GetGammaControlCapabilities*: proc (This:ptr IDXGIOutput, gamma_caps:ptr DXGI_GAMMA_CONTROL_CAPABILITIES): HRESULT {.stdcall.}
        SetGammaControl*: proc (This:ptr IDXGIOutput, gamma_control:ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        GetGammaControl*: proc (This:ptr IDXGIOutput, gamma_control:ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        SetDisplaySurface*: proc (This:ptr IDXGIOutput, surface:ptr IDXGISurface): HRESULT {.stdcall.}
        GetDisplaySurfaceData*: proc (This:ptr IDXGIOutput, surface:ptr IDXGISurface): HRESULT {.stdcall.}
        GetFrameStatistics*: proc (This:ptr IDXGIOutput, stats:ptr DXGI_FRAME_STATISTICS): HRESULT {.stdcall.}
    IDXGIOutput* = object
        lpVtbl*: ptr IDXGIOutputVtbl
    IDXGIAdapterVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIAdapter, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIAdapter): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIAdapter): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIAdapter, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIAdapter, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIAdapter, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIAdapter, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        EnumOutputs*: proc (This:ptr IDXGIAdapter, output_idx:UINT, output:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGIAdapter, desc:ptr DXGI_ADAPTER_DESC): HRESULT {.stdcall.}
        CheckInterfaceSupport*: proc (This:ptr IDXGIAdapter, guid:REFGUID, umd_version:ptr LARGE_INTEGER): HRESULT {.stdcall.}
    IDXGIAdapter* = object
        lpVtbl*: ptr IDXGIAdapterVtbl
    IDXGISwapChainVtbl* = object
        QueryInterface*: proc (This:ptr IDXGISwapChain, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGISwapChain): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGISwapChain): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGISwapChain, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGISwapChain, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGISwapChain, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGISwapChain, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGISwapChain, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
        Present*: proc (This:ptr IDXGISwapChain, sync_interval:UINT, flags:UINT): HRESULT {.stdcall.}
        GetBuffer*: proc (This:ptr IDXGISwapChain, buffer_idx:UINT, riid:ptr IID, surface:ptr pointer): HRESULT {.stdcall.}
        SetFullscreenState*: proc (This:ptr IDXGISwapChain, fullscreen:BOOL, target:ptr IDXGIOutput): HRESULT {.stdcall.}
        GetFullscreenState*: proc (This:ptr IDXGISwapChain, fullscreen:ptr BOOL, target:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGISwapChain, desc:ptr DXGI_SWAP_CHAIN_DESC): HRESULT {.stdcall.}
        ResizeBuffers*: proc (This:ptr IDXGISwapChain, buffer_count:UINT, width:UINT, height:UINT, format:DXGI_FORMAT, flags:UINT): HRESULT {.stdcall.}
        ResizeTarget*: proc (This:ptr IDXGISwapChain, target_mode_desc:ptr DXGI_MODE_DESC): HRESULT {.stdcall.}
        GetContainingOutput*: proc (This:ptr IDXGISwapChain, output:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        GetFrameStatistics*: proc (This:ptr IDXGISwapChain, stats:ptr DXGI_FRAME_STATISTICS): HRESULT {.stdcall.}
        GetLastPresentCount*: proc (This:ptr IDXGISwapChain, last_present_count:ptr UINT): HRESULT {.stdcall.}
    IDXGISwapChain* = object
        lpVtbl*: ptr IDXGISwapChainVtbl
        
    IDXGIFactoryVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIFactory, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIFactory): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIFactory): ULONG {.stdcall.}
        
        SetPrivateData*: proc (This:ptr IDXGIFactory, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIFactory, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIFactory, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIFactory, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        EnumAdapters*: proc (This:ptr IDXGIFactory, adapter_idx:UINT, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        
        MakeWindowAssociation*: proc (This:ptr IDXGIFactory, window:HWND, flags:UINT): HRESULT {.stdcall.}
        GetWindowAssociation*: proc (This:ptr IDXGIFactory, window:ptr HWND): HRESULT {.stdcall.}
        CreateSwapChain*: proc (This:ptr IDXGIFactory, device:pointer, desc:ptr DXGI_SWAP_CHAIN_DESC, swapchain:ptr ptr IDXGISwapChain): HRESULT {.stdcall.}
        CreateSoftwareAdapter*: proc (This:ptr IDXGIFactory, swrast:HMODULE, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        
    IDXGIFactory* = object
        lpVtbl*: ptr IDXGIFactoryVtbl
        
    IDXGIDeviceVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIDevice, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIDevice): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIDevice): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIDevice, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIDevice, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIDevice, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIDevice, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetAdapter*: proc (This:ptr IDXGIDevice, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        CreateSurface*: proc (This:ptr IDXGIDevice, desc:ptr DXGI_SURFACE_DESC, surface_count:UINT, usage:DXGI_USAGE, shared_resource:ptr DXGI_SHARED_RESOURCE, surface:ptr ptr IDXGISurface): HRESULT {.stdcall.}
        QueryResourceResidency*: proc (This:ptr IDXGIDevice, resources:ptr pointer, residency:ptr DXGI_RESIDENCY, resource_count:UINT): HRESULT {.stdcall.}
        SetGPUThreadPriority*: proc (This:ptr IDXGIDevice, priority:INT): HRESULT {.stdcall.}
        GetGPUThreadPriority*: proc (This:ptr IDXGIDevice, priority:ptr INT): HRESULT {.stdcall.}
    IDXGIDevice* = object
        lpVtbl*: ptr IDXGIDeviceVtbl
    IDXGIAdapter1Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIAdapter1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIAdapter1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIAdapter1): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIAdapter1, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIAdapter1, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIAdapter1, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIAdapter1, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        EnumOutputs*: proc (This:ptr IDXGIAdapter1, output_idx:UINT, output:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGIAdapter1, desc:ptr DXGI_ADAPTER_DESC): HRESULT {.stdcall.}
        CheckInterfaceSupport*: proc (This:ptr IDXGIAdapter1, guid:REFGUID, umd_version:ptr LARGE_INTEGER): HRESULT {.stdcall.}
        GetDesc1*: proc (This:ptr IDXGIAdapter1, pDesc:ptr DXGI_ADAPTER_DESC1): HRESULT {.stdcall.}
    IDXGIAdapter1* = object
        lpVtbl*: ptr IDXGIAdapter1Vtbl
    IDXGIDevice1Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIDevice1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIDevice1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIDevice1): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIDevice1, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIDevice1, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIDevice1, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIDevice1, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetAdapter*: proc (This:ptr IDXGIDevice1, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        CreateSurface*: proc (This:ptr IDXGIDevice1, desc:ptr DXGI_SURFACE_DESC, surface_count:UINT, usage:DXGI_USAGE, shared_resource:ptr DXGI_SHARED_RESOURCE, surface:ptr ptr IDXGISurface): HRESULT {.stdcall.}
        QueryResourceResidency*: proc (This:ptr IDXGIDevice1, resources:ptr pointer, residency:ptr DXGI_RESIDENCY, resource_count:UINT): HRESULT {.stdcall.}
        SetGPUThreadPriority*: proc (This:ptr IDXGIDevice1, priority:INT): HRESULT {.stdcall.}
        GetGPUThreadPriority*: proc (This:ptr IDXGIDevice1, priority:ptr INT): HRESULT {.stdcall.}
        SetMaximumFrameLatency*: proc (This:ptr IDXGIDevice1, MaxLatency:UINT): HRESULT {.stdcall.}
        GetMaximumFrameLatency*: proc (This:ptr IDXGIDevice1, pMaxLatency:ptr UINT): HRESULT {.stdcall.}
    IDXGIDevice1* = object
        lpVtbl*: ptr IDXGIDevice1Vtbl
    IDXGIFactory1Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIFactory1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIFactory1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIFactory1): ULONG {.stdcall.}
        
        SetPrivateData*: proc (This:ptr IDXGIFactory1, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIFactory1, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIFactory1, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIFactory1, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        
        EnumAdapters*: proc (This:ptr IDXGIFactory1, adapter_idx:UINT, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        MakeWindowAssociation*: proc (This:ptr IDXGIFactory1, window:HWND, flags:UINT): HRESULT {.stdcall.}
        GetWindowAssociation*: proc (This:ptr IDXGIFactory1, window:ptr HWND): HRESULT {.stdcall.}
        CreateSwapChain*: proc (This:ptr IDXGIFactory1, device:pointer, desc:ptr DXGI_SWAP_CHAIN_DESC, swapchain:ptr ptr IDXGISwapChain): HRESULT {.stdcall.}
        CreateSoftwareAdapter*: proc (This:ptr IDXGIFactory1, swrast:HMODULE, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        
        EnumAdapters1*: proc (This:ptr IDXGIFactory1, Adapter:UINT, ppAdapter:ptr ptr IDXGIAdapter1): HRESULT {.stdcall.}
        IsCurrent*: proc (This:ptr IDXGIFactory1): BOOL {.stdcall.}
    IDXGIFactory1* = object
        lpVtbl*: ptr IDXGIFactory1Vtbl

proc CreateDXGIFactory*(riid:ptr IID, factory:ptr ptr IDXGIFactory): HRESULT {.stdcall, importc.}
proc CreateDXGIFactory1*(riid:ptr IID, factory:ptr ptr IDXGIFactory1): HRESULT {.stdcall, importc.}
