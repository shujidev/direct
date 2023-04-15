
import window_winim
import winim/lean
#~ import winim/com
#~ if CoInitialize(nil)!=S_OK: echo "CoInitialize error"

import direct/[d2d1] #required for drawing
import direct/[dwrite, dcommon] #required for text drawing and formatting

var d2Factory: ptr ID2D1Factory
var writeFactory: ptr IDWriteFactory
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
    hr = DWriteCreateFactory(DWRITE_FACTORY_TYPE_SHARED, unsafeAddr IID_IDWriteFactory, addr writeFactory)
    if hr!=S_OK: echo "DWriteCreateFactory error ",hr.toHex
    
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
    
    renderTarget.lpVtbl.DrawLine(renderTarget, D2D1_POINT_2F(x:20f, y:20f), D2D1_POINT_2F(x:200f, y:200f), brush=brush2, strokeWidth=10f, strokeStyle)
    
    block:
        var center = (300f,100f)
        var radius = (80f,50f)
        var rect = (center, radius)
        renderTarget.lpVtbl.FillEllipse(renderTarget, cast[ptr D2D1_ELLIPSE](addr rect), brush=brush1)
        renderTarget.lpVtbl.DrawEllipse(renderTarget, cast[ptr D2D1_ELLIPSE](addr rect), brush=brush2, strokeWidth=10f, strokeStyle)
    
    block:
        var point1 = (400f,50f)
        var point2 = (600f,120f)
        var radius = (20f,20f)
        var rect = (point1, point2, radius)
        renderTarget.lpVtbl.FillRoundedRectangle(renderTarget, cast[ptr D2D1_ROUNDED_RECT](addr rect), brush=brush2)
        renderTarget.lpVtbl.DrawRoundedRectangle(renderTarget, cast[ptr D2D1_ROUNDED_RECT](addr rect), brush=brush1, strokeWidth=10f, strokeStyle)
    
    block:
        var fontFamily = "Arial"
        var fontSize = 32f
        var weight = DWRITE_FONT_WEIGHT_NORMAL
        var style = DWRITE_FONT_STYLE_NORMAL
        var stretch = DWRITE_FONT_STRETCH_NORMAL
        var textFormat:ptr IDWriteTextFormat
        var hr = writeFactory.lpVtbl.CreateTextFormat(writeFactory, family_name=fontFamily, collection=nil, weight, style, stretch, size=fontSize, locale="", addr textFormat)
        if hr!=S_OK: echo "CreateTextFormat error ",hr.toHex
        
        var pos = (700f,50f)
        var size = (500f,500f)
        var layout = (pos, pos[0]+size[0], pos[1]+size[1])
        var text = +$"Helloôòóü\nWorld"
        renderTarget.lpVtbl.DrawText(renderTarget, text, UINT text.len, textFormat, 
                        layoutRect=cast[ptr D2D1_RECT_F](addr layout), 
                        defaultForegroundBrush=brush2, 
                        options=d2d1.D2D1_DRAW_TEXT_OPTIONS_NONE,  #options:NONE,NO_SNAP,CLIP,ENABLE_COLOR_FONT
                        measuringMode=dcommon.DWRITE_MEASURING_MODE_NATURAL)
    
    hr = renderTarget.lpVtbl.EndDraw(renderTarget, nil, nil)
    if hr!=S_OK: echo "EndDraw error"
    renderTarget.release
    brush1.release
    brush2.release

CreateDeviceIndependentResources()
create_window()
start_window()
