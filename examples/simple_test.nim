
import window_winim
import winim/lean, winim/clr
if CoInitialize(nil)!=S_OK: echo "CoInitialize error"

{.passL: "-L. -ld2d1 -lole32 ".}
import direct/[d2d1, d2dbasetypes]

var d2Factory: ptr ID2D1Factory
var renderTarget: ptr ID2D1RenderTarget
var brush1, brush2: ptr ID2D1SolidColorBrush
converter toResource[T](x:ptr T): ptr ID2D1Resource = cast[ptr ID2D1Resource](x)
converter toPointer(p: ptr ptr ID2D1Factory): ptr pointer = cast[ptr pointer](p)
converter toBrush(b:ptr ID2D1SolidColorBrush):ptr ID2D1Brush = cast[ptr ID2D1Brush](b)

proc release(x: ptr ID2D1Resource) =
    discard x.lpVtbl.Release(x)

proc CreateDeviceIndependentResources() = # Initialize device-independent resources.
    var hr = D2D1CreateFactory(D2D1_FACTORY_TYPE_SINGLE_THREADED, cast[ptr IID](unsafeAddr IID_ID2D1Factory), nil, addr d2Factory)
    if hr!=S_OK: echo "D2D1CreateFactory error"
    
proc CreateDeviceResources(hwnd: HWND, factory: ptr ID2D1Factory) = # Initialize device-dependent resources.
    var rc: RECT
    GetClientRect(hwnd, addr rc)
    
    var size = D2D1_SIZE_U(width: rc.right, height: rc.bottom)
    var props = D2D1_RENDER_TARGET_PROPERTIES()
    var hwnd_props = D2D1_HWND_RENDER_TARGET_PROPERTIES(hwnd:hwnd, pixelSize:size, presentOptions:D2D1_PRESENT_OPTIONS_NONE)
    
    # Create a Direct2D render target.
    var hr = factory.lpVtbl.CreateHwndRenderTarget(factory, addr props, addr hwnd_props, cast[ptr ptr ID2D1HwndRenderTarget](addr renderTarget))
    if hr!=S_OK: echo "CreateHwndRenderTarget error"
    
    var color1 = D2D1_COLOR_F(r:1.0,g:1.0,b:0.0,a:1.0)
    var color2 = D2D1_COLOR_F(r:1.0,g:0.0,b:1.0,a:1.0)
    var brush_props = D2D1_BRUSH_PROPERTIES(opacity:1.0)
    hr = renderTarget.lpVtbl.CreateSolidColorBrush(renderTarget, addr color1, addr brush_props, addr brush1)
    if hr!=S_OK: echo "CreateSolidColorBrush error"
    hr = renderTarget.lpVtbl.CreateSolidColorBrush(renderTarget, addr color2, addr brush_props, addr brush2)
    if hr!=S_OK: echo "CreateSolidColorBrush error"


draw = proc(hwnd:HWND)=
    #~ echo "drawing"
    CreateDeviceResources(hwnd, d2Factory)
    
    renderTarget.lpVtbl.BeginDraw(renderTarget)
    var color1 = D2D1_COLOR_F(r:1.0,g:1.0,b:1.0,a:1.0)
    renderTarget.lpVtbl.Clear(renderTarget, addr color1)
    
    var pos: D2D1_SIZE_F
    renderTarget.lpVtbl.GetSize(renderTarget, addr pos)
    
    var dashes = [1.0f, 2.0f, 2.0f, 3.0f, 2.0f, 2.0f]
    var strokeStyle: ptr ID2D1StrokeStyle
    var styleProps = D2D1_STROKE_STYLE_PROPERTIES(
                        startCap:D2D1_CAP_STYLE_FLAT,
                        endCap:D2D1_CAP_STYLE_FLAT,
                        dashCap:D2D1_CAP_STYLE_ROUND,
                        lineJoin:D2D1_LINE_JOIN_MITER,
                        miterLimit:10.0f,
                        dashStyle:D2D1_DASH_STYLE_CUSTOM,
                        dashOffset:0.1f)
    var hr = d2Factory.lpVtbl.CreateStrokeStyle(d2Factory, addr styleProps, addr dashes[0], len(dashes).UINT32, addr strokeStyle)
    if hr!=S_OK: echo "CreateStrokeStyle error"
    renderTarget.lpVtbl.DrawLine(renderTarget, D2D1_POINT_2F(x:10f, y:10f), D2D1_POINT_2F(x:100f, y:100f), brush=brush2, strokeWidth=13f, strokeStyle)
    
    hr = renderTarget.lpVtbl.EndDraw(renderTarget, nil, nil)
    if hr!=S_OK: echo "EndDraw error"
    renderTarget.release
    brush1.release
    brush2.release

CreateDeviceIndependentResources()
start_window()
