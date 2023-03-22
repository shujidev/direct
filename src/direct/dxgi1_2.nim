import winim/lean
import dxgi, dxgicommon, dxgiformat, dxgitype
type
  DXGI_OFFER_RESOURCE_PRIORITY* = enum
    DXGI_OFFER_RESOURCE_PRIORITY_LOW = 1, DXGI_OFFER_RESOURCE_PRIORITY_NORMAL = 2,
    DXGI_OFFER_RESOURCE_PRIORITY_HIGH = 3
  DXGI_ALPHA_MODE* = enum
    DXGI_ALPHA_MODE_UNSPECIFIED = 0, DXGI_ALPHA_MODE_PREMULTIPLIED = 1,
    DXGI_ALPHA_MODE_STRAIGHT = 2, DXGI_ALPHA_MODE_IGNORE = 3,
    DXGI_ALPHA_MODE_FORCE_DWORD = 0xffffffff
  DXGI_OUTDUPL_POINTER_SHAPE_TYPE* = enum
    DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MONOCHROME = 0x1,
    DXGI_OUTDUPL_POINTER_SHAPE_TYPE_COLOR = 0x2,
    DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MASKED_COLOR = 0x4
  DXGI_SCALING* = enum
    DXGI_SCALING_STRETCH = 0, DXGI_SCALING_NONE = 1,
    DXGI_SCALING_ASPECT_RATIO_STRETCH = 2
  DXGI_GRAPHICS_PREEMPTION_GRANULARITY* = enum
    DXGI_GRAPHICS_PREEMPTION_DMA_BUFFER_BOUNDARY = 0,
    DXGI_GRAPHICS_PREEMPTION_PRIMITIVE_BOUNDARY = 1,
    DXGI_GRAPHICS_PREEMPTION_TRIANGLE_BOUNDARY = 2,
    DXGI_GRAPHICS_PREEMPTION_PIXEL_BOUNDARY = 3,
    DXGI_GRAPHICS_PREEMPTION_INSTRUCTION_BOUNDARY = 4
  DXGI_COMPUTE_PREEMPTION_GRANULARITY* = enum
    DXGI_COMPUTE_PREEMPTION_DMA_BUFFER_BOUNDARY = 0,
    DXGI_COMPUTE_PREEMPTION_DISPATCH_BOUNDARY = 1,
    DXGI_COMPUTE_PREEMPTION_THREAD_GROUP_BOUNDARY = 2,
    DXGI_COMPUTE_PREEMPTION_THREAD_BOUNDARY = 3,
    DXGI_COMPUTE_PREEMPTION_INSTRUCTION_BOUNDARY = 4
  DXGI_OUTDUPL_MOVE_RECT* {.bycopy.} = object
    SourcePoint*: POINT
    DestinationRect*: RECT

  DXGI_OUTDUPL_DESC* {.bycopy.} = object
    ModeDesc*: DXGI_MODE_DESC
    Rotation*: DXGI_MODE_ROTATION
    DesktopImageInSystemMemory*: WINBOOL

  DXGI_OUTDUPL_POINTER_POSITION* {.bycopy.} = object
    Position*: POINT
    Visible*: WINBOOL

  DXGI_OUTDUPL_POINTER_SHAPE_INFO* {.bycopy.} = object
    Type*: UINT
    Width*: UINT
    Height*: UINT
    Pitch*: UINT
    HotSpot*: POINT

  DXGI_OUTDUPL_FRAME_INFO* {.bycopy.} = object
    LastPresentTime*: LARGE_INTEGER
    LastMouseUpdateTime*: LARGE_INTEGER
    AccumulatedFrames*: UINT
    RectsCoalesced*: WINBOOL
    ProtectedContentMaskedOut*: WINBOOL
    PointerPosition*: DXGI_OUTDUPL_POINTER_POSITION
    TotalMetadataBufferSize*: UINT
    PointerShapeBufferSize*: UINT

  DXGI_MODE_DESC1* {.bycopy.} = object
    Width*: UINT
    Height*: UINT
    RefreshRate*: DXGI_RATIONAL
    Format*: DXGI_FORMAT
    ScanlineOrdering*: DXGI_MODE_SCANLINE_ORDER
    Scaling*: DXGI_MODE_SCALING
    Stereo*: WINBOOL

  DXGI_SWAP_CHAIN_DESC1* {.bycopy.} = object
    Width*: UINT
    Height*: UINT
    Format*: DXGI_FORMAT
    Stereo*: WINBOOL
    SampleDesc*: DXGI_SAMPLE_DESC
    BufferUsage*: DXGI_USAGE
    BufferCount*: UINT
    Scaling*: DXGI_SCALING
    SwapEffect*: DXGI_SWAP_EFFECT
    AlphaMode*: DXGI_ALPHA_MODE
    Flags*: UINT

  DXGI_SWAP_CHAIN_FULLSCREEN_DESC* {.bycopy.} = object
    RefreshRate*: DXGI_RATIONAL
    ScanlineOrdering*: DXGI_MODE_SCANLINE_ORDER
    Scaling*: DXGI_MODE_SCALING
    Windowed*: WINBOOL

  DXGI_PRESENT_PARAMETERS* {.bycopy.} = object
    DirtyRectsCount*: UINT
    pDirtyRects*: ptr RECT
    pScrollRect*: ptr RECT
    pScrollOffset*: ptr POINT

  DXGI_ADAPTER_DESC2* {.bycopy.} = object
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
    GraphicsPreemptionGranularity*: DXGI_GRAPHICS_PREEMPTION_GRANULARITY
    ComputePreemptionGranularity*: DXGI_COMPUTE_PREEMPTION_GRANULARITY


