import winim/lean
const IID_IUnknown* = IID(Data1:0x00000000'i32, Data2:0x0000, Data3:0x0000, Data4:[0xc0'u8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46])
const IID_AsyncIUnknown* = IID(Data1:0x000e0000'i32, Data2:0x0000, Data3:0x0000, Data4:[0xc0'u8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46])
const IID_IClassFactory* = IID(Data1:0x00000001'i32, Data2:0x0000, Data3:0x0000, Data4:[0xc0'u8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46])
type
    IUnknownVtbl* = object
        QueryInterface*: proc (This:ptr IUnknown, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IUnknown): ULONG {.stdcall.}
        Release*: proc (This:ptr IUnknown): ULONG {.stdcall.}
    IUnknown* = object
        lpVtbl*: ptr IUnknownVtbl
    AsyncIUnknownVtbl* = object
        QueryInterface*: proc (This:ptr AsyncIUnknown, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr AsyncIUnknown): ULONG {.stdcall.}
        Release*: proc (This:ptr AsyncIUnknown): ULONG {.stdcall.}
        Begin_QueryInterface*: proc (This:ptr AsyncIUnknown, riid:ptr IID): HRESULT {.stdcall.}
        Finish_QueryInterface*: proc (This:ptr AsyncIUnknown, ppvObject:ptr pointer): HRESULT {.stdcall.}
        Begin_AddRef*: proc (This:ptr AsyncIUnknown): HRESULT {.stdcall.}
        Finish_AddRef*: proc (This:ptr AsyncIUnknown): ULONG {.stdcall.}
        Begin_Release*: proc (This:ptr AsyncIUnknown): HRESULT {.stdcall.}
        Finish_Release*: proc (This:ptr AsyncIUnknown): ULONG {.stdcall.}
    AsyncIUnknown* = object
        lpVtbl*: ptr AsyncIUnknownVtbl
    IClassFactoryVtbl* = object
        QueryInterface*: proc (This:ptr IClassFactory, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IClassFactory): ULONG {.stdcall.}
        Release*: proc (This:ptr IClassFactory): ULONG {.stdcall.}
        CreateInstance*: proc (This:ptr IClassFactory, pUnkOuter:pointer, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        LockServer*: proc (This:ptr IClassFactory, fLock:BOOL): HRESULT {.stdcall.}
    IClassFactory* = object
        lpVtbl*: ptr IClassFactoryVtbl
