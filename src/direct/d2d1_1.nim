import winim/lean, winim/inc/wincodec
import d2d1, dcommon, dxgiformat, dxgi, dwrite

type
  D2D1_MATRIX_4X3_F* = D2D_MATRIX_4X3_F
  D2D1_MATRIX_4X4_F* = D2D_MATRIX_4X4_F
  D2D1_MATRIX_5X4_F* = D2D_MATRIX_5X4_F
  D2D1_VECTOR_2F* = D2D_VECTOR_2F
  D2D1_VECTOR_3F* = D2D_VECTOR_3F
  D2D1_VECTOR_4F* = D2D_VECTOR_4F
#~ type ID2D1ColorContext* = object
#~ type IWICColorContext* = object
#~ type IWICImagingFactory* = object
type IPrintDocumentPackageTarget* = object
#~ type IDWriteFactory* = object
#~ typedef interface IWICColorContext IWICColorContext;
#~ typedef interface IWICImagingFactory IWICImagingFactory;
#~ typedef interface IPrintDocumentPackageTarget IPrintDocumentPackageTarget;
#~ typedef interface IDWriteFactory IDWriteFactory;

#~ typedef struct D2D1_PROPERTY_BINDING D2D1_PROPERTY_BINDING;

#~ #ifndef D2D_USE_C_DEFINITIONS
#~ interface ID2D1Device;
#~ interface ID2D1Effect;
#~ #else
#~ typedef interface ID2D1Device ID2D1Device;
#~ typedef interface ID2D1Effect ID2D1Effect;
#~ type ID2D1Device* = object
#~ type ID2D1Effect* = object


const IID_ID2D1Properties* = IID(Data1:0x483473d7'i32, Data2:0xcd46, Data3:0x4f9d, Data4:[0x9d'u8, 0x3a, 0x31, 0x12, 0xaa, 0x80, 0x15, 0x9d])
const IID_ID2D1GdiMetafileSink* = IID(Data1:0x82237326'i32, Data2:0x8111, Data3:0x4f7c, Data4:[0xbc'u8, 0xf4, 0xb5, 0xc1, 0x17, 0x55, 0x64, 0xfe])
const IID_ID2D1GdiMetafile* = IID(Data1:0x2f543dc3'i32, Data2:0xcfc1, Data3:0x4211, Data4:[0x86'u8, 0x4f, 0xcf, 0xd9, 0x1c, 0x6f, 0x33, 0x95])
const IID_ID2D1StrokeStyle1* = IID(Data1:0x10a72a66'i32, Data2:0xe91c, Data3:0x43f4, Data4:[0x99'u8, 0x3f, 0xdd, 0xf4, 0xb8, 0x2b, 0x0b, 0x4a])
const IID_ID2D1CommandSink* = IID(Data1:0x54d7898a'i32, Data2:0xa061, Data3:0x40a7, Data4:[0xbe'u8, 0xc7, 0xe4, 0x65, 0xbc, 0xba, 0x2c, 0x4f])
const IID_ID2D1CommandList* = IID(Data1:0xb4f34a19'i32, Data2:0x2383, Data3:0x4d76, Data4:[0x94'u8, 0xf6, 0xec, 0x34, 0x36, 0x57, 0xc3, 0xdc])
const IID_ID2D1PrintControl* = IID(Data1:0x2c1d867d'i32, Data2:0xc290, Data3:0x41c8, Data4:[0xae'u8, 0x7e, 0x34, 0xa9, 0x87, 0x02, 0xe9, 0xa5])
const IID_ID2D1Effect* = IID(Data1:0x28211a43'i32, Data2:0x7d89, Data3:0x476f, Data4:[0x81'u8, 0x81, 0x2d, 0x61, 0x59, 0xb2, 0x20, 0xad])
const IID_ID2D1Bitmap1* = IID(Data1:0xa898a84c'i32, Data2:0x3873, Data3:0x4588, Data4:[0xb0'u8, 0x8b, 0xeb, 0xbf, 0x97, 0x8d, 0xf0, 0x41])
const IID_ID2D1ImageBrush* = IID(Data1:0xfe9e984d'i32, Data2:0x3f95, Data3:0x407c, Data4:[0xb5'u8, 0xdb, 0xcb, 0x94, 0xd4, 0xe8, 0xf8, 0x7c])
const IID_ID2D1BitmapBrush1* = IID(Data1:0x41343a53'i32, Data2:0xe41a, Data3:0x49a2, Data4:[0x91'u8, 0xcd, 0x21, 0x79, 0x3b, 0xbb, 0x62, 0xe5])
const IID_ID2D1GradientStopCollection1* = IID(Data1:0xae1572f4'i32, Data2:0x5dd0, Data3:0x4777, Data4:[0x99'u8, 0x8b, 0x92, 0x79, 0x47, 0x2a, 0xe6, 0x3b])
const IID_ID2D1ColorContext* = IID(Data1:0x1c4820bb'i32, Data2:0x5771, Data3:0x4518, Data4:[0xa5'u8, 0x81, 0x2f, 0xe4, 0xdd, 0x0e, 0xc6, 0x57])
const IID_ID2D1DeviceContext* = IID(Data1:0xe8f7fe7a'i32, Data2:0x191c, Data3:0x466d, Data4:[0xad'u8, 0x95, 0x97, 0x56, 0x78, 0xbd, 0xa9, 0x98])
const IID_ID2D1Device* = IID(Data1:0x47dd575d'i32, Data2:0xac05, Data3:0x4cdd, Data4:[0x80'u8, 0x49, 0x9b, 0x02, 0xcd, 0x16, 0xf4, 0x4c])
const IID_ID2D1DrawingStateBlock1* = IID(Data1:0x689f1f85'i32, Data2:0xc72e, Data3:0x4e33, Data4:[0x8f'u8, 0x19, 0x85, 0x75, 0x4e, 0xfd, 0x5a, 0xce])
const IID_ID2D1PathGeometry1* = IID(Data1:0x62baa2d2'i32, Data2:0xab54, Data3:0x41b7, Data4:[0xb8'u8, 0x72, 0x78, 0x7e, 0x01, 0x06, 0xa4, 0x21])
const IID_ID2D1Factory1* = IID(Data1:0xbb12d362'i32, Data2:0xdaee, Data3:0x4b9a, Data4:[0xaa'u8, 0x1d, 0x14, 0xba, 0x40, 0x1c, 0xfa, 0x1f])
const IID_ID2D1Multithread* = IID(Data1:0x31e6e7bc'i32, Data2:0xe0ff, Data3:0x4d46, Data4:[0x8c'u8, 0x64, 0xa0, 0xa8, 0xc4, 0x1c, 0x15, 0xd3])