const IID_IDXGIOutputDuplication* = IID(Data1:0x191cfac3'i32, Data2:0xa341, Data3:0x470d, Data4:[0xb2'u8, 0x6e, 0xa8, 0x64, 0xf4, 0x28, 0x31, 0x9c])
const IID_IDXGISurface2* = IID(Data1:0xaba496dd'i32, Data2:0xb617, Data3:0x4cb8, Data4:[0xa8'u8, 0x66, 0xbc, 0x44, 0xd7, 0xeb, 0x1f, 0xa2])
const IID_IDXGIResource1* = IID(Data1:0x30961379'i32, Data2:0x4609, Data3:0x4a41, Data4:[0x99'u8, 0x8e, 0x54, 0xfe, 0x56, 0x7e, 0xe0, 0xc1])
const IID_IDXGIDisplayControl* = IID(Data1:0xea9dbf1a'i32, Data2:0xc88e, Data3:0x4486, Data4:[0x85'u8, 0x4a, 0x98, 0xaa, 0x01, 0x38, 0xf3, 0x0c])
const IID_IDXGIDevice2* = IID(Data1:0x05008617'i32, Data2:0xfbfd, Data3:0x4051, Data4:[0xa7'u8, 0x90, 0x14, 0x48, 0x84, 0xb4, 0xf6, 0xa9])
const IID_IDXGISwapChain1* = IID(Data1:0x790a45f7'i32, Data2:0x0d42, Data3:0x4876, Data4:[0x98'u8, 0x3a, 0x0a, 0x55, 0xcf, 0xe6, 0xf4, 0xaa])
const IID_IDXGIFactory2* = IID(Data1:0x50c83a1c'i32, Data2:0xe072, Data3:0x4c48, Data4:[0x87'u8, 0xb0, 0x36, 0x30, 0xfa, 0x36, 0xa6, 0xd0])
const IID_IDXGIAdapter2* = IID(Data1:0x0aa1ae0a'i32, Data2:0xfa0e, Data3:0x4b84, Data4:[0x86'u8, 0x44, 0xe0, 0x5f, 0xf8, 0xe5, 0xac, 0xb5])
const IID_IDXGIOutput1* = IID(Data1:0x00cddea8'i32, Data2:0x939b, Data3:0x4b83, Data4:[0xa3'u8, 0x40, 0xa6, 0x85, 0x22, 0x66, 0x66, 0xcc])
type
    IDXGIOutputDuplicationVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIOutputDuplication, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIOutputDuplication): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIOutputDuplication): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIOutputDuplication, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIOutputDuplication, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIOutputDuplication, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIOutputDuplication, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGIOutputDuplication, desc:ptr DXGI_OUTDUPL_DESC) {.stdcall.}
        AcquireNextFrame*: proc (This:ptr IDXGIOutputDuplication, timeout_in_milliseconds:UINT, frame_info:ptr DXGI_OUTDUPL_FRAME_INFO, desktop_resource:ptr ptr IDXGIResource): HRESULT {.stdcall.}
        GetFrameDirtyRects*: proc (This:ptr IDXGIOutputDuplication, dirty_rects_buffer_size:UINT, dirty_rects_buffer:ptr RECT, dirty_rects_buffer_size_required:ptr UINT): HRESULT {.stdcall.}
        GetFrameMoveRects*: proc (This:ptr IDXGIOutputDuplication, move_rects_buffer_size:UINT, move_rect_buffer:ptr DXGI_OUTDUPL_MOVE_RECT, move_rects_buffer_size_required:ptr UINT): HRESULT {.stdcall.}
        GetFramePointerShape*: proc (This:ptr IDXGIOutputDuplication, pointer_shape_buffer_size:UINT, pointer_shape_buffer:pointer, pointer_shape_buffer_size_required:ptr UINT, pointer_shape_info:ptr DXGI_OUTDUPL_POINTER_SHAPE_INFO): HRESULT {.stdcall.}
        MapDesktopSurface*: proc (This:ptr IDXGIOutputDuplication, locked_rect:ptr DXGI_MAPPED_RECT): HRESULT {.stdcall.}
        UnMapDesktopSurface*: proc (This:ptr IDXGIOutputDuplication): HRESULT {.stdcall.}
        ReleaseFrame*: proc (This:ptr IDXGIOutputDuplication): HRESULT {.stdcall.}
    IDXGIOutputDuplication* = object
        lpVtbl*: ptr IDXGIOutputDuplicationVtbl
    IDXGISurface2Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGISurface2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGISurface2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGISurface2): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGISurface2, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGISurface2, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGISurface2, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGISurface2, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGISurface2, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGISurface2, desc:ptr DXGI_SURFACE_DESC): HRESULT {.stdcall.}
        Map*: proc (This:ptr IDXGISurface2, mapped_rect:ptr DXGI_MAPPED_RECT, flags:UINT): HRESULT {.stdcall.}
        Unmap*: proc (This:ptr IDXGISurface2): HRESULT {.stdcall.}
        GetDC*: proc (This:ptr IDXGISurface2, discard1:BOOL, hdc:ptr HDC): HRESULT {.stdcall.}
        ReleaseDC*: proc (This:ptr IDXGISurface2, dirty_rect:ptr RECT): HRESULT {.stdcall.}
        GetResource*: proc (This:ptr IDXGISurface2, iid:ptr IID, parent_resource:ptr pointer, subresource_idx:ptr UINT): HRESULT {.stdcall.}
    IDXGISurface2* = object
        lpVtbl*: ptr IDXGISurface2Vtbl
    IDXGIResource1Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIResource1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIResource1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIResource1): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIResource1, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIResource1, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIResource1, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIResource1, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGIResource1, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
        GetSharedHandle*: proc (This:ptr IDXGIResource1, pSharedHandle:ptr HANDLE): HRESULT {.stdcall.}
        GetUsage*: proc (This:ptr IDXGIResource1, pUsage:ptr DXGI_USAGE): HRESULT {.stdcall.}
        SetEvictionPriority*: proc (This:ptr IDXGIResource1, EvictionPriority:UINT): HRESULT {.stdcall.}
        GetEvictionPriority*: proc (This:ptr IDXGIResource1, pEvictionPriority:ptr UINT): HRESULT {.stdcall.}
        CreateSubresourceSurface*: proc (This:ptr IDXGIResource1, index:UINT, surface:ptr ptr IDXGISurface2): HRESULT {.stdcall.}
        CreateSharedHandle*: proc (This:ptr IDXGIResource1, attributes:ptr SECURITY_ATTRIBUTES, access:DWORD, name:ptr WCHAR, handle:ptr HANDLE): HRESULT {.stdcall.}
    IDXGIResource1* = object
        lpVtbl*: ptr IDXGIResource1Vtbl
    IDXGIDisplayControlVtbl* = object
        QueryInterface*: proc (This:ptr IDXGIDisplayControl, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIDisplayControl): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIDisplayControl): ULONG {.stdcall.}
        IsStereoEnabled*: proc (This:ptr IDXGIDisplayControl): BOOL {.stdcall.}
        SetStereoEnabled*: proc (This:ptr IDXGIDisplayControl, enabled:BOOL) {.stdcall.}
    IDXGIDisplayControl* = object
        lpVtbl*: ptr IDXGIDisplayControlVtbl
    IDXGIDevice2Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIDevice2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIDevice2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIDevice2): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIDevice2, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIDevice2, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIDevice2, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIDevice2, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetAdapter*: proc (This:ptr IDXGIDevice2, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        CreateSurface*: proc (This:ptr IDXGIDevice2, desc:ptr DXGI_SURFACE_DESC, surface_count:UINT, usage:DXGI_USAGE, shared_resource:ptr DXGI_SHARED_RESOURCE, surface:ptr ptr IDXGISurface): HRESULT {.stdcall.}
        QueryResourceResidency*: proc (This:ptr IDXGIDevice2, resources:ptr pointer, residency:ptr DXGI_RESIDENCY, resource_count:UINT): HRESULT {.stdcall.}
        SetGPUThreadPriority*: proc (This:ptr IDXGIDevice2, priority:INT): HRESULT {.stdcall.}
        GetGPUThreadPriority*: proc (This:ptr IDXGIDevice2, priority:ptr INT): HRESULT {.stdcall.}
        SetMaximumFrameLatency*: proc (This:ptr IDXGIDevice2, MaxLatency:UINT): HRESULT {.stdcall.}
        GetMaximumFrameLatency*: proc (This:ptr IDXGIDevice2, pMaxLatency:ptr UINT): HRESULT {.stdcall.}
        OfferResources*: proc (This:ptr IDXGIDevice2, NumResources:UINT, ppResources:ptr ptr IDXGIResource, Priority:DXGI_OFFER_RESOURCE_PRIORITY): HRESULT {.stdcall.}
        ReclaimResources*: proc (This:ptr IDXGIDevice2, NumResources:UINT, ppResources:ptr ptr IDXGIResource, pDiscarded:ptr BOOL): HRESULT {.stdcall.}
        EnqueueSetEvent*: proc (This:ptr IDXGIDevice2, hEvent:HANDLE): HRESULT {.stdcall.}
    IDXGIDevice2* = object
        lpVtbl*: ptr IDXGIDevice2Vtbl
    IDXGISwapChain1Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGISwapChain1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGISwapChain1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGISwapChain1): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGISwapChain1, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGISwapChain1, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGISwapChain1, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGISwapChain1, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr IDXGISwapChain1, riid:ptr IID, device:ptr pointer): HRESULT {.stdcall.}
        Present*: proc (This:ptr IDXGISwapChain1, sync_interval:UINT, flags:UINT): HRESULT {.stdcall.}
        GetBuffer*: proc (This:ptr IDXGISwapChain1, buffer_idx:UINT, riid:ptr IID, surface:ptr pointer): HRESULT {.stdcall.}
        SetFullscreenState*: proc (This:ptr IDXGISwapChain1, fullscreen:BOOL, target:ptr IDXGIOutput): HRESULT {.stdcall.}
        GetFullscreenState*: proc (This:ptr IDXGISwapChain1, fullscreen:ptr BOOL, target:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGISwapChain1, desc:ptr DXGI_SWAP_CHAIN_DESC): HRESULT {.stdcall.}
        ResizeBuffers*: proc (This:ptr IDXGISwapChain1, buffer_count:UINT, width:UINT, height:UINT, format:DXGI_FORMAT, flags:UINT): HRESULT {.stdcall.}
        ResizeTarget*: proc (This:ptr IDXGISwapChain1, target_mode_desc:ptr DXGI_MODE_DESC): HRESULT {.stdcall.}
        GetContainingOutput*: proc (This:ptr IDXGISwapChain1, output:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        GetFrameStatistics*: proc (This:ptr IDXGISwapChain1, stats:ptr DXGI_FRAME_STATISTICS): HRESULT {.stdcall.}
        GetLastPresentCount*: proc (This:ptr IDXGISwapChain1, last_present_count:ptr UINT): HRESULT {.stdcall.}
        GetDesc1*: proc (This:ptr IDXGISwapChain1, pDesc:ptr DXGI_SWAP_CHAIN_DESC1): HRESULT {.stdcall.}
        GetFullscreenDesc*: proc (This:ptr IDXGISwapChain1, pDesc:ptr DXGI_SWAP_CHAIN_FULLSCREEN_DESC): HRESULT {.stdcall.}
        GetHwnd*: proc (This:ptr IDXGISwapChain1, pHwnd:ptr HWND): HRESULT {.stdcall.}
        GetCoreWindow*: proc (This:ptr IDXGISwapChain1, ref1iid:ptr IID, ppUnk:ptr pointer): HRESULT {.stdcall.}
        Present1*: proc (This:ptr IDXGISwapChain1, SyncInterval:UINT, PresentFlags:UINT, pPresentParameters:ptr DXGI_PRESENT_PARAMETERS): HRESULT {.stdcall.}
        IsTemporaryMonoSupported*: proc (This:ptr IDXGISwapChain1): BOOL {.stdcall.}
        GetRestrictToOutput*: proc (This:ptr IDXGISwapChain1, ppRestrictToOutput:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        SetBackgroundColor*: proc (This:ptr IDXGISwapChain1, pColor:ptr DXGI_RGBA): HRESULT {.stdcall.}
        GetBackgroundColor*: proc (This:ptr IDXGISwapChain1, pColor:ptr DXGI_RGBA): HRESULT {.stdcall.}
        SetRotation*: proc (This:ptr IDXGISwapChain1, Rotation:DXGI_MODE_ROTATION): HRESULT {.stdcall.}
        GetRotation*: proc (This:ptr IDXGISwapChain1, pRotation:ptr DXGI_MODE_ROTATION): HRESULT {.stdcall.}
    IDXGISwapChain1* = object
        lpVtbl*: ptr IDXGISwapChain1Vtbl
    IDXGIFactory2Vtbl* = object
        #IUnknown
        QueryInterface*: proc (This:ptr IDXGIFactory2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIFactory2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIFactory2): ULONG {.stdcall.}
        #IDXGIObject
        SetPrivateData*: proc (This:ptr IDXGIFactory2, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIFactory2, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIFactory2, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIFactory2, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        #IDXGIFactory
        EnumAdapters*: proc (This:ptr IDXGIFactory2, adapter_idx:UINT, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        MakeWindowAssociation*: proc (This:ptr IDXGIFactory2, window:HWND, flags:UINT): HRESULT {.stdcall.}
        GetWindowAssociation*: proc (This:ptr IDXGIFactory2, window:ptr HWND): HRESULT {.stdcall.}
        CreateSwapChain*: proc (This:ptr IDXGIFactory2, device:pointer, desc:ptr DXGI_SWAP_CHAIN_DESC, swapchain:ptr ptr IDXGISwapChain): HRESULT {.stdcall.}
        CreateSoftwareAdapter*: proc (This:ptr IDXGIFactory2, swrast:HMODULE, adapter:ptr ptr IDXGIAdapter): HRESULT {.stdcall.}
        #IDXGIFactory1
        EnumAdapters1*: proc (This:ptr IDXGIFactory2, Adapter:UINT, ppAdapter:ptr ptr IDXGIAdapter1): HRESULT {.stdcall.}
        IsCurrent*: proc (This:ptr IDXGIFactory2): BOOL {.stdcall.}
        #IDXGIFactory2
        IsWindowedStereoEnabled*: proc (This:ptr IDXGIFactory2): BOOL {.stdcall.}
        CreateSwapChainForHwnd*: proc (This:ptr IDXGIFactory2, pDevice:pointer, hWnd:HWND, pDesc:ptr DXGI_SWAP_CHAIN_DESC1, pFullscreenDesc:ptr DXGI_SWAP_CHAIN_FULLSCREEN_DESC, pRestrictToOutput:ptr IDXGIOutput, ppSwapChain:ptr ptr IDXGISwapChain1): HRESULT {.stdcall.}
        CreateSwapChainForCoreWindow*: proc (This:ptr IDXGIFactory2, pDevice:pointer, pWindow:pointer, pDesc:ptr DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput:ptr IDXGIOutput, ppSwapChain:ptr ptr IDXGISwapChain1): HRESULT {.stdcall.}
        GetSharedResourceAdapterLuid*: proc (This:ptr IDXGIFactory2, hResource:HANDLE, pLuid:ptr LUID): HRESULT {.stdcall.}
        RegisterStereoStatusWindow*: proc (This:ptr IDXGIFactory2, WindowHandle:HWND, wMsg:UINT, pdwCookie:ptr DWORD): HRESULT {.stdcall.}
        RegisterStereoStatusEvent*: proc (This:ptr IDXGIFactory2, hEvent:HANDLE, pdwCookie:ptr DWORD): HRESULT {.stdcall.}
        UnregisterStereoStatus*: proc (This:ptr IDXGIFactory2, dwCookie:DWORD) {.stdcall.}
        RegisterOcclusionStatusWindow*: proc (This:ptr IDXGIFactory2, WindowHandle:HWND, wMsg:UINT, pdwCookie:ptr DWORD): HRESULT {.stdcall.}
        RegisterOcclusionStatusEvent*: proc (This:ptr IDXGIFactory2, hEvent:HANDLE, pdwCookie:ptr DWORD): HRESULT {.stdcall.}
        UnregisterOcclusionStatus*: proc (This:ptr IDXGIFactory2, dwCookie:DWORD) {.stdcall.}
        CreateSwapChainForComposition*: proc (This:ptr IDXGIFactory2, pDevice:pointer, pDesc:ptr DXGI_SWAP_CHAIN_DESC1, pRestrictToOutput:ptr IDXGIOutput, ppSwapChain:ptr ptr IDXGISwapChain1): HRESULT {.stdcall.}
    IDXGIFactory2* = object
        lpVtbl*: ptr IDXGIFactory2Vtbl
    IDXGIAdapter2Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIAdapter2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIAdapter2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIAdapter2): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIAdapter2, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIAdapter2, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIAdapter2, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIAdapter2, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        EnumOutputs*: proc (This:ptr IDXGIAdapter2, output_idx:UINT, output:ptr ptr IDXGIOutput): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGIAdapter2, desc:ptr DXGI_ADAPTER_DESC): HRESULT {.stdcall.}
        CheckInterfaceSupport*: proc (This:ptr IDXGIAdapter2, guid:REFGUID, umd_version:ptr LARGE_INTEGER): HRESULT {.stdcall.}
        GetDesc1*: proc (This:ptr IDXGIAdapter2, pDesc:ptr DXGI_ADAPTER_DESC1): HRESULT {.stdcall.}
        GetDesc2*: proc (This:ptr IDXGIAdapter2, pDesc:ptr DXGI_ADAPTER_DESC2): HRESULT {.stdcall.}
    IDXGIAdapter2* = object
        lpVtbl*: ptr IDXGIAdapter2Vtbl
    IDXGIOutput1Vtbl* = object
        QueryInterface*: proc (This:ptr IDXGIOutput1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDXGIOutput1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDXGIOutput1): ULONG {.stdcall.}
        SetPrivateData*: proc (This:ptr IDXGIOutput1, guid:REFGUID, data_size:UINT, data:pointer): HRESULT {.stdcall.}
        SetPrivateDataInterface*: proc (This:ptr IDXGIOutput1, guid:REFGUID, object1:pointer): HRESULT {.stdcall.}
        GetPrivateData*: proc (This:ptr IDXGIOutput1, guid:REFGUID, data_size:ptr UINT, data:pointer): HRESULT {.stdcall.}
        GetParent*: proc (This:ptr IDXGIOutput1, riid:ptr IID, parent:ptr pointer): HRESULT {.stdcall.}
        GetDesc*: proc (This:ptr IDXGIOutput1, desc:ptr DXGI_OUTPUT_DESC): HRESULT {.stdcall.}
        GetDisplayModeList*: proc (This:ptr IDXGIOutput1, format:DXGI_FORMAT, flags:UINT, mode_count:ptr UINT, desc:ptr DXGI_MODE_DESC): HRESULT {.stdcall.}
        FindClosestMatchingMode*: proc (This:ptr IDXGIOutput1, mode:ptr DXGI_MODE_DESC, closest_match:ptr DXGI_MODE_DESC, device:pointer): HRESULT {.stdcall.}
        WaitForVBlank*: proc (This:ptr IDXGIOutput1): HRESULT {.stdcall.}
        TakeOwnership*: proc (This:ptr IDXGIOutput1, device:pointer, exclusive:BOOL): HRESULT {.stdcall.}
        ReleaseOwnership*: proc (This:ptr IDXGIOutput1) {.stdcall.}
        GetGammaControlCapabilities*: proc (This:ptr IDXGIOutput1, gamma_caps:ptr DXGI_GAMMA_CONTROL_CAPABILITIES): HRESULT {.stdcall.}
        SetGammaControl*: proc (This:ptr IDXGIOutput1, gamma_control:ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        GetGammaControl*: proc (This:ptr IDXGIOutput1, gamma_control:ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        SetDisplaySurface*: proc (This:ptr IDXGIOutput1, surface:ptr IDXGISurface): HRESULT {.stdcall.}
        GetDisplaySurfaceData*: proc (This:ptr IDXGIOutput1, surface:ptr IDXGISurface): HRESULT {.stdcall.}
        GetFrameStatistics*: proc (This:ptr IDXGIOutput1, stats:ptr DXGI_FRAME_STATISTICS): HRESULT {.stdcall.}
        GetDisplayModeList1*: proc (This:ptr IDXGIOutput1, enum_format:DXGI_FORMAT, flags:UINT, num_modes:ptr UINT, desc:ptr DXGI_MODE_DESC1): HRESULT {.stdcall.}
        FindClosestMatchingMode1*: proc (This:ptr IDXGIOutput1, mode_to_match:ptr DXGI_MODE_DESC1, closest_match:ptr DXGI_MODE_DESC1, concerned_device:pointer): HRESULT {.stdcall.}
        GetDisplaySurfaceData1*: proc (This:ptr IDXGIOutput1, destination:ptr IDXGIResource): HRESULT {.stdcall.}
        DuplicateOutput*: proc (This:ptr IDXGIOutput1, device:pointer, output_duplication:ptr ptr IDXGIOutputDuplication): HRESULT {.stdcall.}
    IDXGIOutput1* = object
        lpVtbl*: ptr IDXGIOutput1Vtbl
