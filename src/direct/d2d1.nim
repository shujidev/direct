import winim/lean, winim/inc/wincodec
#~ import d2dbasetypes
import d3dcommon
import dcommon
import dwrite
import unknwn
import dxgi
{.passL: "-L. -ld2d1 -lole32 ".}

#~ proc RGBA_GETALPHA(rgb) = rgb shr 24
#~ proc RGBA_GETRED(rgb) = (rgb shr 16) and 0xff
#~ proc RGBA_GETGREEN(rgb) = (rgb shr 8) and 0xff
#~ proc RGBA_GETBLUE(rgb) = rgb and 0xff
#~ proc RGBA_MAKE(r, g, b, a) = (a shl 24) or (r shl 16) or (g shl 8) or b

#~ proc D3DRGB(r, g, b) = 0xff000000 or ( ((LONG)(r * 255)) shl 16) or (((LONG)(g * 255)) shl 8) or (LONG)(b * 255)
#~ proc D3DRGBA(r, g, b, a) = (((LONG)(a * 255)) shl 24) or (((LONG)((r) * 255)) shl 16) or (((LONG)(g * 255)) shl 8) or (LONG)(b * 255)

#~ proc RGB_GETRED(rgb) = (rgb shr 16) and 0xff
#~ proc RGB_GETGREEN(rgb) = (rgb shr 8) and 0xff
#~ proc RGB_GETBLUE(rgb) = rgb and 0xff
#~ proc RGBA_SETALPHA(rgba, x) = (x shl 24) or (rgba and 0x00ffffff)
#~ proc RGB_MAKE(r, g, b) = (r shl 16) or (g shl 8) or b
#~ proc RGBA_TORGB(rgba) = rgba and 0xffffff
#~ proc RGB_TORGBA(rgb) = rgb or 0xff000000

type 
    D2D1_POINT_2U* = D2D_POINT_2U
    D2D1_POINT_2F* = D2D_POINT_2F
    D2D1_POINT_2L* = D2D_POINT_2L
    D2D1_RECT_F* = D2D_RECT_F
    D2D1_RECT_U* = D2D_RECT_U
    D2D1_RECT_L* = RECT
    D2D1_SIZE_F* = D2D_SIZE_F
    D2D1_SIZE_U* = D2D_SIZE_U
    D2D1_COLOR_F* = D2D_COLOR_F
    D2D1_MATRIX_3X2_F* = D2D_MATRIX_3X2_F
    D2D1_TAG* = UINT64
    
const
    D2D1_INTERPOLATION_MODE_DEFINITION_NEAREST_NEIGHBOR*    = 0
    D2D1_INTERPOLATION_MODE_DEFINITION_LINEAR*              = 1
    D2D1_INTERPOLATION_MODE_DEFINITION_CUBIC*               = 2
    D2D1_INTERPOLATION_MODE_DEFINITION_MULTI_SAMPLE_LINEAR* = 3
    D2D1_INTERPOLATION_MODE_DEFINITION_ANISOTROPIC*         = 4
    D2D1_INTERPOLATION_MODE_DEFINITION_HIGH_QUALITY_CUBIC*  = 5
    D2D1_INTERPOLATION_MODE_DEFINITION_FANT*                = 6
    D2D1_INTERPOLATION_MODE_DEFINITION_MIPMAP_LINEAR*       = 7
