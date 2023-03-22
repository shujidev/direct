import winim/lean
import dxgi, dxgi1_2, dxgiformat, dxgitype
type
  DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS* = enum
    DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_NOMINAL_RANGE = 0x1,
    DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_BT709 = 0x2,
    DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_xvYCC = 0x4
  DXGI_FRAME_PRESENTATION_MODE* = enum
    DXGI_FRAME_PRESENTATION_MODE_COMPOSED = 0,
    DXGI_FRAME_PRESENTATION_MODE_OVERLAY = 1,
    DXGI_FRAME_PRESENTATION_MODE_NONE = 2,
    DXGI_FRAME_PRESENTATION_MODE_COMPOSITION_FAILURE = 3
  DXGI_OVERLAY_SUPPORT_FLAG* = enum
    DXGI_OVERLAY_SUPPORT_FLAG_DIRECT = 0x1, DXGI_OVERLAY_SUPPORT_FLAG_SCALING = 0x2
  DXGI_MATRIX_3X2_F* {.bycopy.} = object
    m11*: cfloat
    m12*: cfloat
    m21*: cfloat
    m22*: cfloat
    m31*: cfloat
    m32*: cfloat

  DXGI_DECODE_SWAP_CHAIN_DESC* {.bycopy.} = object
    Flags*: UINT

  DXGI_FRAME_STATISTICS_MEDIA* {.bycopy.} = object
    PresentCount*: UINT
    PresentRefreshCount*: UINT
    SyncRefreshCount*: UINT
    SyncQPCTime*: LARGE_INTEGER
    SyncGPUTime*: LARGE_INTEGER
    CompositionMode*: DXGI_FRAME_PRESENTATION_MODE
    ApprovedPresentDuration*: UINT

