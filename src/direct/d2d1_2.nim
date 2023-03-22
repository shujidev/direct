import winim/lean
import d2d1, d2d1_1, dxgi

const IID_ID2D1GeometryRealization* = IID(Data1:0xa16907d7'i32, Data2:0xbc02, Data3:0x4801, Data4:[0x99'u8, 0xe8, 0x8c,0xf7,0xf4,0x85,0xf7,0x74])
const IID_ID2D1DeviceContext1* = IID(Data1:0xd37f57e4'i32, Data2:0x6908, Data3:0x459f, Data4:[0xa1'u8, 0x99, 0xe7,0x2f,0x24,0xf7,0x99,0x87])
const IID_ID2D1Device1* = IID(Data1:0xd21768e1'i32, Data2:0x23a4, Data3:0x4823, Data4:[0xa1'u8, 0x4b, 0x7c,0x3e,0xba,0x85,0xd6,0x58])
const IID_ID2D1Factory2* = IID(Data1:0x94f81a73'i32, Data2:0x9212, Data3:0x4376, Data4:[0x9c'u8, 0x58, 0xb1,0x6a,0x3a,0x0d,0x39,0x92])
const IID_ID2D1CommandSink1* = IID(Data1:0x9eb767fd'i32, Data2:0x4269, Data3:0x4467, Data4:[0xb8'u8, 0xc2, 0xeb,0x30,0xcb,0x30,0x57,0x43])

type D2D1_RENDERING_PRIORITY* = enum
    D2D1_RENDERING_PRIORITY_NORMAL = 0,
    D2D1_RENDERING_PRIORITY_LOW = 1,
    D2D1_RENDERING_PRIORITY_FORCE_DWORD = 0xffffffff
    
type
    ID2D1GeometryRealizationVtbl* = object
        Base*: ID2D1ResourceVtbl
    ID2D1GeometryRealization* = object
        lpVtbl*: ptr ID2D1GeometryRealizationVtbl
    ID2D1DeviceContext1Vtbl* = object
        Base*: ID2D1DeviceContextVtbl
        CreateFilledGeometryRealization*: proc (This:ptr ID2D1DeviceContext1, geometry:ptr ID2D1Geometry, flatteningTolerance:FLOAT, geometryRealization:ptr ptr ID2D1GeometryRealization) {.stdcall.}
        CreateStrokedGeometryRealization*: proc (This:ptr ID2D1DeviceContext1, geometry:ptr ID2D1Geometry, flatteningTolerance:FLOAT, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle, geometryRealization:ptr ptr ID2D1GeometryRealization) {.stdcall.}
        DrawGeometryRealization*: proc (This:ptr ID2D1DeviceContext1, geometryRealization:ptr ID2D1GeometryRealization, brush:ptr ID2D1Brush) {.stdcall.}
    ID2D1DeviceContext1* = object
        lpVtbl*: ptr ID2D1DeviceContext1Vtbl
    ID2D1Device1Vtbl* = object
        Base*: ID2D1DeviceVtbl
        GetRenderingPriority*: proc (This:ptr ID2D1Device1): D2D1_RENDERING_PRIORITY {.stdcall.}
        SetRenderingPriority*: proc (This:ptr ID2D1Device1, renderingPriority:D2D1_RENDERING_PRIORITY) {.stdcall.}
        CreateDeviceContext*: proc (This:ptr ID2D1Device1, options:D2D1_DEVICE_CONTEXT_OPTIONS, deviceContext1:ptr ptr ID2D1DeviceContext1) {.stdcall.}
    ID2D1Device1* = object
        lpVtbl*: ptr ID2D1Device1Vtbl
        
    ID2D1Factory2Vtbl* = object
        Base*: ID2D1Factory1Vtbl
        CreateDevice*: proc (This:ptr ID2D1Factory2, dxgiDevice:ptr IDXGIDevice, d2dDevice1:ptr ptr ID2D1Device1) {.stdcall.}
    ID2D1Factory2* = object
        lpVtbl*: ptr ID2D1Factory2Vtbl
        
    ID2D1CommandSink1Vtbl* = object
        Base*: ID2D1CommandSinkVtbl
        SetPrimitiveBlend1*: proc (This:ptr ID2D1CommandSink1, primitiveBlend:D2D1_PRIMITIVE_BLEND) {.stdcall.}
    ID2D1CommandSink1* = object
        lpVtbl*: ptr ID2D1CommandSink1Vtbl