type
  D2D1_ANTIALIAS_MODE* = enum
    D2D1_ANTIALIAS_MODE_PER_PRIMITIVE = 0, 
    D2D1_ANTIALIAS_MODE_ALIASED = 1,
    D2D1_ANTIALIAS_MODE_FORCE_DWORD = 0xffffffff
  D2D1_ARC_SIZE* = enum
    D2D1_ARC_SIZE_SMALL = 0, D2D1_ARC_SIZE_LARGE = 1,
    D2D1_ARC_SIZE_FORCE_DWORD = 0xffffffff
  D2D1_BITMAP_INTERPOLATION_MODE* = enum
    D2D1_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR = 0,
    D2D1_BITMAP_INTERPOLATION_MODE_LINEAR = 1,
    D2D1_BITMAP_INTERPOLATION_MODE_FORCE_DWORD = 0xffffffff
  D2D1_CAP_STYLE* = enum
    D2D1_CAP_STYLE_FLAT = 0, 
    D2D1_CAP_STYLE_SQUARE = 1, 
    D2D1_CAP_STYLE_ROUND = 2,
    D2D1_CAP_STYLE_TRIANGLE = 3, 
    D2D1_CAP_STYLE_FORCE_DWORD = 0xffffffff
  D2D1_COMBINE_MODE* = enum
    D2D1_COMBINE_MODE_UNION = 0, 
    D2D1_COMBINE_MODE_INTERSECT = 1,
    D2D1_COMBINE_MODE_XOR = 2, 
    D2D1_COMBINE_MODE_EXCLUDE = 3,
    D2D1_COMBINE_MODE_FORCE_DWORD = 0xffffffff
  D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS* = enum
    D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS_NONE = 0x00000000,
    D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS_GDI_COMPATIBLE = 0x00000001,
    D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS_FORCE_DWORD = 0xffffffff
  D2D1_DASH_STYLE* = enum
    D2D1_DASH_STYLE_SOLID = 0, 
    D2D1_DASH_STYLE_DASH = 1, 
    D2D1_DASH_STYLE_DOT = 2,
    D2D1_DASH_STYLE_DASH_DOT = 3, 
    D2D1_DASH_STYLE_DASH_DOT_DOT = 4,
    D2D1_DASH_STYLE_CUSTOM = 5, 
    D2D1_DASH_STYLE_FORCE_DWORD = 0xffffffff
  D2D1_DC_INITIALIZE_MODE* = enum
    D2D1_DC_INITIALIZE_MODE_COPY = 0, 
    D2D1_DC_INITIALIZE_MODE_CLEAR = 1,
    D2D1_DC_INITIALIZE_MODE_FORCE_DWORD = 0xffffffff
  D2D1_DEBUG_LEVEL* = enum
    D2D1_DEBUG_LEVEL_NONE = 0, 
    D2D1_DEBUG_LEVEL_ERROR = 1,
    D2D1_DEBUG_LEVEL_WARNING = 2, 
    D2D1_DEBUG_LEVEL_INFORMATION = 3,
    D2D1_DEBUG_LEVEL_FORCE_DWORD = 0xffffffff
  D2D1_DRAW_TEXT_OPTIONS* = enum
    D2D1_DRAW_TEXT_OPTIONS_NONE = 0x00000000,
    D2D1_DRAW_TEXT_OPTIONS_NO_SNAP = 0x00000001,
    D2D1_DRAW_TEXT_OPTIONS_CLIP = 0x00000002,
    D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT = 0x00000004,
    D2D1_DRAW_TEXT_OPTIONS_DISABLE_COLOR_BITMAP_SNAPPING = 0x00000008,
    D2D1_DRAW_TEXT_OPTIONS_FORCE_DWORD = 0xffffffff
  D2D1_EXTEND_MODE* = enum
    D2D1_EXTEND_MODE_CLAMP = 0, 
    D2D1_EXTEND_MODE_WRAP = 1,
    D2D1_EXTEND_MODE_MIRROR = 2, 
    D2D1_EXTEND_MODE_FORCE_DWORD = 0xffffffff
  D2D1_FACTORY_TYPE* = enum
    D2D1_FACTORY_TYPE_SINGLE_THREADED = 0, 
    D2D1_FACTORY_TYPE_MULTI_THREADED = 1,
    D2D1_FACTORY_TYPE_FORCE_DWORD = 0xffffffff
  D2D1_FEATURE_LEVEL* = enum
    D2D1_FEATURE_LEVEL_DEFAULT = 0, 
    D2D1_FEATURE_LEVEL_9 = D3D_FEATURE_LEVEL_9_1,
    D2D1_FEATURE_LEVEL_10 = D3D_FEATURE_LEVEL_10_0,
    D2D1_FEATURE_LEVEL_FORCE_DWORD = 0xffffffff
  D2D1_FIGURE_BEGIN* = enum
    D2D1_FIGURE_BEGIN_FILLED = 0, 
    D2D1_FIGURE_BEGIN_HOLLOW = 1,
    D2D1_FIGURE_BEGIN_FORCE_DWORD = 0xffffffff
  D2D1_FIGURE_END* = enum
    D2D1_FIGURE_END_OPEN = 0, 
    D2D1_FIGURE_END_CLOSED = 1,
    D2D1_FIGURE_END_FORCE_DWORD = 0xffffffff
  D2D1_FILL_MODE* = enum
    D2D1_FILL_MODE_ALTERNATE = 0, 
    D2D1_FILL_MODE_WINDING = 1,
    D2D1_FILL_MODE_FORCE_DWORD = 0xffffffff
  D2D1_GAMMA* = enum
    D2D1_GAMMA_2_2 = 0, 
    D2D1_GAMMA_1_0 = 1, 
    D2D1_GAMMA_FORCE_DWORD = 0xffffffff
  D2D1_GEOMETRY_RELATION* = enum
    D2D1_GEOMETRY_RELATION_UNKNOWN = 0, 
    D2D1_GEOMETRY_RELATION_DISJOINT = 1,
    D2D1_GEOMETRY_RELATION_IS_CONTAINED = 2, 
    D2D1_GEOMETRY_RELATION_CONTAINS = 3,
    D2D1_GEOMETRY_RELATION_OVERLAP = 4,
    D2D1_GEOMETRY_RELATION_FORCE_DWORD = 0xffffffff
  D2D1_GEOMETRY_SIMPLIFICATION_OPTION* = enum
    D2D1_GEOMETRY_SIMPLIFICATION_OPTION_CUBICS_AND_LINES = 0,
    D2D1_GEOMETRY_SIMPLIFICATION_OPTION_LINES = 1,
    D2D1_GEOMETRY_SIMPLIFICATION_OPTION_FORCE_DWORD = 0xffffffff
  D2D1_LAYER_OPTIONS* = enum
    D2D1_LAYER_OPTIONS_NONE = 0x00000000,
    D2D1_LAYER_OPTIONS_INITIALIZE_FOR_CLEARTYPE = 0x00000001,
    D2D1_LAYER_OPTIONS_FORCE_DWORD = 0xffffffff
  D2D1_LINE_JOIN* = enum
    D2D1_LINE_JOIN_MITER = 0, 
    D2D1_LINE_JOIN_BEVEL = 1, 
    D2D1_LINE_JOIN_ROUND = 2,
    D2D1_LINE_JOIN_MITER_OR_BEVEL = 3, D2D1_LINE_JOIN_FORCE_DWORD = 0xffffffff
  D2D1_OPACITY_MASK_CONTENT* = enum
    D2D1_OPACITY_MASK_CONTENT_GRAPHICS = 0,
    D2D1_OPACITY_MASK_CONTENT_TEXT_NATURAL = 1,
    D2D1_OPACITY_MASK_CONTENT_TEXT_GDI_COMPATIBLE = 2,
    D2D1_OPACITY_MASK_CONTENT_FORCE_DWORD = 0xffffffff
  D2D1_PATH_SEGMENT* = enum
    D2D1_PATH_SEGMENT_NONE = 0x00000000,
    D2D1_PATH_SEGMENT_FORCE_UNSTROKED = 0x00000001,
    D2D1_PATH_SEGMENT_FORCE_ROUND_LINE_JOIN = 0x00000002,
    D2D1_PATH_SEGMENT_FORCE_DWORD = 0xffffffff
  D2D1_PRESENT_OPTIONS* = enum
    D2D1_PRESENT_OPTIONS_NONE = 0x00000000,
    D2D1_PRESENT_OPTIONS_RETAIN_CONTENTS = 0x00000001,
    D2D1_PRESENT_OPTIONS_IMMEDIATELY = 0x00000002,
    D2D1_PRESENT_OPTIONS_FORCE_DWORD = 0xffffffff
  D2D1_RENDER_TARGET_TYPE* = enum
    D2D1_RENDER_TARGET_TYPE_DEFAULT = 0, 
    D2D1_RENDER_TARGET_TYPE_SOFTWARE = 1,
    D2D1_RENDER_TARGET_TYPE_HARDWARE = 2,
    D2D1_RENDER_TARGET_TYPE_FORCE_DWORD = 0xffffffff
  D2D1_RENDER_TARGET_USAGE* = enum
    D2D1_RENDER_TARGET_USAGE_NONE = 0x00000000,
    D2D1_RENDER_TARGET_USAGE_FORCE_BITMAP_REMOTING = 0x00000001,
    D2D1_RENDER_TARGET_USAGE_GDI_COMPATIBLE = 0x00000002,
    D2D1_RENDER_TARGET_USAGE_FORCE_DWORD = 0xffffffff
  D2D1_SWEEP_DIRECTION* = enum
    D2D1_SWEEP_DIRECTION_COUNTER_CLOCKWISE = 0, 
    D2D1_SWEEP_DIRECTION_CLOCKWISE = 1,
    D2D1_SWEEP_DIRECTION_FORCE_DWORD = 0xffffffff
  D2D1_TEXT_ANTIALIAS_MODE* = enum
    D2D1_TEXT_ANTIALIAS_MODE_DEFAULT = 0, 
    D2D1_TEXT_ANTIALIAS_MODE_CLEARTYPE = 1,
    D2D1_TEXT_ANTIALIAS_MODE_GRAYSCALE = 2, 
    D2D1_TEXT_ANTIALIAS_MODE_ALIASED = 3,
    D2D1_TEXT_ANTIALIAS_MODE_FORCE_DWORD = 0xffffffff
  D2D1_WINDOW_STATE* = enum
    D2D1_WINDOW_STATE_NONE = 0x00000000, 
    D2D1_WINDOW_STATE_OCCLUDED = 0x00000001,
    D2D1_WINDOW_STATE_FORCE_DWORD = 0xffffffff


  