const IID_IDXGIDevice3* = IID(Data1:0x6007896c'i32, Data2:0x3244, Data3:0x4afd, Data4:[0xbf'u8, 0x18, 0xa6, 0xd3, 0xbe, 0xda, 0x50, 0x23])
const IID_IDXGISwapChain2* = IID(Data1:0xa8be2ac4'i32, Data2:0x199f, Data3:0x4946, Data4:[0xb3'u8, 0x31, 0x79, 0x59, 0x9f, 0xb9, 0x8d, 0xe7])
const IID_IDXGIOutput2* = IID(Data1:0x595e39d1'i32, Data2:0x2724, Data3:0x4663, Data4:[0x99'u8, 0xb1, 0xda, 0x96, 0x9d, 0xe2, 0x83, 0x64])
const IID_IDXGIFactory3* = IID(Data1:0x25483823'i32, Data2:0xcd46, Data3:0x4c7d, Data4:[0x86'u8, 0xca, 0x47, 0xaa, 0x95, 0xb8, 0x37, 0xbd])
const IID_IDXGIDecodeSwapChain* = IID(Data1:0x2633066b'i32, Data2:0x4514, Data3:0x4c7a, Data4:[0x8f'u8, 0xd8, 0x12, 0xea, 0x98, 0x05, 0x9d, 0x18])
const IID_IDXGIFactoryMedia* = IID(Data1:0x41e7d1f2'i32, Data2:0xa591, Data3:0x4f7b, Data4:[0xa2'u8, 0xe5, 0xfa, 0x9c, 0x84, 0x3e, 0x1c, 0x12])
const IID_IDXGISwapChainMedia* = IID(Data1:0xdd95b90b'i32, Data2:0xf05f, Data3:0x4f6a, Data4:[0xbd'u8, 0x65, 0x25, 0xbf, 0xb2, 0x64, 0xbd, 0x84])
const IID_IDXGIOutput3* = IID(Data1:0x8a6bb301'i32, Data2:0x7e7e, Data3:0x41f4, Data4:[0xa8'u8, 0xe0, 0x5b, 0x32, 0xf7, 0xf9, 0x9b, 0x18])
type
    IDXGIDevice3Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIDevice3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIDevice3): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIDevice3): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIDevice3, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIDevice3, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIDevice3, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIDevice3, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetAdapter*: proc (This:ptr IDXGIDevice3, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        CreateSurface*: proc (This:ptr IDXGIDevice3, desc:ptr DXGI_SURFACE_DESC, surface_count:UINT, usage:DXGI_USAGE, shared_resource:ptr DXGI_SHARED_RESOURCE, surface:ptr ptr IDXGISurface): HRESULT {.stdcall.}
        QueryResourceResidency*: proc (This:ptr IDXGIDevice3, resources:ptr pointer, residency:ptr DXGI_RESIDENCY, resource_count:UINT): HRESULT {.stdcall.}
        SetGPUThreadPriority*: proc (This:ptr IDXGIDevice3, priority:INT): HRESULT {.stdcall.}
        GetGPUThreadPriority*: proc (This:ptr IDXGIDevice3, priority:ptr INT): HRESULT {.stdcall.}
        SetMaximumFrameLatency*: proc (This:ptr IDXGIDevice3, MaxLatency:UINT): HRESULT {.stdcall.}
        GetMaximumFrameLatency*: proc (This:ptr IDXGIDevice3, pMaxLatency:ptr UINT): HRESULT {.stdcall.}
        OfferResources*: proc (This:ptr IDXGIDevice3, NumResources:UINT, ppResources:ptr ptr IDXGIResource, Priority:DXGI_OFFER_RESOURCE_PRIORITY): HRESULT {.stdcall.}
        ReclaimResources*: proc (This:ptr IDXGIDevice3, NumResources:UINT, ppResources:ptr ptr IDXGIResource, pDiscarded:ptr BOOL): HRESULT {.stdcall.}
        EnqueueSetEvent*: proc (This:ptr IDXGIDevice3, hEvent:HANDLE): HRESULT {.stdcall.}
        Trim*: proc (This:ptr IDXGIDevice3) {.stdcall.}
    IDXGIDevice3* = object
        lpVtbl*: ptr IDXGIDevice3Vtbl
    IDXGISwapChain2Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGISwapChain2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGISwapChain2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGISwapChain2): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGISwapChain2, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGISwapChain2, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGISwapChain2, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGISwapChain2, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGISwapChain2, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
        Present*: proc (This:ptr IDXGISwapChain2, sync_interval:UINT, flags:UINT): HRESULT {.stdcall.}
        GetBuffer*: proc (This:ptr IDXGISwapChain2, buffer_idx:UINT, riid:ptr IID, surface:ptr pointer): HRESULT {.stdcall.}
        SetFullscreenState*: proc (This:ptr IDXGISwapChain2, fullscreen:BOOL, target:ptr IDXGIOutput): HRESULT {.stdcall.}
        GetFullscreenState*: proc (This:ptr IDXGISwapChain2, fullscreen:ptr BOOL, target:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGISwapChain2, desc:ptr DXGI_SWAP_CHAIN_DESC): HRESULT {.stdcall.}
        ResizeBuffers*: proc (This:ptr IDXGISwapChain2, buffer_count:UINT, width:UINT, height:UINT, format:DXGI_FORMAT, flags:UINT): HRESULT {.stdcall.}
        ResizeTarget*: proc (This:ptr IDXGISwapChain2, target_mode_desc:ptr DXGI_MODE_DESC): HRESULT {.stdcall.}
        GetContainingOutput*: proc (This:ptr IDXGISwapChain2, output:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        GetFrameStatistics*: proc (This:ptr IDXGISwapChain2, stats:ptr DXGI_FRAME_STATISTICS): HRESULT {.stdcall.}
        GetLastPresentCount*: proc (This:ptr IDXGISwapChain2, last_present_count:ptr UINT): HRESULT {.stdcall.}
        GetDesc1*: proc (This:ptr IDXGISwapChain2, pDesc:ptr DXGI_SWAP_CHAIN_DESC1): HRESULT {.stdcall.}
        GetFullscreenDesc*: proc (This:ptr IDXGISwapChain2, pDesc:ptr DXGI_SWAP_CHAIN_FULLSCREEN_DESC): HRESULT {.stdcall.}
        GetHwnd*: proc (This:ptr IDXGISwapChain2, pHwnd:ptr HWND): HRESULT {.stdcall.}
        GetCoreWindow*: proc (This:ptr IDXGISwapChain2, ref1iid:ptr IID, ppUnk:ptr pointer): HRESULT {.stdcall.}
        Present1*: proc (This:ptr IDXGISwapChain2, SyncInterval:UINT, PresentFlags:UINT, pPresentParameters:ptr DXGI_PRESENT_PARAMETERS): HRESULT {.stdcall.}
        IsTemporaryMonoSupported*: proc (This:ptr IDXGISwapChain2): BOOL {.stdcall.}
        GetRestrictToOutput*: proc (This:ptr IDXGISwapChain2, ppRestrictToOutput:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        SetBackgroundColor*: proc (This:ptr IDXGISwapChain2, pColor:ptr DXGI_RGBA): HRESULT {.stdcall.}
        GetBackgroundColor*: proc (This:ptr IDXGISwapChain2, pColor:ptr DXGI_RGBA): HRESULT {.stdcall.}
        SetRotation*: proc (This:ptr IDXGISwapChain2, Rotation:DXGI_MODE_ROTATION): HRESULT {.stdcall.}
        GetRotation*: proc (This:ptr IDXGISwapChain2, pRotation:ptr DXGI_MODE_ROTATION): HRESULT {.stdcall.}
        SetSourceSize*: proc (This:ptr IDXGISwapChain2, width:UINT, height:UINT): HRESULT {.stdcall.}
        GetSourceSize*: proc (This:ptr IDXGISwapChain2, width:ptr UINT, height:ptr UINT): HRESULT {.stdcall.}
        SetMaximumFrameLatency*: proc (This:ptr IDXGISwapChain2, max_latency:UINT): HRESULT {.stdcall.}
        GetMaximumFrameLatency*: proc (This:ptr IDXGISwapChain2, max_latency:ptr UINT): HRESULT {.stdcall.}
        GetFrameLatencyWaitableObject*: proc (This:ptr IDXGISwapChain2): HANDLE {.stdcall.}
        SetMatrixTransform*: proc (This:ptr IDXGISwapChain2, matrix:ptr DXGI_MATRIX_3X2_F): HRESULT {.stdcall.}
        GetMatrixTransform*: proc (This:ptr IDXGISwapChain2, matrix:ptr DXGI_MATRIX_3X2_F): HRESULT {.stdcall.}
    IDXGISwapChain2* = object
        lpVtbl*: ptr IDXGISwapChain2Vtbl
    IDXGIOutput2Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIOutput2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIOutput2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIOutput2): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIOutput2, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIOutput2, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIOutput2, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIOutput2, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGIOutput2, desc:ptr DXGI_OUTPUT_DESC): HRESULT {.stdcall.}
        GetDisplayModeList*: proc (This:ptr IDXGIOutput2, format:DXGI_FORMAT, flags:UINT, mode_count:ptr UINT, desc:ptr DXGI_MODE_DESC): HRESULT {.stdcall.}
        FindClosestMatchingMode*: proc (This:ptr IDXGIOutput2, mode:ptr DXGI_MODE_DESC, closest_match:ptr DXGI_MODE_DESC, device:pointer): HRESULT {.stdcall.}
        WaitForVBlank*: proc (This:ptr IDXGIOutput2): HRESULT {.stdcall.}
        TakeOwnership*: proc (This:ptr IDXGIOutput2, device:pointer, exclusive:BOOL): HRESULT {.stdcall.}
        ReleaseOwnership*: proc (This:ptr IDXGIOutput2) {.stdcall.}
        GetGammaControlCapabilities*: proc (This:ptr IDXGIOutput2, gamma_caps:ptr DXGI_GAMMA_CONTROL_CAPABILITIES): HRESULT {.stdcall.}
        SetGammaControl*: proc (This:ptr IDXGIOutput2, gamma_control:ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        GetGammaControl*: proc (This:ptr IDXGIOutput2, gamma_control:ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        SetDisplaySurface*: proc (This:ptr IDXGIOutput2, surface:ptr IDXGISurface): HRESULT {.stdcall.}
        GetDisplaySurfaceData*: proc (This:ptr IDXGIOutput2, surface:ptr IDXGISurface): HRESULT {.stdcall.}
        GetFrameStatistics*: proc (This:ptr IDXGIOutput2, stats:ptr DXGI_FRAME_STATISTICS): HRESULT {.stdcall.}
        GetDisplayModeList1*: proc (This:ptr IDXGIOutput2, enum_format:DXGI_FORMAT, flags:UINT, num_modes:ptr UINT, desc:ptr DXGI_MODE_DESC1): HRESULT {.stdcall.}
        FindClosestMatchingMode1*: proc (This:ptr IDXGIOutput2, mode_to_match:ptr DXGI_MODE_DESC1, closest_match:ptr DXGI_MODE_DESC1, concerned_device:pointer): HRESULT {.stdcall.}
        GetDisplaySurfaceData1*: proc (This:ptr IDXGIOutput2, destination:ptr IDXGIResource): HRESULT {.stdcall.}
        DuplicateOutput*: proc (This:ptr IDXGIOutput2, device:pointer, output_duplication:ptr ptr IDXGIOutputDuplication): HRESULT {.stdcall.}
        SupportsOverlays*: proc (This:ptr IDXGIOutput2): BOOL {.stdcall.}
    IDXGIOutput2* = object
        lpVtbl*: ptr IDXGIOutput2Vtbl
    IDXGIFactory3Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIFactory3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIFactory3): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIFactory3): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIFactory3, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIFactory3, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIFactory3, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIFactory3, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        EnumAdapters*: proc (This:ptr IDXGIFactory3, adapter_idx:UINT, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        MakeWindowAssociation*: proc (This:ptr IDXGIFactory3, window:HWND, flags:UINT): HRESULT {.stdcall.}
        GetWindowAssociation*: proc (This:ptr IDXGIFactory3, window:ptr HWND): HRESULT {.stdcall.}
        CreateSwapChain*: proc (This:ptr IDXGIFactory3, device:pointer, desc:ptr DXGI_SWAP_CHAIN_DESC, swapchain:ptr ptr IDXGISwapChain): HRESULT {.stdcall.}
        CreateSoftwareAdapter*: proc (This:ptr IDXGIFactory3, swrast:HMODULE, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        EnumAdapters1*: proc (This:ptr IDXGIFactory3, Adapter:UINT, ppAdapter:ptr ptr IDXGIAdapter1): HRESULT {.stdcall.}
        IsCurrent*: proc (This:ptr IDXGIFactory3): BOOL {.stdcall.}
        IsWindowedStereoEnabled*: proc (This:ptr IDXGIFactory3): BOOL {.stdcall.}
        CreateSwapChainForHwnd*: proc (This:ptr IDXGIFactory3, pDevice:pointer, hWnd:HWND, pDesc:ptr DXGI_SWAP_CHAIN_DESC1, pFullscreenDesc:ptr DXGI_SWAP_CHAIN_FULLSCREEN_DESC, pRestrictToOutput:ptr IDXGIOutput, ppSwapChain:ptr ptr IDXGISwapChain1): HRESULT {.stdcall.}
        CreateSwapChainForCoreWindow*: proc (This:ptr IDXGIFactory3, pDevice:pointer, pWindow:pointer, pDesc:ptr DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput:ptr IDXGIOutput, ppSwapChain:ptr ptr IDXGISwapChain1): HRESULT {.stdcall.}
        GetSharedResourceAdapterLuid*: proc (This:ptr IDXGIFactory3, hResource:HANDLE, pLuid:ptr LUID): HRESULT {.stdcall.}
        RegisterStereoStatusWindow*: proc (This:ptr IDXGIFactory3, WindowHandle:HWND, wMsg:UINT, pdwCookie:ptr DWORD): HRESULT {.stdcall.}
        RegisterStereoStatusEvent*: proc (This:ptr IDXGIFactory3, hEvent:HANDLE, pdwCookie:ptr DWORD): HRESULT {.stdcall.}
        UnregisterStereoStatus*: proc (This:ptr IDXGIFactory3, dwCookie:DWORD) {.stdcall.}
        RegisterOcclusionStatusWindow*: proc (This:ptr IDXGIFactory3, WindowHandle:HWND, wMsg:UINT, pdwCookie:ptr DWORD): HRESULT {.stdcall.}
        RegisterOcclusionStatusEvent*: proc (This:ptr IDXGIFactory3, hEvent:HANDLE, pdwCookie:ptr DWORD): HRESULT {.stdcall.}
        UnregisterOcclusionStatus*: proc (This:ptr IDXGIFactory3, dwCookie:DWORD) {.stdcall.}
        CreateSwapChainForComposition*: proc (This:ptr IDXGIFactory3, pDevice:pointer, pDesc:ptr DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput:ptr IDXGIOutput, ppSwapChain:ptr ptr IDXGISwapChain1): HRESULT {.stdcall.}
        GetCreationFlags*: proc (This:ptr IDXGIFactory3): UINT {.stdcall.}
    IDXGIFactory3* = object
        lpVtbl*: ptr IDXGIFactory3Vtbl
    IDXGIDecodeSwapChainVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIDecodeSwapChain, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIDecodeSwapChain): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIDecodeSwapChain): ULONG {.stdcall.}
        PresentBuffer*: proc (This:ptr IDXGIDecodeSwapChain, buffer_to_present:UINT, sync_interval:UINT, flags:UINT): HRESULT {.stdcall.}
        SetSourceRect*: proc (This:ptr IDXGIDecodeSwapChain, rect:ptr RECT): HRESULT {.stdcall.}
        SetTargetRect*: proc (This:ptr IDXGIDecodeSwapChain, rect:ptr RECT): HRESULT {.stdcall.}
        SetDestSize*: proc (This:ptr IDXGIDecodeSwapChain, width:UINT, height:UINT): HRESULT {.stdcall.}
        GetSourceRect*: proc (This:ptr IDXGIDecodeSwapChain, rect:ptr RECT): HRESULT {.stdcall.}
        GetTargetRect*: proc (This:ptr IDXGIDecodeSwapChain, rect:ptr RECT): HRESULT {.stdcall.}
        GetDestSize*: proc (This:ptr IDXGIDecodeSwapChain, width:ptr UINT, height:ptr UINT): HRESULT {.stdcall.}
        SetColorSpace*: proc (This:ptr IDXGIDecodeSwapChain, colorspace:DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS): HRESULT {.stdcall.}
        GetColorSpace*: proc (This:ptr IDXGIDecodeSwapChain): DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS {.stdcall.}
    IDXGIDecodeSwapChain* = object
        lpVtbl*: ptr IDXGIDecodeSwapChainVtbl
    IDXGIFactoryMediaVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIFactoryMedia, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIFactoryMedia): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIFactoryMedia): ULONG {.stdcall.}
        CreateSwapChainForCompositionSurfaceHandle*: proc (This:ptr IDXGIFactoryMedia, device:pointer, surface:HANDLE, desc:ptr DXGI_SWAP_CHAIN_DESC1, restrict_to_output:ptr IDXGIOutput, swapchain:ptr ptr IDXGISwapChain1): HRESULT {.stdcall.}
        CreateDecodeSwapChainForCompositionSurfaceHandle*: proc (This:ptr IDXGIFactoryMedia, device:pointer, surface:HANDLE, desc:ptr DXGI_DECODE_SWAP_CHAIN_DESC, yuv_decode_buffers:ptr IDXGIResource, restrict_to_output:ptr IDXGIOutput, swapchain:ptr ptr IDXGIDecodeSwapChain): HRESULT {.stdcall.}
    IDXGIFactoryMedia* = object
        lpVtbl*: ptr IDXGIFactoryMediaVtbl
    IDXGISwapChainMediaVtbl* = object
        QueryInterface*: proc (This:ptr IDXGISwapChainMedia, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGISwapChainMedia): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGISwapChainMedia): ULONG {.stdcall.}
        GetFrameStatisticsMedia*: proc (This:ptr IDXGISwapChainMedia, stats:ptr DXGI_FRAME_STATISTICS_MEDIA): HRESULT {.stdcall.}
        SetPresentDuration*: proc (This:ptr IDXGISwapChainMedia, duration:UINT): HRESULT {.stdcall.}
        CheckPresentDurationSupport*: proc (This:ptr IDXGISwapChainMedia, desired_present_duration:UINT, closest_smaller_present_duration:ptr UINT, closest_larger_present_duration:ptr UINT): HRESULT {.stdcall.}
    IDXGISwapChainMedia* = object
        lpVtbl*: ptr IDXGISwapChainMediaVtbl
    IDXGIOutput3Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIOutput3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIOutput3): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIOutput3): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIOutput3, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIOutput3, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIOutput3, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIOutput3, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGIOutput3, desc:ptr DXGI_OUTPUT_DESC): HRESULT {.stdcall.}
        GetDisplayModeList*: proc (This:ptr IDXGIOutput3, format:DXGI_FORMAT, flags:UINT, mode_count:ptr UINT, desc:ptr DXGI_MODE_DESC): HRESULT {.stdcall.}
        FindClosestMatchingMode*: proc (This:ptr IDXGIOutput3, mode:ptr DXGI_MODE_DESC, closest_match:ptr DXGI_MODE_DESC, device:pointer): HRESULT {.stdcall.}
        WaitForVBlank*: proc (This:ptr IDXGIOutput3): HRESULT {.stdcall.}
        TakeOwnership*: proc (This:ptr IDXGIOutput3, device:pointer, exclusive:BOOL): HRESULT {.stdcall.}
        ReleaseOwnership*: proc (This:ptr IDXGIOutput3) {.stdcall.}
        GetGammaControlCapabilities*: proc (This:ptr IDXGIOutput3, gamma_caps:ptr DXGI_GAMMA_CONTROL_CAPABILITIES): HRESULT {.stdcall.}
        SetGammaControl*: proc (This:ptr IDXGIOutput3, gamma_control:ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        GetGammaControl*: proc (This:ptr IDXGIOutput3, gamma_control:ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        SetDisplaySurface*: proc (This:ptr IDXGIOutput3, surface:ptr IDXGISurface): HRESULT {.stdcall.}
        GetDisplaySurfaceData*: proc (This:ptr IDXGIOutput3, surface:ptr IDXGISurface): HRESULT {.stdcall.}
        GetFrameStatistics*: proc (This:ptr IDXGIOutput3, stats:ptr DXGI_FRAME_STATISTICS): HRESULT {.stdcall.}
        GetDisplayModeList1*: proc (This:ptr IDXGIOutput3, enum_format:DXGI_FORMAT, flags:UINT, num_modes:ptr UINT, desc:ptr DXGI_MODE_DESC1): HRESULT {.stdcall.}
        FindClosestMatchingMode1*: proc (This:ptr IDXGIOutput3, mode_to_match:ptr DXGI_MODE_DESC1, closest_match:ptr DXGI_MODE_DESC1, concerned_device:pointer): HRESULT {.stdcall.}
        GetDisplaySurfaceData1*: proc (This:ptr IDXGIOutput3, destination:ptr IDXGIResource): HRESULT {.stdcall.}
        DuplicateOutput*: proc (This:ptr IDXGIOutput3, device:pointer, output_duplication:ptr ptr IDXGIOutputDuplication): HRESULT {.stdcall.}
        SupportsOverlays*: proc (This:ptr IDXGIOutput3): BOOL {.stdcall.}
        CheckOverlaySupport*: proc (This:ptr IDXGIOutput3, enum_format:DXGI_FORMAT, concerned_device:pointer, flags:ptr UINT): HRESULT {.stdcall.}
    IDXGIOutput3* = object
        lpVtbl*: ptr IDXGIOutput3Vtbl

proc CreateDXGIFactory2*(flags:UINT, iid:ptr IID, factory:ptr ptr IDXGIFactory2): HRESULT {.stdcall, importc.}
proc DXGIGetDebugInterface1*(flags:UINT, iid:ptr IID, debug:ptr pointer): HRESULT {.stdcall, importc.}