type
    D2D1_PROPERTY_TYPE*  =  enum
        D2D1_PROPERTY_TYPE_UNKNOWN  =  0,  D2D1_PROPERTY_TYPE_STRING  =  1,
        D2D1_PROPERTY_TYPE_BOOL  =  2,  D2D1_PROPERTY_TYPE_UINT32  =  3,
        D2D1_PROPERTY_TYPE_INT32  =  4,  D2D1_PROPERTY_TYPE_FLOAT  =  5,
        D2D1_PROPERTY_TYPE_VECTOR2  =  6,  D2D1_PROPERTY_TYPE_VECTOR3  =  7,
        D2D1_PROPERTY_TYPE_VECTOR4  =  8,  D2D1_PROPERTY_TYPE_BLOB  =  9,
        D2D1_PROPERTY_TYPE_IUNKNOWN  =  10,  D2D1_PROPERTY_TYPE_ENUM  =  11,
        D2D1_PROPERTY_TYPE_ARRAY  =  12,  D2D1_PROPERTY_TYPE_CLSID  =  13,
        D2D1_PROPERTY_TYPE_MATRIX_3X2  =  14,  D2D1_PROPERTY_TYPE_MATRIX_4X3  =  15,
        D2D1_PROPERTY_TYPE_MATRIX_4X4  =  16,  D2D1_PROPERTY_TYPE_MATRIX_5X4  =  17,
        D2D1_PROPERTY_TYPE_COLOR_CONTEXT  =  18,
        D2D1_PROPERTY_TYPE_FORCE_DWORD  =  0xffffffff
    D2D1_CHANNEL_DEPTH*  =  enum
        D2D1_CHANNEL_DEPTH_DEFAULT  =  0,  D2D1_CHANNEL_DEPTH_1  =  1,
        D2D1_CHANNEL_DEPTH_4  =  4,  D2D1_CHANNEL_DEPTH_FORCE_DWORD  =  0xffffffff
    D2D1_BUFFER_PRECISION*  =  enum
        D2D1_BUFFER_PRECISION_UNKNOWN  =  0,  D2D1_BUFFER_PRECISION_8BPC_UNORM  =  1,
        D2D1_BUFFER_PRECISION_8BPC_UNORM_SRGB  =  2,
        D2D1_BUFFER_PRECISION_16BPC_UNORM  =  3,  D2D1_BUFFER_PRECISION_16BPC_FLOAT  =  4,
        D2D1_BUFFER_PRECISION_32BPC_FLOAT  =  5,
        D2D1_BUFFER_PRECISION_FORCE_DWORD  =  0xffffffff
    D2D1_COLOR_SPACE*  =  enum
        D2D1_COLOR_SPACE_CUSTOM  =  0,  D2D1_COLOR_SPACE_SRGB  =  1,
        D2D1_COLOR_SPACE_SCRGB  =  2,  D2D1_COLOR_SPACE_FORCE_DWORD  =  0xffffffff
    D2D1_DEVICE_CONTEXT_OPTIONS*  =  enum
        D2D1_DEVICE_CONTEXT_OPTIONS_NONE  =  0,
        D2D1_DEVICE_CONTEXT_OPTIONS_ENABLE_MULTITHREADED_OPTIMIZATIONS  =  1,
        D2D1_DEVICE_CONTEXT_OPTIONS_FORCE_DWORD  =  0xffffffff
    D2D1_BITMAP_OPTIONS*  =  enum
        D2D1_BITMAP_OPTIONS_NONE  =  0x00000000,  D2D1_BITMAP_OPTIONS_TARGET  =  0x00000001,
        D2D1_BITMAP_OPTIONS_CANNOT_DRAW  =  0x00000002,
        D2D1_BITMAP_OPTIONS_CPU_READ  =  0x00000004,
        D2D1_BITMAP_OPTIONS_GDI_COMPATIBLE  =  0x00000008,
        D2D1_BITMAP_OPTIONS_FORCE_DWORD  =  0xffffffff
    D2D1_MAP_OPTIONS*  =  enum
        D2D1_MAP_OPTIONS_NONE  =  0,  D2D1_MAP_OPTIONS_READ  =  1,  D2D1_MAP_OPTIONS_WRITE  =  2,
        D2D1_MAP_OPTIONS_DISCARD  =  4,  D2D1_MAP_OPTIONS_FORCE_DWORD  =  0xffffffff
    D2D1_COLOR_INTERPOLATION_MODE*  =  enum
        D2D1_COLOR_INTERPOLATION_MODE_STRAIGHT  =  0,
        D2D1_COLOR_INTERPOLATION_MODE_PREMULTIPLIED  =  1,
        D2D1_COLOR_INTERPOLATION_MODE_FORCE_DWORD  =  0xffffffff
    D2D1_INTERPOLATION_MODE*  =  enum
        D2D1_INTERPOLATION_MODE_NEAREST_NEIGHBOR  =  D2D1_INTERPOLATION_MODE_DEFINITION_NEAREST_NEIGHBOR,
        D2D1_INTERPOLATION_MODE_LINEAR  =  D2D1_INTERPOLATION_MODE_DEFINITION_LINEAR,
        D2D1_INTERPOLATION_MODE_CUBIC  =  D2D1_INTERPOLATION_MODE_DEFINITION_CUBIC,  D2D1_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR  =  D2D1_INTERPOLATION_MODE_DEFINITION_MULTI_SAMPLE_LINEAR,  D2D1_INTERPOLATION_MODE_ANISOTROPIC  =  D2D1_INTERPOLATION_MODE_DEFINITION_ANISOTROPIC,  D2D1_INTERPOLATION_MODE_HIGH_QUALITY_CUBIC  =  D2D1_INTERPOLATION_MODE_DEFINITION_HIGH_QUALITY_CUBIC,
        D2D1_INTERPOLATION_MODE_FORCE_DWORD  =  0xffffffff
    D2D1_COMPOSITE_MODE*  =  enum
        D2D1_COMPOSITE_MODE_SOURCE_OVER  =  0,  D2D1_COMPOSITE_MODE_DESTINATION_OVER  =  1,
        D2D1_COMPOSITE_MODE_SOURCE_IN  =  2,  D2D1_COMPOSITE_MODE_DESTINATION_IN  =  3,
        D2D1_COMPOSITE_MODE_SOURCE_OUT  =  4,  D2D1_COMPOSITE_MODE_DESTINATION_OUT  =  5,
        D2D1_COMPOSITE_MODE_SOURCE_ATOP  =  6,  D2D1_COMPOSITE_MODE_DESTINATION_ATOP  =  7,
        D2D1_COMPOSITE_MODE_XOR  =  8,  D2D1_COMPOSITE_MODE_PLUS  =  9,
        D2D1_COMPOSITE_MODE_SOURCE_COPY  =  10,
        D2D1_COMPOSITE_MODE_BOUNDED_SOURCE_COPY  =  11,
        D2D1_COMPOSITE_MODE_MASK_INVERT  =  12,
        D2D1_COMPOSITE_MODE_FORCE_DWORD  =  0xffffffff
    D2D1_PRIMITIVE_BLEND*  =  enum
        D2D1_PRIMITIVE_BLEND_SOURCE_OVER  =  0,  
        D2D1_PRIMITIVE_BLEND_COPY  =  1,
        D2D1_PRIMITIVE_BLEND_MIN  =  2,  
        D2D1_PRIMITIVE_BLEND_ADD  =  3,
        D2D1_PRIMITIVE_BLEND_FORCE_DWORD  =  0xffffffff
    D2D1_UNIT_MODE*  =  enum
        D2D1_UNIT_MODE_DIPS  =  0,  
        D2D1_UNIT_MODE_PIXELS  =  1,
        D2D1_UNIT_MODE_FORCE_DWORD  =  0xffffffff
    D2D1_LAYER_OPTIONS1*  =  enum
        D2D1_LAYER_OPTIONS1_NONE  =  0,
        D2D1_LAYER_OPTIONS1_INITIALIZE_FROM_BACKGROUND  =  1,
        D2D1_LAYER_OPTIONS1_IGNORE_ALPHA  =  2,
        D2D1_LAYER_OPTIONS1_FORCE_DWORD  =  0xffffffff
    D2D1_PRINT_FONT_SUBSET_MODE*  =  enum
        D2D1_PRINT_FONT_SUBSET_MODE_DEFAULT  =  0,
        D2D1_PRINT_FONT_SUBSET_MODE_EACHPAGE  =  1,  
        D2D1_PRINT_FONT_SUBSET_MODE_NONE  =  2,
        D2D1_PRINT_FONT_SUBSET_MODE_FORCE_DWORD  =  0xffffffff
    D2D1_STROKE_TRANSFORM_TYPE*  =  enum
        D2D1_STROKE_TRANSFORM_TYPE_NORMAL  =  0,  
        D2D1_STROKE_TRANSFORM_TYPE_FIXED  =  1,
        D2D1_STROKE_TRANSFORM_TYPE_HAIRLINE  =  2,
        D2D1_STROKE_TRANSFORM_TYPE_FORCE_DWORD  =  0xffffffff
    D2D1_BITMAP_PROPERTIES1*  {.bycopy.}  =  object
        pixelFormat*:  D2D1_PIXEL_FORMAT
        dpiX*:  FLOAT
        dpiY*:  FLOAT
        bitmapOptions*:  D2D1_BITMAP_OPTIONS
        colorContext*:  ptr  ID2D1ColorContext

    D2D1_MAPPED_RECT*  {.bycopy.}  =  object
        pitch*:  UINT32
        bits*:  ptr  BYTE

    D2D1_IMAGE_BRUSH_PROPERTIES*  {.bycopy.}  =  object
        sourceRectangle*:  D2D1_RECT_F
        extendModeX*:  D2D1_EXTEND_MODE
        extendModeY*:  D2D1_EXTEND_MODE
        interpolationMode*:  D2D1_INTERPOLATION_MODE

    D2D1_BITMAP_BRUSH_PROPERTIES1*  {.bycopy.}  =  object
        extendModeX*:  D2D1_EXTEND_MODE
        extendModeY*:  D2D1_EXTEND_MODE
        interpolationMode*:  D2D1_INTERPOLATION_MODE

    D2D1_LAYER_PARAMETERS1*  {.bycopy.}  =  object
        contentBounds*:  D2D1_RECT_F
        geometricMask*:  ptr  ID2D1Geometry
        maskAntialiasMode*:  D2D1_ANTIALIAS_MODE
        maskTransform*:  D2D1_MATRIX_3X2_F
        opacity*:  FLOAT
        opacityBrush*:  ptr  ID2D1Brush
        layerOptions*:  D2D1_LAYER_OPTIONS1

    D2D1_RENDERING_CONTROLS*  {.bycopy.}  =  object
        bufferPrecision*:  D2D1_BUFFER_PRECISION
        tileSize*:  D2D1_SIZE_U

    D2D1_EFFECT_INPUT_DESCRIPTION*  {.bycopy.}  =  object
        effect*:  ptr  ID2D1Effect
        inputIndex*:  UINT32
        inputRectangle*:  D2D1_RECT_F

    D2D1_PRINT_CONTROL_PROPERTIES*  {.bycopy.}  =  object
        fontSubset*:  D2D1_PRINT_FONT_SUBSET_MODE
        rasterDPI*:  FLOAT
        colorSpace*:  D2D1_COLOR_SPACE

    D2D1_STROKE_STYLE_PROPERTIES1*  {.bycopy.}  =  object
        startCap*:  D2D1_CAP_STYLE
        endCap*:  D2D1_CAP_STYLE
        dashCap*:  D2D1_CAP_STYLE
        lineJoin*:  D2D1_LINE_JOIN
        miterLimit*:  FLOAT
        dashStyle*:  D2D1_DASH_STYLE
        dashOffset*:  FLOAT
        transformType*:  D2D1_STROKE_TRANSFORM_TYPE

    D2D1_DRAWING_STATE_DESCRIPTION1*  {.bycopy.}  =  object
        antialiasMode*:  D2D1_ANTIALIAS_MODE
        textAntialiasMode*:  D2D1_TEXT_ANTIALIAS_MODE
        tag1*:  D2D1_TAG
        tag2*:  D2D1_TAG
        transform*:  D2D1_MATRIX_3X2_F
        primitiveBlend*:  D2D1_PRIMITIVE_BLEND
        unitMode*:  D2D1_UNIT_MODE

    D2D1_POINT_DESCRIPTION*  {.bycopy.}  =  object
        point*:  D2D1_POINT_2F
        unitTangentVector*:  D2D1_POINT_2F
        endSegment*:  UINT32
        endFigure*:  UINT32
        lengthToEndSegment*:  FLOAT



    ID2D1PropertiesVtbl* = object
        QueryInterface*: proc(This:ptr ID2D1Properties; riid: ptr IID; ppvObject: ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc(This:ptr ID2D1Properties): ULONG {.stdcall.}
        Release*: proc(This:ptr ID2D1Properties): ULONG {.stdcall.}
        GetPropertyCount*: proc (This:ptr ID2D1Properties): UINT32 {.stdcall.}
        GetPropertyName*: proc (This:ptr ID2D1Properties; index:UINT32, name:PWSTR, nameCount:UINT32): HRESULT {.stdcall.}
        GetPropertyNameLength*: proc (This:ptr ID2D1Properties; index:UINT32): UINT32 {.stdcall.}
        GetType*: proc (This:ptr ID2D1Properties; index:UINT32): D2D1_PROPERTY_TYPE {.stdcall.}
        GetPropertyIndex*: proc (This:ptr ID2D1Properties; name:PCWSTR): UINT32 {.stdcall.}
        SetValueByName*: proc (This:ptr ID2D1Properties; name:PCWSTR, type1:D2D1_PROPERTY_TYPE, data:ptr BYTE, dataSize:UINT32): HRESULT {.stdcall.}
        SetValue*: proc (This:ptr ID2D1Properties; index:UINT32, type1:D2D1_PROPERTY_TYPE, data:ptr BYTE, dataSize:UINT32): HRESULT {.stdcall.}
        GetValueByName*: proc (This:ptr ID2D1Properties; name:PCWSTR, type1:D2D1_PROPERTY_TYPE, data:ptr BYTE, dataSize:UINT32): HRESULT {.stdcall.}
        GetValue*: proc (This:ptr ID2D1Properties; index:UINT32, type1:D2D1_PROPERTY_TYPE, data:ptr BYTE, dataSize:UINT32): HRESULT {.stdcall.}
        GetValueSize*: proc (This:ptr ID2D1Properties; index:UINT32): UINT32 {.stdcall.}
        GetSubProperties*: proc (This:ptr ID2D1Properties; index:UINT32, subProperties:ptr ptr ID2D1Properties): HRESULT {.stdcall.}
    ID2D1Properties* = object
        lpVtbl*: ptr ID2D1PropertiesVtbl
        
    ID2D1GdiMetafileSinkVtbl* = object
        ProcessRecord*: proc (recordType:DWORD, recordData:pointer, recordDataSize:DWORD): HRESULT {.stdcall.}
    ID2D1GdiMetafileSink* = object
        lpVtbl*: ptr ID2D1GdiMetafileSinkVtbl
        
    ID2D1GdiMetafileVtbl* = object
        Stream*: proc (sink:ptr ID2D1GdiMetafileSink): HRESULT {.stdcall.}
        GetBounds*: proc (bounds:ptr D2D1_RECT_F): HRESULT {.stdcall.}
    ID2D1GdiMetafile* = object
        lpVtbl*: ptr ID2D1GdiMetafileVtbl
        
    ID2D1StrokeStyle1Vtbl* = object
        Base*: ID2D1StrokeStyleVtbl
        GetStrokeTransformType*: proc (): D2D1_STROKE_TRANSFORM_TYPE {.stdcall.}
    ID2D1StrokeStyle1* = object
        lpVtbl*: ptr ID2D1StrokeStyle1Vtbl
        
    ID2D1CommandSinkVtbl* = object
        BeginDraw*: proc (This:ptr ID2D1CommandSink): HRESULT {.stdcall.}
        EndDraw*: proc (This:ptr ID2D1CommandSink): HRESULT {.stdcall.}
        SetAntialiasMode*: proc (This:ptr ID2D1CommandSink; antialiasMode:D2D1_ANTIALIAS_MODE): HRESULT {.stdcall.}
        SetTags*: proc (This:ptr ID2D1CommandSink; tag1:D2D1_TAG, tag2:D2D1_TAG): HRESULT {.stdcall.}
        SetTextAntialiasMode*: proc (This:ptr ID2D1CommandSink; textAntialiasMode:D2D1_TEXT_ANTIALIAS_MODE): HRESULT {.stdcall.}
        SetTextRenderingParams*: proc (This:ptr ID2D1CommandSink; textRenderingParams:ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        SetTransform*: proc (This:ptr ID2D1CommandSink; transform:ptr D2D1_MATRIX_3X2_F): HRESULT {.stdcall.}
        SetPrimitiveBlend*: proc (This:ptr ID2D1CommandSink; primitiveBlend:D2D1_PRIMITIVE_BLEND): HRESULT {.stdcall.}
        SetUnitMode*: proc (This:ptr ID2D1CommandSink; unitMode:D2D1_UNIT_MODE): HRESULT {.stdcall.}
        Clear*: proc (This:ptr ID2D1CommandSink; color:ptr D2D1_COLOR_F): HRESULT {.stdcall.}
        DrawGlyphRun*: proc (This:ptr ID2D1CommandSink; baselineOrigin:D2D1_POINT_2F, glyphRun:ptr DWRITE_GLYPH_RUN, glyphRunDescription:ptr DWRITE_GLYPH_RUN_DESCRIPTION, foregroundBrush:ptr ID2D1Brush, measuringMode:DWRITE_MEASURING_MODE): HRESULT {.stdcall.}
        DrawLine*: proc (This:ptr ID2D1CommandSink; point0:D2D1_POINT_2F, point1:D2D1_POINT_2F, brush:ptr ID2D1Brush, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle): HRESULT {.stdcall.}
        DrawGeometry*: proc (This:ptr ID2D1CommandSink; geometry:ptr ID2D1Geometry, brush:ptr ID2D1Brush, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle): HRESULT {.stdcall.}
        DrawRectangle*: proc (This:ptr ID2D1CommandSink; rect:ptr D2D1_RECT_F, brush:ptr ID2D1Brush, strokeWidth:FLOAT, strokeStyle:ptr ID2D1StrokeStyle): HRESULT {.stdcall.}
        DrawBitmap*: proc (This:ptr ID2D1CommandSink; bitmap:ptr ID2D1Bitmap, destinationRectangle:ptr D2D1_RECT_F, opacity:FLOAT, interpolationMode:D2D1_INTERPOLATION_MODE, sourceRectangle:ptr D2D1_RECT_F, perspectiveTransform:ptr D2D1_MATRIX_4X4_F): HRESULT {.stdcall.}
        DrawImage*: proc (This:ptr ID2D1CommandSink; image:ptr ID2D1Image, targetOffset:ptr D2D1_POINT_2F, imageRectangle:ptr D2D1_RECT_F, interpolationMode:D2D1_INTERPOLATION_MODE, compositeMode:D2D1_COMPOSITE_MODE): HRESULT {.stdcall.}
        DrawGdiMetafile*: proc (This:ptr ID2D1CommandSink; gdiMetafile:ptr ID2D1GdiMetafile, targetOffset:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
        FillMesh*: proc (This:ptr ID2D1CommandSink; mesh:ptr ID2D1Mesh, brush:ptr ID2D1Brush): HRESULT {.stdcall.}
        FillOpacityMask*: proc (This:ptr ID2D1CommandSink; opacityMask:ptr ID2D1Bitmap, brush:ptr ID2D1Brush, destinationRectangle:ptr D2D1_RECT_F, sourceRectangle:ptr D2D1_RECT_F): HRESULT {.stdcall.}
        FillGeometry*: proc (This:ptr ID2D1CommandSink; geometry:ptr ID2D1Geometry, brush:ptr ID2D1Brush, opacityBrush:ptr ID2D1Brush): HRESULT {.stdcall.}
        FillRectangle*: proc (This:ptr ID2D1CommandSink; rect:ptr D2D1_RECT_F, brush:ptr ID2D1Brush): HRESULT {.stdcall.}
        PushAxisAlignedClip*: proc (This:ptr ID2D1CommandSink; clipRect:ptr D2D1_RECT_F, antialiasMode:D2D1_ANTIALIAS_MODE): HRESULT {.stdcall.}
        PushLayer*: proc (This:ptr ID2D1CommandSink; layerParameters1:ptr D2D1_LAYER_PARAMETERS1, layer:ptr ID2D1Layer): HRESULT {.stdcall.}
        PopAxisAlignedClip*: proc (This:ptr ID2D1CommandSink): HRESULT {.stdcall.}
        PopLayer*: proc (This:ptr ID2D1CommandSink): HRESULT {.stdcall.}
    ID2D1CommandSink* = object
        lpVtbl*: ptr ID2D1CommandSinkVtbl
        
    ID2D1CommandListVtbl* = object
        Stream*: proc (sink:ptr ID2D1CommandSink): HRESULT {.stdcall.}
        Close*: proc (): HRESULT {.stdcall.}
    ID2D1CommandList* = object
        lpVtbl*: ptr ID2D1CommandListVtbl
        
    ID2D1PrintControlVtbl* = object
        #~ AddPage*: proc (commandList:ptr ID2D1CommandList, pageSize:D2D_SIZE_F, pagePrintTicketStream:ptr IStream, tag1:ptr D2D1_TAG = NULL, tag2:ptr D2D1_TAG = NULL): HRESULT {.stdcall.}
        #~ Close*: proc (): HRESULT {.stdcall.}
    ID2D1PrintControl* = object
        lpVtbl*: ptr ID2D1PrintControlVtbl
        
    ID2D1EffectVtbl* = object
        Base*: ID2D1PropertiesVtbl
        SetInput*: proc (This:ptr ID2D1Effect; index:UINT32, input:ptr ID2D1Image, invalidate:BOOL=TRUE) {.stdcall.}
        SetInputCount*: proc (This:ptr ID2D1Effect; inputCount:UINT32): HRESULT {.stdcall.}
        GetInput*: proc (This:ptr ID2D1Effect; index:UINT32, input:ptr ptr ID2D1Image) {.stdcall.}
        GetInputCount*: proc (This:ptr ID2D1Effect): UINT32 {.stdcall.}
        GetOutput*: proc (This:ptr ID2D1Effect; outputImage:ptr ptr ID2D1Image) {.stdcall.}
    ID2D1Effect* = object
        lpVtbl*: ptr ID2D1EffectVtbl
        
    ID2D1Bitmap1Vtbl* = object
        Base*: ID2D1BitmapVtbl
        GetColorContext*: proc (This:ptr ID2D1Bitmap1; colorContext:ptr ptr ID2D1ColorContext) {.stdcall.}
        GetOptions*: proc (This:ptr ID2D1Bitmap1): D2D1_BITMAP_OPTIONS {.stdcall.}
        GetSurface*: proc (This:ptr ID2D1Bitmap1; dxgiSurface:ptr ptr IDXGISurface): HRESULT {.stdcall.}
        Map*: proc (This:ptr ID2D1Bitmap1; options:D2D1_MAP_OPTIONS, mappedRect:ptr D2D1_MAPPED_RECT): HRESULT {.stdcall.}
        Unmap*: proc (This:ptr ID2D1Bitmap1): HRESULT {.stdcall.}
    ID2D1Bitmap1* = object
        lpVtbl*: ptr ID2D1Bitmap1Vtbl
        
    ID2D1ImageBrushVtbl* = object
        SetImage*: proc (This:ptr ID2D1ImageBrush; image:ptr ID2D1Image) {.stdcall.}
        SetExtendModeX*: proc (This:ptr ID2D1ImageBrush; extendModeX:D2D1_EXTEND_MODE) {.stdcall.}
        SetExtendModeY*: proc (This:ptr ID2D1ImageBrush; extendModeY:D2D1_EXTEND_MODE) {.stdcall.}
        SetInterpolationMode*: proc (This:ptr ID2D1ImageBrush; interpolationMode:D2D1_INTERPOLATION_MODE) {.stdcall.}
        SetSourceRectangle*: proc (This:ptr ID2D1ImageBrush; sourceRectangle:ptr D2D1_RECT_F) {.stdcall.}
        GetImage*: proc (This:ptr ID2D1ImageBrush; image:ptr ptr ID2D1Image) {.stdcall.}
        GetExtendModeX*: proc (This:ptr ID2D1ImageBrush): D2D1_EXTEND_MODE {.stdcall.}
        GetExtendModeY*: proc (This:ptr ID2D1ImageBrush): D2D1_EXTEND_MODE {.stdcall.}
        GetInterpolationMode*: proc (This:ptr ID2D1ImageBrush): D2D1_INTERPOLATION_MODE {.stdcall.}
        GetSourceRectangle*: proc (This:ptr ID2D1ImageBrush; sourceRectangle:ptr D2D1_RECT_F) {.stdcall.}
    ID2D1ImageBrush* = object
        lpVtbl*: ptr ID2D1ImageBrushVtbl
        
    ID2D1BitmapBrush1Vtbl* = object
        Base*: ID2D1BitmapBrushVtbl
        SetInterpolationMode1*: proc (This:ptr ID2D1BitmapBrush1; interpolationMode:D2D1_INTERPOLATION_MODE) {.stdcall.}
        GetInterpolationMode1*: proc (This:ptr ID2D1BitmapBrush1): D2D1_INTERPOLATION_MODE {.stdcall.}
    ID2D1BitmapBrush1* = object
        lpVtbl*: ptr ID2D1BitmapBrush1Vtbl
        
    ID2D1GradientStopCollection1Vtbl* = object
        Base*: ID2D1GradientStopCollectionVtbl
        GetGradientStops1*: proc (This:ptr ID2D1GradientStopCollection1; gradientStops:ptr D2D1_GRADIENT_STOP, gradientStopsCount:UINT32) {.stdcall.}
        GetPreInterpolationSpace*: proc (This:ptr ID2D1GradientStopCollection1): D2D1_COLOR_SPACE {.stdcall.}
        GetPostInterpolationSpace*: proc (This:ptr ID2D1GradientStopCollection1): D2D1_COLOR_SPACE {.stdcall.}
        GetBufferPrecision*: proc (This:ptr ID2D1GradientStopCollection1): D2D1_BUFFER_PRECISION {.stdcall.}
        GetColorInterpolationMode*: proc (This:ptr ID2D1GradientStopCollection1): D2D1_COLOR_INTERPOLATION_MODE {.stdcall.}
    ID2D1GradientStopCollection1* = object
        lpVtbl*: ptr ID2D1GradientStopCollection1Vtbl
        
    ID2D1ColorContextVtbl* = object
        GetColorSpace*: proc (This:ptr ID2D1ColorContext): D2D1_COLOR_SPACE {.stdcall.}
        GetProfileSize*: proc (This:ptr ID2D1ColorContext): UINT32 {.stdcall.}
        GetProfile*: proc (This:ptr ID2D1ColorContext; profile:ptr BYTE, profileSize:UINT32): HRESULT {.stdcall.}
    ID2D1ColorContext* = object
        lpVtbl*: ptr ID2D1ColorContextVtbl
        
    ID2D1DeviceContextVtbl* = object
        Base*: ID2D1RenderTargetVtbl
        CreateBitmap*: proc (This:ptr ID2D1DeviceContext; size:D2D1_SIZE_U, sourceData:pointer, pitch:UINT32, bitmapProperties:ptr D2D1_BITMAP_PROPERTIES1, bitmap:ptr ptr ID2D1Bitmap1): HRESULT {.stdcall.}
        CreateBitmapFromWicBitmap*: proc (This:ptr ID2D1DeviceContext; wicBitmapSource:ptr IWICBitmapSource, bitmapProperties:ptr D2D1_BITMAP_PROPERTIES1, bitmap:ptr ptr ID2D1Bitmap1): HRESULT {.stdcall.}
        CreateColorContext*: proc (This:ptr ID2D1DeviceContext; space:D2D1_COLOR_SPACE, profile:ptr BYTE, profileSize:UINT32, colorContext:ptr ptr ID2D1ColorContext): HRESULT {.stdcall.}
        CreateColorContextFromFilename*: proc (This:ptr ID2D1DeviceContext; filename:PCWSTR, colorContext:ptr ptr ID2D1ColorContext): HRESULT {.stdcall.}
        CreateColorContextFromWicColorContext*: proc (This:ptr ID2D1DeviceContext; wicColorContext:ptr IWICColorContext, colorContext:ptr ptr ID2D1ColorContext): HRESULT {.stdcall.}
        CreateBitmapFromDxgiSurface*: proc (This:ptr ID2D1DeviceContext; surface:ptr IDXGISurface, bitmapProperties:ptr D2D1_BITMAP_PROPERTIES1, bitmap:ptr ptr ID2D1Bitmap1): HRESULT {.stdcall.}
        CreateEffect*: proc (This:ptr ID2D1DeviceContext; effectId:REFCLSID, effect:ptr ptr ID2D1Effect): HRESULT {.stdcall.}
        CreateGradientStopCollection*: proc (This:ptr ID2D1DeviceContext; straightAlphaGradientStops:ptr D2D1_GRADIENT_STOP, straightAlphaGradientStopsCount:UINT32, preInterpolationSpace:D2D1_COLOR_SPACE, postInterpolationSpace:D2D1_COLOR_SPACE, bufferPrecision:D2D1_BUFFER_PRECISION, extendMode:D2D1_EXTEND_MODE, colorInterpolationMode:D2D1_COLOR_INTERPOLATION_MODE, gradientStopCollection1:ptr ptr ID2D1GradientStopCollection1): HRESULT {.stdcall.}
        CreateImageBrush*: proc (This:ptr ID2D1DeviceContext; image:ptr ID2D1Image, imageBrushProperties:ptr D2D1_IMAGE_BRUSH_PROPERTIES, brushProperties:ptr D2D1_BRUSH_PROPERTIES, imageBrush:ptr ptr ID2D1ImageBrush): HRESULT {.stdcall.}
        CreateBitmapBrush*: proc (This:ptr ID2D1DeviceContext; bitmap:ptr ID2D1Bitmap, bitmapBrushProperties:ptr D2D1_BITMAP_BRUSH_PROPERTIES1, brushProperties:ptr D2D1_BRUSH_PROPERTIES, bitmapBrush:ptr ptr ID2D1BitmapBrush1): HRESULT {.stdcall.}
        CreateCommandList*: proc (This:ptr ID2D1DeviceContext; commandList:ptr ptr ID2D1CommandList): HRESULT {.stdcall.}
        IsDxgiFormatSupported*: proc (This:ptr ID2D1DeviceContext; format:DXGI_FORMAT): BOOL {.stdcall.}
        IsBufferPrecisionSupported*: proc (This:ptr ID2D1DeviceContext; bufferPrecision:D2D1_BUFFER_PRECISION): BOOL {.stdcall.}
        GetImageLocalBounds*: proc (This:ptr ID2D1DeviceContext; image:ptr ID2D1Image, localBounds:ptr D2D1_RECT_F): HRESULT {.stdcall.}
        GetImageWorldBounds*: proc (This:ptr ID2D1DeviceContext; image:ptr ID2D1Image, worldBounds:ptr D2D1_RECT_F): HRESULT {.stdcall.}
        GetGlyphRunWorldBounds*: proc (This:ptr ID2D1DeviceContext; baselineOrigin:D2D1_POINT_2F, glyphRun:ptr DWRITE_GLYPH_RUN, measuringMode:DWRITE_MEASURING_MODE, bounds:ptr D2D1_RECT_F): HRESULT {.stdcall.}
        GetDevice*: proc (This:ptr ID2D1DeviceContext; device:ptr ptr ID2D1Device) {.stdcall.}
        SetTarget*: proc (This:ptr ID2D1DeviceContext; image:ptr ID2D1Image) {.stdcall.}
        GetTarget*: proc (This:ptr ID2D1DeviceContext; image:ptr ptr ID2D1Image) {.stdcall.}
        SetRenderingControls*: proc (This:ptr ID2D1DeviceContext; renderingControls:ptr D2D1_RENDERING_CONTROLS) {.stdcall.}
        GetRenderingControls*: proc (This:ptr ID2D1DeviceContext; renderingControls:ptr D2D1_RENDERING_CONTROLS) {.stdcall.}
        SetPrimitiveBlend*: proc (This:ptr ID2D1DeviceContext; primitiveBlend:D2D1_PRIMITIVE_BLEND) {.stdcall.}
        GetPrimitiveBlend*: proc (This:ptr ID2D1DeviceContext; ): D2D1_PRIMITIVE_BLEND {.stdcall.}
        SetUnitMode*: proc (This:ptr ID2D1DeviceContext; unitMode:D2D1_UNIT_MODE) {.stdcall.}
        GetUnitMode*: proc (This:ptr ID2D1DeviceContext; ): D2D1_UNIT_MODE {.stdcall.}
        DrawGlyphRun*: proc (This:ptr ID2D1DeviceContext; baselineOrigin:D2D1_POINT_2F, glyphRun:ptr DWRITE_GLYPH_RUN, glyphRunDescription:ptr DWRITE_GLYPH_RUN_DESCRIPTION, foregroundBrush:ptr ID2D1Brush, measuringMode:DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL) {.stdcall.}
        DrawImage*: proc (This:ptr ID2D1DeviceContext; image:ptr ID2D1Image, targetOffset:ptr D2D1_POINT_2F = NULL, imageRectangle:ptr D2D1_RECT_F = NULL, interpolationMode:D2D1_INTERPOLATION_MODE = D2D1_INTERPOLATION_MODE_LINEAR, compositeMode:D2D1_COMPOSITE_MODE = D2D1_COMPOSITE_MODE_SOURCE_OVER) {.stdcall.}
        DrawGdiMetafile*: proc (This:ptr ID2D1DeviceContext; gdiMetafile:ptr ID2D1GdiMetafile, targetOffset:ptr D2D1_POINT_2F = NULL) {.stdcall.}
        DrawBitmap*: proc (This:ptr ID2D1DeviceContext; bitmap:ptr ID2D1Bitmap, destinationRectangle:ptr D2D1_RECT_F, opacity:FLOAT, interpolationMode:D2D1_INTERPOLATION_MODE, sourceRectangle:ptr D2D1_RECT_F = NULL, perspectiveTransform:ptr D2D1_MATRIX_4X4_F = NULL) {.stdcall.}
        PushLayer*: proc (This:ptr ID2D1DeviceContext; layerParameters:ptr D2D1_LAYER_PARAMETERS1, layer:ptr ID2D1Layer) {.stdcall.}
        InvalidateEffectInputRectangle*: proc (This:ptr ID2D1DeviceContext; effect:ptr ID2D1Effect, input:UINT32, inputRectangle:ptr D2D1_RECT_F): HRESULT {.stdcall.}
        GetEffectInvalidRectangleCount*: proc (This:ptr ID2D1DeviceContext; effect:ptr ID2D1Effect, rectangleCount:ptr UINT32): HRESULT {.stdcall.}
        GetEffectInvalidRectangles*: proc (This:ptr ID2D1DeviceContext; effect:ptr ID2D1Effect, rectangles:ptr D2D1_RECT_F, rectanglesCount:UINT32): HRESULT {.stdcall.}
        GetEffectRequiredInputRectangles*: proc (This:ptr ID2D1DeviceContext; renderEffect:ptr ID2D1Effect, renderImageRectangle:ptr D2D1_RECT_F, inputDescriptions:ptr D2D1_EFFECT_INPUT_DESCRIPTION, requiredInputRects:ptr D2D1_RECT_F, inputCount:UINT32): HRESULT {.stdcall.}
        FillOpacityMask*: proc (This:ptr ID2D1DeviceContext; opacityMask:ptr ID2D1Bitmap, brush:ptr ID2D1Brush, destinationRectangle:ptr D2D1_RECT_F = NULL, sourceRectangle:ptr D2D1_RECT_F = NULL) {.stdcall.}
    ID2D1DeviceContext* = object
        lpVtbl*: ptr ID2D1DeviceContextVtbl
        
    ID2D1DeviceVtbl* = object
        Base*: ID2D1ResourceVtbl
        #~ QueryInterface*: proc(This:ptr ID2D1Device; riid: ptr IID; ppvObject: ptr pointer): HRESULT {.stdcall.}
        #~ AddRef*: proc(This:ptr ID2D1Device): ULONG {.stdcall.}
        #~ Release*: proc(This:ptr ID2D1Device): ULONG {.stdcall.}
        #~ GetFactory*: proc (This:ptr ID2D1Device; factory: ptr ptr ID2D1Factory) {.stdcall.}
        
        CreateDeviceContext*: proc (This:ptr ID2D1Device; options:D2D1_DEVICE_CONTEXT_OPTIONS, deviceContext:ptr ptr ID2D1DeviceContext): HRESULT {.stdcall.}
        CreatePrintControl*: proc (This:ptr ID2D1Device; wicFactory:ptr IWICImagingFactory, documentTarget:ptr IPrintDocumentPackageTarget, printControlProperties:ptr D2D1_PRINT_CONTROL_PROPERTIES, printControl:ptr ptr ID2D1PrintControl): HRESULT {.stdcall.}
        SetMaximumTextureMemory*: proc (This:ptr ID2D1Device; maximumInBytes:UINT64) {.stdcall.}
        GetMaximumTextureMemory*: proc (This:ptr ID2D1Device): UINT64 {.stdcall.}
        ClearResources*: proc (This:ptr ID2D1Device; millisecondsSinceUse:UINT32 = 0) {.stdcall.}
    ID2D1Device* = object
        lpVtbl*: ptr ID2D1DeviceVtbl
        
    ID2D1DrawingStateBlock1Vtbl* = object
        GetDescription*: proc (This:ptr ID2D1DrawingStateBlock1; stateDescription:ptr D2D1_DRAWING_STATE_DESCRIPTION1) {.stdcall.}
        SetDescription*: proc (This:ptr ID2D1DrawingStateBlock1; stateDescription:ptr D2D1_DRAWING_STATE_DESCRIPTION1) {.stdcall.}
    ID2D1DrawingStateBlock1* = object
        lpVtbl*: ptr ID2D1DrawingStateBlock1Vtbl
        
    ID2D1PathGeometry1Vtbl* = object
        ComputePointAndSegmentAtLength*: proc (This:ptr ID2D1PathGeometry1; length:FLOAT, startSegment:UINT32, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, pointDescription:ptr D2D1_POINT_DESCRIPTION): HRESULT {.stdcall.}
    ID2D1PathGeometry1* = object
        lpVtbl*: ptr ID2D1PathGeometry1Vtbl
        
    ID2D1Factory1Vtbl* = object
        Base*: ID2D1FactoryVtbl
        CreateDevice*: proc (ID2D1Factory1:ptr ID2D1Factory1, dxgiDevice:ptr IDXGIDevice, d2dDevice:ptr ptr ID2D1Device): HRESULT {.stdcall.}
        CreateStrokeStyle1*: proc (ID2D1Factory1:ptr ID2D1Factory1, strokeStyleProperties:ptr D2D1_STROKE_STYLE_PROPERTIES1, dashes:ptr FLOAT, dashesCount:UINT32, strokeStyle:ptr ptr ID2D1StrokeStyle1): HRESULT {.stdcall.}
        CreatePathGeometry1*: proc (ID2D1Factory1:ptr ID2D1Factory1, pathGeometry:ptr ptr ID2D1PathGeometry1): HRESULT {.stdcall.}
        CreateDrawingStateBlock1*: proc (ID2D1Factory1:ptr ID2D1Factory1, drawingStateDescription:ptr D2D1_DRAWING_STATE_DESCRIPTION1, textRenderingParams:ptr IDWriteRenderingParams, drawingStateBlock:ptr ptr ID2D1DrawingStateBlock1): HRESULT {.stdcall.}
        #~ CreateGdiMetafile*: proc (ID2D1Factory1:ptr ID2D1Factory1, metafileStream:ptr IStream, metafile:ptr ptr ID2D1GdiMetafile): HRESULT {.stdcall.}
        #~ RegisterEffectFromStream*: proc (ID2D1Factory1:ptr ID2D1Factory1, classId:REFCLSID, propertyXml:ptr IStream, bindings:ptr D2D1_PROPERTY_BINDING, bindingsCount:UINT32, PD2D1_EFFECT_FACTORY:CONST effectFactory): HRESULT {.stdcall.}
        #~ RegisterEffectFromString*: proc (ID2D1Factory1:ptr ID2D1Factory1, classId:REFCLSID, propertyXml:PCWSTR, bindings:ptr D2D1_PROPERTY_BINDING, bindingsCount:UINT32, PD2D1_EFFECT_FACTORY:CONST effectFactory): HRESULT {.stdcall.}
        #~ UnregisterEffect*: proc (ID2D1Factory1:ptr ID2D1Factory1, classId:REFCLSID): HRESULT {.stdcall.}
        #~ GetRegisteredEffects*: proc (ID2D1Factory1:ptr ID2D1Factory1, effects:ptr CLSID, effectsCount:UINT32, effectsReturned:ptr UINT32, effectsRegistered:ptr UINT32): HRESULT {.stdcall.}
        #~ GetEffectProperties*: proc (ID2D1Factory1:ptr ID2D1Factory1, effectId:REFCLSID, properties:ptr ptr ID2D1Properties): HRESULT {.stdcall.}
    ID2D1Factory1* = object
        lpVtbl*: ptr ID2D1Factory1Vtbl
        
    ID2D1MultithreadVtbl* = object
        #~ Base*: IUnknownVtbl
        GetMultithreadProtected*: proc (This:ptr ID2D1Multithread): BOOL {.stdcall.}
        Enter*: proc (This:ptr ID2D1PathGeometry1) {.stdcall.}
        Leave*: proc (This:ptr ID2D1Multithread) {.stdcall.}
    ID2D1Multithread* = object
        lpVtbl*: ptr ID2D1MultithreadVtbl