const IID_ID2D1Resource* = IID(Data1:0x2cd90691'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1Brush* = IID(Data1:0x2cd906a8'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1Image* = IID(Data1:0x65019f75'i32, Data2:0x8da2, Data3:0x497c, Data4:[0xb3'u8, 0x2c, 0xdf, 0xa3, 0x4e, 0x48, 0xed, 0xe6])
const IID_ID2D1Bitmap* = IID(Data1:0xa2296057'i32, Data2:0xea42, Data3:0x4099, Data4:[0x98'u8, 0x3b, 0x53, 0x9f, 0xb6, 0x50, 0x54, 0x26])
const IID_ID2D1BitmapBrush* = IID(Data1:0x2cd906aa'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1RenderTarget* = IID(Data1:0x2cd90694'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1Geometry* = IID(Data1:0x2cd906a1'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1BitmapRenderTarget* = IID(Data1:0x2cd90695'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1DCRenderTarget* = IID(Data1:0x1c51bc64'i32, Data2:0xde61, Data3:0x46fd, Data4:[0x98'u8, 0x99, 0x63, 0xa5, 0xd8, 0xf0, 0x39, 0x50])
const IID_ID2D1DrawingStateBlock* = IID(Data1:0x28506e39'i32, Data2:0xebf6, Data3:0x46a1, Data4:[0xbb'u8, 0x47, 0xfd, 0x85, 0x56, 0x5a, 0xb9, 0x57])
const IID_ID2D1SimplifiedGeometrySink* = IID(Data1:0x2cd9069e'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1EllipseGeometry* = IID(Data1:0x2cd906a4'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1Factory* = IID(Data1:0x06152247'i32, Data2:0x6f50, Data3:0x465a, Data4:[0x92'u8, 0x45, 0x11, 0x8b, 0xfd, 0x3b, 0x60, 0x07])
const IID_ID2D1GdiInteropRenderTarget* = IID(Data1:0xe0db51c3'i32, Data2:0x6f77, Data3:0x4bae, Data4:[0xb3'u8, 0xd5, 0xe4, 0x75, 0x09, 0xb3, 0x58, 0x38])
const IID_ID2D1GeometryGroup* = IID(Data1:0x2cd906a6'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1GeometrySink* = IID(Data1:0x2cd9069f'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1GradientStopCollection* = IID(Data1:0x2cd906a7'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1Layer* = IID(Data1:0x2cd9069b'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1LinearGradientBrush* = IID(Data1:0x2cd906ab'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1Mesh* = IID(Data1:0x2cd906c2'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1PathGeometry* = IID(Data1:0x2cd906a5'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1RadialGradientBrush* = IID(Data1:0x2cd906ac'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1RectangleGeometry* = IID(Data1:0x2cd906a2'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1RoundedRectangleGeometry* = IID(Data1:0x2cd906a3'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1SolidColorBrush* = IID(Data1:0x2cd906a9'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1StrokeStyle* = IID(Data1:0x2cd9069d'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1TessellationSink* = IID(Data1:0x2cd906c1'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])
const IID_ID2D1TransformedGeometry* = IID(Data1:0x2cd906bb'i32, Data2:0x12e2, Data3:0x11dc, Data4:[0x9f'u8, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9])

type
    D2D1_ARC_SEGMENT*  {.bycopy.}  =  object
        point*:  D2D1_POINT_2F
        size*:  D2D1_SIZE_F
        rotationAngle*:  FLOAT
        sweepDirection*:  D2D1_SWEEP_DIRECTION
        arcSize*:  D2D1_ARC_SIZE

    D2D1_BEZIER_SEGMENT*  {.bycopy.}  =  object
        point1*:  D2D1_POINT_2F
        point2*:  D2D1_POINT_2F
        point3*:  D2D1_POINT_2F

    D2D1_BITMAP_BRUSH_PROPERTIES*  {.bycopy.}  =  object
        extendModeX*:  D2D1_EXTEND_MODE
        extendModeY*:  D2D1_EXTEND_MODE
        interpolationMode*:  D2D1_BITMAP_INTERPOLATION_MODE

    D2D1_BITMAP_PROPERTIES*  {.bycopy.}  =  object
        pixelFormat*:  D2D1_PIXEL_FORMAT
        dpiX*:  FLOAT
        dpiY*:  FLOAT

    D2D1_BRUSH_PROPERTIES*  {.bycopy.}  =  object
        opacity*:  FLOAT
        transform*:  D2D1_MATRIX_3X2_F

    D2D1_DRAWING_STATE_DESCRIPTION*  {.bycopy.}  =  object
        antialiasMode*:  D2D1_ANTIALIAS_MODE
        textAntialiasMode*:  D2D1_TEXT_ANTIALIAS_MODE
        tag1*:  D2D1_TAG
        tag2*:  D2D1_TAG
        transform*:  D2D1_MATRIX_3X2_F

    D2D1_ELLIPSE*  {.bycopy.}  =  object
        point*:  D2D1_POINT_2F
        radiusX*:  FLOAT
        radiusY*:  FLOAT

    D2D1_FACTORY_OPTIONS*  {.bycopy.}  =  object
        debugLevel*:  D2D1_DEBUG_LEVEL

    D2D1_GRADIENT_STOP*  {.bycopy.}  =  object
        position*:  FLOAT
        color*:  D2D1_COLOR_F

    D2D1_HWND_RENDER_TARGET_PROPERTIES*  {.bycopy.}  =  object
        hwnd*:  HWND
        pixelSize*:  D2D1_SIZE_U
        presentOptions*:  D2D1_PRESENT_OPTIONS

    D2D1_LAYER_PARAMETERS*  {.bycopy.}  =  object
        contentBounds*:  D2D1_RECT_F
        geometricMask*:  ptr  ID2D1Geometry
        maskAntialiasMode*:  D2D1_ANTIALIAS_MODE
        maskTransform*:  D2D1_MATRIX_3X2_F
        opacity*:  FLOAT
        opacityBrush*:  ptr  ID2D1Brush
        layerOptions*:  D2D1_LAYER_OPTIONS

    D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES*  {.bycopy.}  =  object
        startPoint*:  D2D1_POINT_2F
        endPoint*:  D2D1_POINT_2F

    D2D1_QUADRATIC_BEZIER_SEGMENT*  {.bycopy.}  =  object
        point1*:  D2D1_POINT_2F
        point2*:  D2D1_POINT_2F

    D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES*  {.bycopy.}  =  object
        center*:  D2D1_POINT_2F
        gradientOriginOffset*:  D2D1_POINT_2F
        radiusX*:  FLOAT
        radiusY*:  FLOAT

    D2D1_RENDER_TARGET_PROPERTIES*  {.bycopy.}  =  object
        `type`*:  D2D1_RENDER_TARGET_TYPE
        pixelFormat*:  D2D1_PIXEL_FORMAT
        dpiX*:  FLOAT
        dpiY*:  FLOAT
        usage*:  D2D1_RENDER_TARGET_USAGE
        minLevel*:  D2D1_FEATURE_LEVEL

    D2D1_ROUNDED_RECT*  {.bycopy.}  =  object
        rect*:  D2D1_RECT_F
        radiusX*:  FLOAT
        radiusY*:  FLOAT

    D2D1_STROKE_STYLE_PROPERTIES*  {.bycopy.}  =  object
        startCap*:  D2D1_CAP_STYLE
        endCap*:  D2D1_CAP_STYLE
        dashCap*:  D2D1_CAP_STYLE
        lineJoin*:  D2D1_LINE_JOIN
        miterLimit*:  FLOAT
        dashStyle*:  D2D1_DASH_STYLE
        dashOffset*:  FLOAT

    D2D1_TRIANGLE*  {.bycopy.}  =  object
        point1*:  D2D1_POINT_2F
        point2*:  D2D1_POINT_2F
        point3*:  D2D1_POINT_2F


    ID2D1ResourceVtbl* = object
        #~ Base*: IUnknownVtbl
        #~ GetFactory*: proc (This:ptr ID2D1Resource, factory:ptr ptr ID2D1Factory) {.stdcall.}
        QueryInterface*: proc(This: ptr ID2D1Resource; riid: ptr IID; ppvObject: ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc(This: ptr ID2D1Resource): ULONG {.stdcall.}
        Release*: proc(This: ptr ID2D1Resource): ULONG {.stdcall.}
        GetFactory*: proc (This: ptr ID2D1Resource; factory: ptr ptr ID2D1Factory) {.stdcall.}
    ID2D1Resource* = object
        lpVtbl*: ptr ID2D1ResourceVtbl
        
    ID2D1BrushVtbl* = object
        Base*: ID2D1ResourceVtbl
        SetOpacity*: proc (This:ptr ID2D1Brush, opacity:FLOAT) {.stdcall.}
        SetTransform*: proc (This:ptr ID2D1Brush, transform:ptr D2D1_MATRIX_3X2_F) {.stdcall.}
        GetOpacity*: proc (This:ptr ID2D1Brush): FLOAT {.stdcall.}
        GetTransform*: proc (This:ptr ID2D1Brush, transform:ptr D2D1_MATRIX_3X2_F) {.stdcall.}
    ID2D1Brush* = object
        lpVtbl*: ptr ID2D1BrushVtbl
        
    ID2D1ImageVtbl* = object
        Base*: ID2D1ResourceVtbl
    ID2D1Image* = object
        lpVtbl*: ptr ID2D1ImageVtbl
        
    ID2D1BitmapVtbl* = object
        Base*: ID2D1ImageVtbl
        #~ GetSize*: proc (This:ptr ID2D1Bitmap): D2D1_SIZE_F {.stdcall.}
        #~ GetPixelSize*: proc (This:ptr ID2D1Bitmap): D2D1_SIZE_U {.stdcall.}
        GetSize*: proc (This: ptr ID2D1Bitmap, size:ptr D2D1_SIZE_F) {.stdcall.}
        GetPixelSize*: proc (This: ptr ID2D1Bitmap, size:ptr D2D1_SIZE_U) {.stdcall.}
        GetPixelFormat*: proc (This:ptr ID2D1Bitmap): D2D1_PIXEL_FORMAT {.stdcall.}
        GetDpi*: proc (This:ptr ID2D1Bitmap, dpiX:ptr FLOAT, dpiY:ptr FLOAT) {.stdcall.}
        CopyFromBitmap*: proc (This:ptr ID2D1Bitmap, destPoint:ptr D2D1_POINT_2U, bitmap:ptr ID2D1Bitmap, srcRect:ptr D2D1_RECT_U): HRESULT {.stdcall.}
        CopyFromRenderTarget*: proc (This:ptr ID2D1Bitmap, destPoint:ptr D2D1_POINT_2U, renderTarget:ptr ID2D1RenderTarget, srcRect:ptr D2D1_RECT_U): HRESULT {.stdcall.}
        CopyFromMemory*: proc (This:ptr ID2D1Bitmap, dstRect:ptr D2D1_RECT_U, srcData:pointer, pitch:UINT32): HRESULT {.stdcall.}
    ID2D1Bitmap* = object
        lpVtbl*: ptr ID2D1BitmapVtbl
        
    ID2D1BitmapBrushVtbl* = object
        Base*: ID2D1BrushVtbl
        SetExtendModeX*: proc (This:ptr ID2D1BitmapBrush, extendModeX:D2D1_EXTEND_MODE) {.stdcall.}
        SetExtendModeY*: proc (This:ptr ID2D1BitmapBrush, extendModeY:D2D1_EXTEND_MODE) {.stdcall.}
        SetInterpolationMode*: proc (This:ptr ID2D1BitmapBrush, interpolationMode:D2D1_BITMAP_INTERPOLATION_MODE) {.stdcall.}
        SetBitmap*: proc (This:ptr ID2D1BitmapBrush, bitmap:ptr ID2D1Bitmap) {.stdcall.}
        GetExtendModeX*: proc (This:ptr ID2D1BitmapBrush): D2D1_EXTEND_MODE {.stdcall.}
        GetExtendModeY*: proc (This:ptr ID2D1BitmapBrush): D2D1_EXTEND_MODE {.stdcall.}
        GetInterpolationMode*: proc (This:ptr ID2D1BitmapBrush): D2D1_BITMAP_INTERPOLATION_MODE {.stdcall.}
        GetBitmap*: proc (This:ptr ID2D1BitmapBrush, bitmap:ptr ptr ID2D1Bitmap) {.stdcall.}
    ID2D1BitmapBrush* = object
        lpVtbl*: ptr ID2D1BitmapBrushVtbl
        
    ID2D1RenderTargetVtbl* = object
        Base*: ID2D1ResourceVtbl
        CreateBitmap*: proc (This:ptr ID2D1RenderTarget, size:D2D1_SIZE_U, srcData:pointer, pitch:UINT32, bitmapProperties:ptr D2D1_BITMAP_PROPERTIES, bitmap:ptr ptr ID2D1Bitmap): HRESULT {.stdcall.}
        CreateBitmapFromWicBitmap*: proc (This:ptr ID2D1RenderTarget, wicBitmapSource:ptr IWICBitmapSource, bitmapProperties:ptr D2D1_BITMAP_PROPERTIES, bitmap:ptr ptr ID2D1Bitmap): HRESULT {.stdcall.}
        CreateSharedBitmap*: proc (This:ptr ID2D1RenderTarget, riid:ptr IID, data:pointer, bitmapProperties:ptr D2D1_BITMAP_PROPERTIES, bitmap:ptr ptr ID2D1Bitmap): HRESULT {.stdcall.}
        CreateBitmapBrush*: proc (This:ptr ID2D1RenderTarget, bitmap:ptr ID2D1Bitmap, bitmapBrushProperties:ptr D2D1_BITMAP_BRUSH_PROPERTIES, brushProperties:ptr D2D1_BRUSH_PROPERTIES, bitmapBrush:ptr ptr ID2D1BitmapBrush): HRESULT {.stdcall.}
        CreateSolidColorBrush*: proc (This:ptr ID2D1RenderTarget, color:ptr D2D1_COLOR_F, brushProperties:ptr D2D1_BRUSH_PROPERTIES, solidColorBrush:ptr ptr ID2D1SolidColorBrush): HRESULT {.stdcall.}
        CreateGradientStopCollection*: proc (This:ptr ID2D1RenderTarget, gradientStops:ptr D2D1_GRADIENT_STOP, gradientStopsCount:UINT, colorInterpolationGamma:D2D1_GAMMA, extendMode:D2D1_EXTEND_MODE, gradientStopCollection:ptr ptr ID2D1GradientStopCollection): HRESULT {.stdcall.}
        CreateLinearGradientBrush*: proc (This:ptr ID2D1RenderTarget, linearGradientBrushProperties:ptr D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES, brushProperties:ptr D2D1_BRUSH_PROPERTIES, gradientStopCollection:ptr ID2D1GradientStopCollection, linearGradientBrush:ptr ptr ID2D1LinearGradientBrush): HRESULT {.stdcall.}
        CreateRadialGradientBrush*: proc (This:ptr ID2D1RenderTarget, radialGradientBrushProperties:ptr D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES, brushProperties:ptr D2D1_BRUSH_PROPERTIES, gradientStopCollection:ptr ID2D1GradientStopCollection, radialGradientBrush:ptr ptr ID2D1RadialGradientBrush): HRESULT {.stdcall.}
        CreateCompatibleRenderTarget*: proc (This:ptr ID2D1RenderTarget, desiredSize:ptr D2D1_SIZE_F, desiredPixelSize:ptr D2D1_SIZE_U, desiredFormat:ptr D2D1_PIXEL_FORMAT, options:D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS, bitmapRenderTarget:ptr ptr ID2D1BitmapRenderTarget): HRESULT {.stdcall.}
        CreateLayer*: proc (This:ptr ID2D1RenderTarget, size:ptr D2D1_SIZE_F, layer:ptr ptr ID2D1Layer): HRESULT {.stdcall.}
        CreateMesh*: proc (This:ptr ID2D1RenderTarget, mesh:ptr ptr ID2D1Mesh): HRESULT {.stdcall.}
        DrawLine*: proc (This:ptr ID2D1RenderTarget, point0:D2D1_POINT_2F, point1:D2D1_POINT_2F, brush:ptr ID2D1Brush, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle) {.stdcall.}
        DrawRectangle*: proc (This:ptr ID2D1RenderTarget, rect:ptr D2D1_RECT_F, brush:ptr ID2D1Brush, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle) {.stdcall.}
        FillRectangle*: proc (This:ptr ID2D1RenderTarget, rect:ptr D2D1_RECT_F, brush:ptr ID2D1Brush) {.stdcall.}
        DrawRoundedRectangle*: proc (This:ptr ID2D1RenderTarget, roundedRect:ptr D2D1_ROUNDED_RECT, brush:ptr ID2D1Brush, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle) {.stdcall.}
        FillRoundedRectangle*: proc (This:ptr ID2D1RenderTarget, roundedRect:ptr D2D1_ROUNDED_RECT, brush:ptr ID2D1Brush) {.stdcall.}
        DrawEllipse*: proc (This:ptr ID2D1RenderTarget, ellipse:ptr D2D1_ELLIPSE, brush:ptr ID2D1Brush, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle) {.stdcall.}
        FillEllipse*: proc (This:ptr ID2D1RenderTarget, ellipse:ptr D2D1_ELLIPSE, brush:ptr ID2D1Brush) {.stdcall.}
        DrawGeometry*: proc (This:ptr ID2D1RenderTarget, geometry:ptr ID2D1Geometry, brush:ptr ID2D1Brush, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle) {.stdcall.}
        FillGeometry*: proc (This:ptr ID2D1RenderTarget, geometry:ptr ID2D1Geometry, brush:ptr ID2D1Brush, opacityBrush:ptr ID2D1Brush) {.stdcall.}
        FillMesh*: proc (This:ptr ID2D1RenderTarget, mesh:ptr ID2D1Mesh, brush:ptr ID2D1Brush) {.stdcall.}
        FillOpacityMask*: proc (This:ptr ID2D1RenderTarget, opacityMask:ptr ID2D1Bitmap, brush:ptr ID2D1Brush, content:D2D1_OPACITY_MASK_CONTENT, destinationRectangle:ptr D2D1_RECT_F, sourceRectangle:ptr D2D1_RECT_F) {.stdcall.}
        DrawBitmap*: proc (This:ptr ID2D1RenderTarget, bitmap:ptr ID2D1Bitmap, destinationRectangle:ptr D2D1_RECT_F, opacity:FLOAT, interpolationMode:D2D1_BITMAP_INTERPOLATION_MODE, sourceRectangle:ptr D2D1_RECT_F) {.stdcall.}
        DrawText*: proc (This:ptr ID2D1RenderTarget, str:ptr WCHAR, strLength:UINT, textFormat:ptr IDWriteTextFormat, layoutRect:ptr D2D1_RECT_F, defaultForegroundBrush:ptr ID2D1Brush, options:D2D1_DRAW_TEXT_OPTIONS, measuringMode:DWRITE_MEASURING_MODE) {.stdcall.}
        DrawTextLayout*: proc (This:ptr ID2D1RenderTarget, origin:D2D1_POINT_2F, textLayout:ptr IDWriteTextLayout, defaultForegroundBrush:ptr ID2D1Brush, options:D2D1_DRAW_TEXT_OPTIONS) {.stdcall.}
        DrawGlyphRun*: proc (This:ptr ID2D1RenderTarget, baselineOrigin:D2D1_POINT_2F, glyphRun:ptr DWRITE_GLYPH_RUN, foregroundBrush:ptr ID2D1Brush, measuringMode:DWRITE_MEASURING_MODE) {.stdcall.}
        SetTransform*: proc (This:ptr ID2D1RenderTarget, transform:ptr D2D1_MATRIX_3X2_F) {.stdcall.}
        GetTransform*: proc (This:ptr ID2D1RenderTarget, transform:ptr D2D1_MATRIX_3X2_F) {.stdcall.}
        SetAntialiasMode*: proc (This:ptr ID2D1RenderTarget, antialiasMode:D2D1_ANTIALIAS_MODE) {.stdcall.}
        GetAntialiasMode*: proc (This:ptr ID2D1RenderTarget): D2D1_ANTIALIAS_MODE {.stdcall.}
        SetTextAntialiasMode*: proc (This:ptr ID2D1RenderTarget, textAntialiasMode:D2D1_TEXT_ANTIALIAS_MODE) {.stdcall.}
        GetTextAntialiasMode*: proc (This:ptr ID2D1RenderTarget): D2D1_TEXT_ANTIALIAS_MODE {.stdcall.}
        SetTextRenderingParams*: proc (This:ptr ID2D1RenderTarget, textRenderingParams:ptr IDWriteRenderingParams) {.stdcall.}
        GetTextRenderingParams*: proc (This:ptr ID2D1RenderTarget, textRenderingParams:ptr ptr IDWriteRenderingParams) {.stdcall.}
        SetTags*: proc (This:ptr ID2D1RenderTarget, tag1:D2D1_TAG, tag2:D2D1_TAG) {.stdcall.}
        GetTags*: proc (This:ptr ID2D1RenderTarget, tag1:ptr D2D1_TAG, tag2:ptr D2D1_TAG) {.stdcall.}
        PushLayer*: proc (This:ptr ID2D1RenderTarget, layerParameters:ptr D2D1_LAYER_PARAMETERS, layer:ptr ID2D1Layer) {.stdcall.}
        PopLayer*: proc (This:ptr ID2D1RenderTarget) {.stdcall.}
        Flush*: proc (This:ptr ID2D1RenderTarget, tag1:ptr D2D1_TAG, tag2:ptr D2D1_TAG): HRESULT {.stdcall.}
        SaveDrawingState*: proc (This:ptr ID2D1RenderTarget, drawingStateBlock:ptr ID2D1DrawingStateBlock) {.stdcall.}
        RestoreDrawingState*: proc (This:ptr ID2D1RenderTarget, drawingStateBlock:ptr ID2D1DrawingStateBlock) {.stdcall.}
        PushAxisAlignedClip*: proc (This:ptr ID2D1RenderTarget, clipRect:ptr D2D1_RECT_F, antialiasMode:D2D1_ANTIALIAS_MODE) {.stdcall.}
        PopAxisAlignedClip*: proc (This:ptr ID2D1RenderTarget) {.stdcall.}
        Clear*: proc (This:ptr ID2D1RenderTarget, clearColor:ptr D2D1_COLOR_F) {.stdcall.}
        BeginDraw*: proc (This:ptr ID2D1RenderTarget) {.stdcall.}
        EndDraw*: proc (This:ptr ID2D1RenderTarget, tag1:ptr D2D1_TAG, tag2:ptr D2D1_TAG): HRESULT {.stdcall.}
        GetPixelFormat*: proc (This:ptr ID2D1RenderTarget): D2D1_PIXEL_FORMAT {.stdcall.}
        SetDpi*: proc (This:ptr ID2D1RenderTarget, dpiX:FLOAT, dpiY:FLOAT) {.stdcall.}
        GetDpi*: proc (This:ptr ID2D1RenderTarget, dpiX:ptr FLOAT, dpiY:ptr FLOAT) {.stdcall.}
        #~ GetSize*: proc (This:ptr ID2D1RenderTarget): D2D1_SIZE_F {.stdcall.}
        #~ GetPixelSize*: proc (This:ptr ID2D1RenderTarget): D2D1_SIZE_U {.stdcall.}
        GetSize*: proc (This: ptr ID2D1RenderTarget, size:ptr D2D1_SIZE_F) {.stdcall.}
        GetPixelSize*: proc (This: ptr ID2D1RenderTarget, size:ptr D2D1_SIZE_U) {.stdcall.}
        GetMaximumBitmapSize*: proc (This:ptr ID2D1RenderTarget): UINT32 {.stdcall.}
        IsSupported*: proc (This:ptr ID2D1RenderTarget, renderTargetProperties:ptr D2D1_RENDER_TARGET_PROPERTIES): BOOL {.stdcall.}
    ID2D1RenderTarget* = object
        lpVtbl*: ptr ID2D1RenderTargetVtbl
        
    ID2D1GeometryVtbl* = object
        Base*: ID2D1ResourceVtbl
        GetBounds*: proc (This:ptr ID2D1Geometry, worldTransform:ptr D2D1_MATRIX_3X2_F, bounds:ptr D2D1_RECT_F): HRESULT {.stdcall.}
        GetWidenedBounds*: proc (This:ptr ID2D1Geometry, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, bounds:ptr D2D1_RECT_F): HRESULT {.stdcall.}
        StrokeContainsPoint*: proc (This:ptr ID2D1Geometry, point:D2D1_POINT_2F, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, contains:ptr BOOL): HRESULT {.stdcall.}
        FillContainsPoint*: proc (This:ptr ID2D1Geometry, point:D2D1_POINT_2F, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, contains:ptr BOOL): HRESULT {.stdcall.}
        CompareWithGeometry*: proc (This:ptr ID2D1Geometry, inputGeometry:ptr ID2D1Geometry, inputGeometryTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, relation:ptr D2D1_GEOMETRY_RELATION): HRESULT {.stdcall.}
        Simplify*: proc (This:ptr ID2D1Geometry, simplificationOption:D2D1_GEOMETRY_SIMPLIFICATION_OPTION, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, geometrySink:ptr ID2D1SimplifiedGeometrySink): HRESULT {.stdcall.}
        Tessellate*: proc (This:ptr ID2D1Geometry, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, tessellationSink:ptr ID2D1TessellationSink): HRESULT {.stdcall.}
        CombineWithGeometry*: proc (This:ptr ID2D1Geometry, inputGeometry:ptr ID2D1Geometry, combineMode:D2D1_COMBINE_MODE, inputGeometryTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, geometrySink:ptr ID2D1SimplifiedGeometrySink): HRESULT {.stdcall.}
        Outline*: proc (This:ptr ID2D1Geometry, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, geometrySink:ptr ID2D1SimplifiedGeometrySink): HRESULT {.stdcall.}
        ComputeArea*: proc (This:ptr ID2D1Geometry, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, area:ptr FLOAT): HRESULT {.stdcall.}
        ComputeLength*: proc (This:ptr ID2D1Geometry, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, length:ptr FLOAT): HRESULT {.stdcall.}
        ComputePointAtLength*: proc (This:ptr ID2D1Geometry, length:FLOAT, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, point:ptr D2D1_POINT_2F, unitTangentVector:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
        Widen*: proc (This:ptr ID2D1Geometry, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, geometrySink:ptr ID2D1SimplifiedGeometrySink): HRESULT {.stdcall.}
    ID2D1Geometry* = object
        lpVtbl*: ptr ID2D1GeometryVtbl
        
    ID2D1BitmapRenderTargetVtbl* = object
        Base*: ID2D1RenderTargetVtbl
        GetBitmap*: proc (This:ptr ID2D1BitmapRenderTarget, bitmap:ptr ptr ID2D1Bitmap): HRESULT {.stdcall.}
    ID2D1BitmapRenderTarget* = object
        lpVtbl*: ptr ID2D1BitmapRenderTargetVtbl
        
    ID2D1DCRenderTargetVtbl* = object
        Base*: ID2D1RenderTargetVtbl
        BindDC*: proc (This:ptr ID2D1DCRenderTarget, hDC:HDC, pSubRect:ptr RECT): HRESULT {.stdcall.}
    ID2D1DCRenderTarget* = object
        lpVtbl*: ptr ID2D1DCRenderTargetVtbl
        
    ID2D1DrawingStateBlockVtbl* = object
        Base*: ID2D1ResourceVtbl
        GetDescription*: proc (This:ptr ID2D1DrawingStateBlock, stateDescription:ptr D2D1_DRAWING_STATE_DESCRIPTION) {.stdcall.}
        SetDescription*: proc (This:ptr ID2D1DrawingStateBlock, stateDescription:ptr D2D1_DRAWING_STATE_DESCRIPTION) {.stdcall.}
        SetTextRenderingParams*: proc (This:ptr ID2D1DrawingStateBlock, textRenderingParams:ptr IDWriteRenderingParams) {.stdcall.}
        GetTextRenderingParams*: proc (This:ptr ID2D1DrawingStateBlock, textRenderingParams:ptr ptr IDWriteRenderingParams) {.stdcall.}
    ID2D1DrawingStateBlock* = object
        lpVtbl*: ptr ID2D1DrawingStateBlockVtbl
        
    ID2D1SimplifiedGeometrySinkVtbl* = object
        Base*: IUnknownVtbl
        SetFillMode*: proc (This:ptr ID2D1SimplifiedGeometrySink, fillMode:D2D1_FILL_MODE) {.stdcall.}
        SetSegmentFlags*: proc (This:ptr ID2D1SimplifiedGeometrySink, vertexFlags:D2D1_PATH_SEGMENT) {.stdcall.}
        BeginFigure*: proc (This:ptr ID2D1SimplifiedGeometrySink, startPoint:D2D1_POINT_2F, figureBegin:D2D1_FIGURE_BEGIN) {.stdcall.}
        AddLines*: proc (This:ptr ID2D1SimplifiedGeometrySink, points:ptr D2D1_POINT_2F, pointsCount:UINT) {.stdcall.}
        AddBeziers*: proc (This:ptr ID2D1SimplifiedGeometrySink, beziers:ptr D2D1_BEZIER_SEGMENT, beziersCount:UINT) {.stdcall.}
        EndFigure*: proc (This:ptr ID2D1SimplifiedGeometrySink, figureEnd:D2D1_FIGURE_END) {.stdcall.}
        Close*: proc (This:ptr ID2D1SimplifiedGeometrySink): HRESULT {.stdcall.}
    ID2D1SimplifiedGeometrySink* = object
        lpVtbl*: ptr ID2D1SimplifiedGeometrySinkVtbl
        
    ID2D1EllipseGeometryVtbl* = object
        Base*: ID2D1GeometryVtbl
        GetEllipse*: proc (This:ptr ID2D1EllipseGeometry, ellipse:ptr D2D1_ELLIPSE) {.stdcall.}
    ID2D1EllipseGeometry* = object
        lpVtbl*: ptr ID2D1EllipseGeometryVtbl
        
    ID2D1FactoryVtbl* = object
        Base*: IUnknownVtbl
        ReloadSystemMetrics*: proc (This:ptr ID2D1Factory): HRESULT {.stdcall.}
        GetDesktopDpi*: proc (This:ptr ID2D1Factory, dpiX:ptr FLOAT, dpiY:ptr FLOAT) {.stdcall.}
        CreateRectangleGeometry*: proc (This:ptr ID2D1Factory, rectangle:ptr D2D1_RECT_F, rectangleGeometry:ptr ptr ID2D1RectangleGeometry): HRESULT {.stdcall.}
        CreateRoundedRectangleGeometry*: proc (This:ptr ID2D1Factory, roundedRectangle:ptr D2D1_ROUNDED_RECT, roundedRectangleGeometry:ptr ptr ID2D1RoundedRectangleGeometry): HRESULT {.stdcall.}
        CreateEllipseGeometry*: proc (This:ptr ID2D1Factory, ellipse:ptr D2D1_ELLIPSE, ellipseGeometry:ptr ptr ID2D1EllipseGeometry): HRESULT {.stdcall.}
        CreateGeometryGroup*: proc (This:ptr ID2D1Factory, fillMode:D2D1_FILL_MODE, geometries:ptr ptr ID2D1Geometry, geometriesCount:UINT, geometryGroup:ptr ptr ID2D1GeometryGroup): HRESULT {.stdcall.}
        CreateTransformedGeometry*: proc (This:ptr ID2D1Factory, sourceGeometry:ptr ID2D1Geometry, transform:ptr D2D1_MATRIX_3X2_F, transformedGeometry:ptr ptr ID2D1TransformedGeometry): HRESULT {.stdcall.}
        CreatePathGeometry*: proc (This:ptr ID2D1Factory, pathGeometry:ptr ptr ID2D1PathGeometry): HRESULT {.stdcall.}
        CreateStrokeStyle*: proc (This:ptr ID2D1Factory, strokeStyleProperties:ptr D2D1_STROKE_STYLE_PROPERTIES, dashes:ptr FLOAT, dashesCount:UINT, strokeStyle:ptr ptr ID2D1StrokeStyle): HRESULT {.stdcall.}
        CreateDrawingStateBlock*: proc (This:ptr ID2D1Factory, drawingStateDescription:ptr D2D1_DRAWING_STATE_DESCRIPTION, textRenderingParams:ptr IDWriteRenderingParams, drawingStateBlock:ptr ptr ID2D1DrawingStateBlock): HRESULT {.stdcall.}
        CreateWicBitmapRenderTarget*: proc (This:ptr ID2D1Factory, target:ptr IWICBitmap, renderTargetProperties:ptr D2D1_RENDER_TARGET_PROPERTIES, renderTarget:ptr ptr ID2D1RenderTarget): HRESULT {.stdcall.}
        CreateHwndRenderTarget*: proc (This:ptr ID2D1Factory, renderTargetProperties:ptr D2D1_RENDER_TARGET_PROPERTIES, hwndRenderTargetProperties:ptr D2D1_HWND_RENDER_TARGET_PROPERTIES, hwndRenderTarget:ptr ptr ID2D1HwndRenderTarget): HRESULT {.stdcall.}
        CreateDxgiSurfaceRenderTarget*: proc (This:ptr ID2D1Factory, dxgiSurface:ptr IDXGISurface, renderTargetProperties:ptr D2D1_RENDER_TARGET_PROPERTIES, renderTarget:ptr ptr ID2D1RenderTarget): HRESULT {.stdcall.}
        CreateDCRenderTarget*: proc (This:ptr ID2D1Factory, renderTargetProperties:ptr D2D1_RENDER_TARGET_PROPERTIES, dcRenderTarget:ptr ptr ID2D1DCRenderTarget): HRESULT {.stdcall.}
    ID2D1Factory* = object
        lpVtbl*: ptr ID2D1FactoryVtbl
        
    ID2D1GdiInteropRenderTargetVtbl* = object
        Base*: IUnknownVtbl
        GetDC*: proc (This:ptr ID2D1GdiInteropRenderTarget, mode:D2D1_DC_INITIALIZE_MODE, hdc:ptr HDC): HRESULT {.stdcall.}
        ReleaseDC*: proc (This:ptr ID2D1GdiInteropRenderTarget, update:ptr RECT): HRESULT {.stdcall.}
    ID2D1GdiInteropRenderTarget* = object
        lpVtbl*: ptr ID2D1GdiInteropRenderTargetVtbl
        
    ID2D1GeometryGroupVtbl* = object
        Base*: ID2D1GeometryVtbl
        GetFillMode*: proc (This:ptr ID2D1GeometryGroup): D2D1_FILL_MODE {.stdcall.}
        GetSourceGeometryCount*: proc (This:ptr ID2D1GeometryGroup): UINT32 {.stdcall.}
        GetSourceGeometries*: proc (This:ptr ID2D1GeometryGroup, geometries:ptr ptr ID2D1Geometry, geometriesCount:UINT) {.stdcall.}
    ID2D1GeometryGroup* = object
        lpVtbl*: ptr ID2D1GeometryGroupVtbl
        
    ID2D1GeometrySinkVtbl* = object
        Base*: ID2D1SimplifiedGeometrySinkVtbl
        AddLine*: proc (This:ptr ID2D1GeometrySink, point:D2D1_POINT_2F) {.stdcall.}
        AddBezier*: proc (This:ptr ID2D1GeometrySink, bezier:ptr D2D1_BEZIER_SEGMENT) {.stdcall.}
        AddQuadraticBezier*: proc (This:ptr ID2D1GeometrySink, bezier:ptr D2D1_QUADRATIC_BEZIER_SEGMENT) {.stdcall.}
        AddQuadraticBeziers*: proc (This:ptr ID2D1GeometrySink, beziers:ptr D2D1_QUADRATIC_BEZIER_SEGMENT, beziersCount:UINT) {.stdcall.}
        AddArc*: proc (This:ptr ID2D1GeometrySink, arc:ptr D2D1_ARC_SEGMENT) {.stdcall.}
    ID2D1GeometrySink* = object
        lpVtbl*: ptr ID2D1GeometrySinkVtbl
        
    ID2D1GradientStopCollectionVtbl* = object
        Base*: ID2D1ResourceVtbl
        GetGradientStopCount*: proc (This:ptr ID2D1GradientStopCollection): UINT32 {.stdcall.}
        GetGradientStops*: proc (This:ptr ID2D1GradientStopCollection, gradientStops:ptr D2D1_GRADIENT_STOP, gradientStopsCount:UINT) {.stdcall.}
        GetColorInterpolationGamma*: proc (This:ptr ID2D1GradientStopCollection): D2D1_GAMMA {.stdcall.}
        GetExtendMode*: proc (This:ptr ID2D1GradientStopCollection): D2D1_EXTEND_MODE {.stdcall.}
    ID2D1GradientStopCollection* = object
        lpVtbl*: ptr ID2D1GradientStopCollectionVtbl
        
    ID2D1HwndRenderTargetVtbl* = object
        Base*: ID2D1RenderTargetVtbl
        CheckWindowState*: proc (This:ptr ID2D1HwndRenderTarget): D2D1_WINDOW_STATE {.stdcall.}
        Resize*: proc (This:ptr ID2D1HwndRenderTarget, pixelSize:ptr D2D1_SIZE_U): HRESULT {.stdcall.}
        GetHwnd*: proc (This:ptr ID2D1HwndRenderTarget): HWND {.stdcall.}
    ID2D1HwndRenderTarget* = object
        lpVtbl*: ptr ID2D1HwndRenderTargetVtbl
        
    ID2D1LayerVtbl* = object
        Base*: ID2D1ResourceVtbl
        GetSize*: proc (This:ptr ID2D1Layer, size:ptr D2D1_SIZE_F) {.stdcall.}
    ID2D1Layer* = object
        lpVtbl*: ptr ID2D1LayerVtbl
        
    ID2D1LinearGradientBrushVtbl* = object
        Base*: ID2D1BrushVtbl
        SetStartPoint*: proc (This:ptr ID2D1LinearGradientBrush, startPoint:D2D1_POINT_2F) {.stdcall.}
        SetEndPoint*: proc (This:ptr ID2D1LinearGradientBrush, endPoint:D2D1_POINT_2F) {.stdcall.}
        GetStartPoint*: proc (This:ptr ID2D1LinearGradientBrush): D2D1_POINT_2F {.stdcall.}
        GetEndPoint*: proc (This:ptr ID2D1LinearGradientBrush): D2D1_POINT_2F {.stdcall.}
        GetGradientStopCollection*: proc (This:ptr ID2D1LinearGradientBrush, gradientStopCollection:ptr ptr ID2D1GradientStopCollection) {.stdcall.}
    ID2D1LinearGradientBrush* = object
        lpVtbl*: ptr ID2D1LinearGradientBrushVtbl
        
    ID2D1MeshVtbl* = object 
        Base*: ID2D1ResourceVtbl
        Open*: proc (This: ptr ID2D1Mesh; tessellationSink: ptr ptr ID2D1TessellationSink): HRESULT {.stdcall.}
    ID2D1Mesh* = object 
        lpVtbl*: ptr ID2D1MeshVtbl
    
    ID2D1PathGeometryVtbl* = object
        Base*: ID2D1GeometryVtbl
        Open*: proc (This:ptr ID2D1PathGeometry, geometrySink:ptr ptr ID2D1GeometrySink): HRESULT {.stdcall.}
        Stream*: proc (This:ptr ID2D1PathGeometry, geometrySink:ptr ID2D1GeometrySink): HRESULT {.stdcall.}
        GetSegmentCount*: proc (This:ptr ID2D1PathGeometry, count:ptr UINT32): HRESULT {.stdcall.}
        GetFigureCount*: proc (This:ptr ID2D1PathGeometry, count:ptr UINT32): HRESULT {.stdcall.}
    ID2D1PathGeometry* = object
        lpVtbl*: ptr ID2D1PathGeometryVtbl
        
    ID2D1RadialGradientBrushVtbl* = object
        Base*: ID2D1BrushVtbl
        SetCenter*: proc (This:ptr ID2D1RadialGradientBrush, center:D2D1_POINT_2F) {.stdcall.}
        SetGradientOriginOffset*: proc (This:ptr ID2D1RadialGradientBrush, gradientOriginOffset:D2D1_POINT_2F) {.stdcall.}
        SetRadiusX*: proc (This:ptr ID2D1RadialGradientBrush, radiusX:FLOAT) {.stdcall.}
        SetRadiusY*: proc (This:ptr ID2D1RadialGradientBrush, radiusY:FLOAT) {.stdcall.}
        GetCenter*: proc (This:ptr ID2D1RadialGradientBrush): D2D1_POINT_2F {.stdcall.}
        GetGradientOriginOffset*: proc (This:ptr ID2D1RadialGradientBrush): D2D1_POINT_2F {.stdcall.}
        GetRadiusX*: proc (This:ptr ID2D1RadialGradientBrush): FLOAT {.stdcall.}
        GetRadiusY*: proc (This:ptr ID2D1RadialGradientBrush): FLOAT {.stdcall.}
        GetGradientStopCollection*: proc (This:ptr ID2D1RadialGradientBrush, gradientStopCollection:ptr ptr ID2D1GradientStopCollection) {.stdcall.}
    ID2D1RadialGradientBrush* = object
        lpVtbl*: ptr ID2D1RadialGradientBrushVtbl
        
    ID2D1RectangleGeometryVtbl* = object
        Base*: ID2D1GeometryVtbl
        GetRect*: proc (This:ptr ID2D1RectangleGeometry, rect:ptr D2D1_RECT_F) {.stdcall.}
    ID2D1RectangleGeometry* = object
        lpVtbl*: ptr ID2D1RectangleGeometryVtbl
        
    ID2D1RoundedRectangleGeometryVtbl* = object
        Base*: ID2D1GeometryVtbl
        GetRoundedRect*: proc (This:ptr ID2D1RoundedRectangleGeometry, roundedRect:ptr D2D1_ROUNDED_RECT) {.stdcall.}
    ID2D1RoundedRectangleGeometry* = object
        lpVtbl*: ptr ID2D1RoundedRectangleGeometryVtbl
        
    ID2D1SolidColorBrushVtbl* = object
        Base*: ID2D1BrushVtbl
        SetColor*: proc (This:ptr ID2D1SolidColorBrush, color:ptr D2D1_COLOR_F) {.stdcall.}
        GetColor*: proc (This:ptr ID2D1SolidColorBrush, color:ptr D2D1_COLOR_F) {.stdcall.}
    ID2D1SolidColorBrush* = object
        lpVtbl*: ptr ID2D1SolidColorBrushVtbl
        
    ID2D1StrokeStyleVtbl* = object
        Base*: ID2D1ResourceVtbl
        GetStartCap*: proc (This:ptr ID2D1StrokeStyle): D2D1_CAP_STYLE {.stdcall.}
        GetEndCap*: proc (This:ptr ID2D1StrokeStyle): D2D1_CAP_STYLE {.stdcall.}
        GetDashCap*: proc (This:ptr ID2D1StrokeStyle): D2D1_CAP_STYLE {.stdcall.}
        GetMiterLimit*: proc (This:ptr ID2D1StrokeStyle): FLOAT {.stdcall.}
        GetLineJoin*: proc (This:ptr ID2D1StrokeStyle): D2D1_LINE_JOIN {.stdcall.}
        GetDashOffset*: proc (This:ptr ID2D1StrokeStyle): FLOAT {.stdcall.}
        GetDashStyle*: proc (This:ptr ID2D1StrokeStyle): D2D1_DASH_STYLE {.stdcall.}
        GetDashesCount*: proc (This:ptr ID2D1StrokeStyle): UINT32 {.stdcall.}
        GetDashes*: proc (This:ptr ID2D1StrokeStyle, dashes:ptr FLOAT, dashesCount:UINT) {.stdcall.}
    ID2D1StrokeStyle* = object
        lpVtbl*: ptr ID2D1StrokeStyleVtbl
        
    ID2D1TessellationSinkVtbl* = object
        Base*: IUnknownVtbl
        AddTriangles*: proc (This:ptr ID2D1TessellationSink, triangles:ptr D2D1_TRIANGLE, trianglesCount:UINT) {.stdcall.}
        Close*: proc (This:ptr ID2D1TessellationSink): HRESULT {.stdcall.}
    ID2D1TessellationSink* = object
        lpVtbl*: ptr ID2D1TessellationSinkVtbl
        
    ID2D1TransformedGeometryVtbl* = object
        Base*: ID2D1GeometryVtbl
        GetSourceGeometry*: proc (This:ptr ID2D1TransformedGeometry, sourceGeometry:ptr ptr ID2D1Geometry) {.stdcall.}
        GetTransform*: proc (This:ptr ID2D1TransformedGeometry, transform:ptr D2D1_MATRIX_3X2_F) {.stdcall.}
    ID2D1TransformedGeometry* = object
        lpVtbl*: ptr ID2D1TransformedGeometryVtbl

#~ proc D2D1CreateFactory*[T](factoryType: D2D1_FACTORY_TYPE; ppIFactory: ptr ptr T): HRESULT=
    #~ D2D1CreateFactory*(factoryType, __uuidof(T), nil, ppIFactory)
proc D2D1CreateFactory*(factoryType: D2D1_FACTORY_TYPE; riid:ptr IID; pFactoryOptions:ptr D2D1_FACTORY_OPTIONS; ppIFactory:ptr pointer): HRESULT {.stdcall, importc.}
proc D2D1MakeRotateMatrix*(angle:FLOAT; center:D2D1_POINT_2F; matrix:ptr D2D1_MATRIX_3X2_F) {.stdcall, importc.}
proc D2D1MakeSkewMatrix*(angleX:FLOAT; angleY:FLOAT; center: D2D1_POINT_2F; matrix:ptr D2D1_MATRIX_3X2_F) {.stdcall, importc.}
proc D2D1IsMatrixInvertible*(matrix:ptr D2D1_MATRIX_3X2_F): BOOL {.stdcall, importc.}
proc D2D1InvertMatrix*(matrix:ptr D2D1_MATRIX_3X2_F): BOOL {.stdcall, importc.}
