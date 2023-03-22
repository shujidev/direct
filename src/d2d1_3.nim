import winim/lean, winim/inc/wincodec
import d2d1, d2d1_1, d2d1_2, dcommon, dxgi, dxgicommon, dwrite

const IID_ID2D1InkStyle* = IID(Data1:0xbae8b344'i32, Data2:0x23fc, Data3:0x4071, Data4:[0x8c'u8, 0xb5, 0xd0,0x5d,0x6f,0x07,0x38,0x48])
const IID_ID2D1Ink* = IID(Data1:0xb499923b'i32, Data2:0x7029, Data3:0x478f, Data4:[0xa8'u8, 0xb3, 0x43,0x2c,0x7c,0x5f,0x53,0x12])
const IID_ID2D1GradientMesh* = IID(Data1:0xf292e401'i32, Data2:0xc050, Data3:0x4cde, Data4:[0x83'u8, 0xd7, 0x04,0x96,0x2d,0x3b,0x23,0xc2])
const IID_ID2D1ImageSource* = IID(Data1:0xc9b664e5'i32, Data2:0x74a1, Data3:0x4378, Data4:[0x9a'u8, 0xc2, 0xee,0xfc,0x37,0xa3,0xf4,0xd8])
const IID_ID2D1ImageSourceFromWic* = IID(Data1:0x77395441'i32, Data2:0x1c8f, Data3:0x4555, Data4:[0x86'u8, 0x83, 0xf5,0x0d,0xab,0x0f,0xe7,0x92])
const IID_ID2D1TransformedImageSource* = IID(Data1:0x7f1f79e5'i32, Data2:0x2796, Data3:0x416c, Data4:[0x8f'u8, 0x55, 0x70,0x0f,0x91,0x14,0x45,0xe5])
const IID_ID2D1LookupTable3D* = IID(Data1:0x53dd9855'i32, Data2:0xa3b0, Data3:0x4d5b, Data4:[0x82'u8, 0xe1, 0x26,0xe2,0x5c,0x5e,0x57,0x97])
const IID_ID2D1DeviceContext2* = IID(Data1:0x394ea6a3'i32, Data2:0x0c34, Data3:0x4321, Data4:[0x95'u8, 0x0b, 0x6c,0xa2,0x0f,0x0b,0xe6,0xc7])
const IID_ID2D1Device2* = IID(Data1:0xa44472e1'i32, Data2:0x8dfb, Data3:0x4e60, Data4:[0x84'u8, 0x92, 0x6e,0x28,0x61,0xc9,0xca,0x8b])
const IID_ID2D1Factory3* = IID(Data1:0x0869759f'i32, Data2:0x4f00, Data3:0x413f, Data4:[0xb0'u8, 0x3e, 0x2b,0xda,0x45,0x40,0x4d,0x0f])
const IID_ID2D1CommandSink2* = IID(Data1:0x3bab440e'i32, Data2:0x417e, Data3:0x47df, Data4:[0xa2'u8, 0xe2, 0xbc,0x0b,0xe6,0xa0,0x09,0x16])
const IID_ID2D1GdiMetafile1* = IID(Data1:0x2e69f9e8'i32, Data2:0xdd3f, Data3:0x4bf9, Data4:[0x95'u8, 0xba, 0xc0,0x4f,0x49,0xd7,0x88,0xdf])
const IID_ID2D1GdiMetafileSink1* = IID(Data1:0xfd0ecb6b'i32, Data2:0x91e6, Data3:0x411e, Data4:[0x86'u8, 0x55, 0x39,0x5e,0x76,0x0f,0x91,0xb4])
const IID_ID2D1SpriteBatch* = IID(Data1:0x4dc583bf'i32, Data2:0x3a10, Data3:0x438a, Data4:[0x87'u8, 0x22, 0xe9,0x76,0x52,0x24,0xf1,0xf1])
const IID_ID2D1DeviceContext3* = IID(Data1:0x235a7496'i32, Data2:0x8351, Data3:0x414c, Data4:[0xbc'u8, 0xd4, 0x66,0x72,0xab,0x2d,0x8e,0x00])
const IID_ID2D1Device3* = IID(Data1:0x852f2087'i32, Data2:0x802c, Data3:0x4037, Data4:[0xab'u8, 0x60, 0xff,0x2e,0x7e,0xe6,0xfc,0x01])
const IID_ID2D1Factory4* = IID(Data1:0xbd4ec2d2'i32, Data2:0x0662, Data3:0x4bee, Data4:[0xba'u8, 0x8e, 0x6f,0x29,0xf0,0x32,0xe0,0x96])
const IID_ID2D1CommandSink3* = IID(Data1:0x18079135'i32, Data2:0x4cf3, Data3:0x4868, Data4:[0xbc'u8, 0x8e, 0x06,0x06,0x7e,0x6d,0x24,0x2d])
const IID_ID2D1SvgGlyphStyle* = IID(Data1:0xaf671749'i32, Data2:0xd241, Data3:0x4db8, Data4:[0x8e'u8, 0x41, 0xdc,0xc2,0xe5,0xc1,0xa4,0x38])
const IID_ID2D1DeviceContext4* = IID(Data1:0x8c427831'i32, Data2:0x3d90, Data3:0x4476, Data4:[0xb6'u8, 0x47, 0xc4,0xfa,0xe3,0x49,0xe4,0xdb])
const IID_ID2D1Device4* = IID(Data1:0xd7bdb159'i32, Data2:0x5683, Data3:0x4a46, Data4:[0xbc'u8, 0x9c, 0x72,0xdc,0x72,0x0b,0x85,0x8b])
const IID_ID2D1Factory5* = IID(Data1:0xc4349994'i32, Data2:0x838e, Data3:0x4b0f, Data4:[0x8c'u8, 0xab, 0x44,0x99,0x7d,0x9e,0xea,0xcc])

type
  D2D1_INK_NIB_SHAPE* = enum
    D2D1_INK_NIB_SHAPE_ROUND = 0, 
    D2D1_INK_NIB_SHAPE_SQUARE = 1,
    D2D1_INK_NIB_SHAPE_FORCE_DWORD = 0xffffffff

type
  D2D1_ORIENTATION* = enum
    D2D1_ORIENTATION_DEFAULT = 1, D2D1_ORIENTATION_FLIP_HORIZONTAL = 2,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE180 = 3,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE180_FLIP_HORIZONTAL = 4,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE90_FLIP_HORIZONTAL = 5,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE270 = 6,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE270_FLIP_HORIZONTAL = 7,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE90 = 8,
    D2D1_ORIENTATION_FORCE_DWORD = 0xffffffff
type
  D2D1_IMAGE_SOURCE_LOADING_OPTIONS* = enum
    D2D1_IMAGE_SOURCE_LOADING_OPTIONS_NONE = 0,
    D2D1_IMAGE_SOURCE_LOADING_OPTIONS_RELEASE_SOURCE = 1,
    D2D1_IMAGE_SOURCE_LOADING_OPTIONS_CACHE_ON_DEMAND = 2,
    D2D1_IMAGE_SOURCE_LOADING_OPTIONS_FORCE_DWORD = 0xffffffff

type
  D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS* = enum
    D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS_NONE = 0,
    D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS_LOW_QUALITY_PRIMARY_CONVERSION = 1,
    D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS_FORCE_DWORD = 0xffffffff

type
  D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS* = enum
    D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS_NONE = 0,
    D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS_DISABLE_DPI_SCALE = 1,
    D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS_FORCE_DWORD = 0xffffffff

type
  D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES* {.bycopy.} = object
    orientation*: D2D1_ORIENTATION
    scaleX*: FLOAT
    scaleY*: FLOAT
    interpolationMode*: D2D1_INTERPOLATION_MODE
    options*: D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS
type
  D2D1_INK_POINT* {.bycopy.} = object
    x*: FLOAT
    y*: FLOAT
    radius*: FLOAT

type
  D2D1_INK_BEZIER_SEGMENT* {.bycopy.} = object
    point1*: D2D1_INK_POINT
    point2*: D2D1_INK_POINT
    point3*: D2D1_INK_POINT

type
  D2D1_INK_STYLE_PROPERTIES* {.bycopy.} = object
    nibShape*: D2D1_INK_NIB_SHAPE
    nibTransform*: D2D1_MATRIX_3X2_F

type
  D2D1_PATCH_EDGE_MODE* = enum
    D2D1_PATCH_EDGE_MODE_ALIASED = 0,
    D2D1_PATCH_EDGE_MODE_ANTIALIASED = 1,
    D2D1_PATCH_EDGE_MODE_ALIASED_INFLATED = 2,
    D2D1_PATCH_EDGE_MODE_FORCE_DWORD = 0xffffffff

type
  D2D1_GRADIENT_MESH_PATCH* {.bycopy.} = object
    point00*: D2D1_POINT_2F
    point01*: D2D1_POINT_2F
    point02*: D2D1_POINT_2F
    point03*: D2D1_POINT_2F
    point10*: D2D1_POINT_2F
    point11*: D2D1_POINT_2F
    point12*: D2D1_POINT_2F
    point13*: D2D1_POINT_2F
    point20*: D2D1_POINT_2F
    point21*: D2D1_POINT_2F
    point22*: D2D1_POINT_2F
    point23*: D2D1_POINT_2F
    point30*: D2D1_POINT_2F
    point31*: D2D1_POINT_2F
    point32*: D2D1_POINT_2F
    point33*: D2D1_POINT_2F
    color00*: D2D1_COLOR_F
    color03*: D2D1_COLOR_F
    color30*: D2D1_COLOR_F
    color33*: D2D1_COLOR_F
    topEdgeMode*: D2D1_PATCH_EDGE_MODE
    leftEdgeMode*: D2D1_PATCH_EDGE_MODE
    bottomEdgeMode*: D2D1_PATCH_EDGE_MODE
    rightEdgeMode*: D2D1_PATCH_EDGE_MODE

  D2D1_SPRITE_OPTIONS* = enum
    D2D1_SPRITE_OPTIONS_NONE = 0,
    D2D1_SPRITE_OPTIONS_CLAMP_TO_SOURCE_RECTANGLE = 1,
    D2D1_SPRITE_OPTIONS_FORCE_DWORD = 0xffffffff
    
type 
  D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION* = enum
    D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION_DEFAULT = 0,
    D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION_DISABLE = 1,
    D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION_FORCE_DWORD = 0xffffffff


type
    ID2D1InkStyleVtbl* = object
        Base*: ID2D1ResourceVtbl
        SetNibTransform*: proc (This:ptr ID2D1InkStyle, transform:ptr D2D1_MATRIX_3X2_F) {.stdcall.}
        GetNibTransform*: proc (This:ptr ID2D1InkStyle, transform:ptr D2D1_MATRIX_3X2_F) {.stdcall.}
        SetNibShape*: proc (This:ptr ID2D1InkStyle, nibShape:D2D1_INK_NIB_SHAPE) {.stdcall.}
        GetNibShape*: proc (This:ptr ID2D1InkStyle): D2D1_INK_NIB_SHAPE {.stdcall.}
    ID2D1InkStyle* = object
        lpVtbl*: ptr ID2D1InkStyleVtbl
    ID2D1InkVtbl* = object
        Base*: ID2D1ResourceVtbl
        SetStartPoint*: proc (This:ptr ID2D1Ink, startPoint:ptr D2D1_INK_POINT) {.stdcall.}
        GetStartPoint*: proc (This:ptr ID2D1Ink, startPoint:ptr D2D1_INK_POINT) {.stdcall.}
        AddSegments*: proc (This:ptr ID2D1Ink, segments:ptr D2D1_INK_BEZIER_SEGMENT, segmentsCount:UINT32): HRESULT {.stdcall.}
        RemoveSegmentsAtEnd*: proc (This:ptr ID2D1Ink, segmentsCount:UINT32): HRESULT {.stdcall.}
        SetSegments*: proc (This:ptr ID2D1Ink, startSegment:UINT32, segments:ptr D2D1_INK_BEZIER_SEGMENT, segmentsCount:UINT32): HRESULT {.stdcall.}
        SetSegmentAtEnd*: proc (This:ptr ID2D1Ink, segment:ptr D2D1_INK_BEZIER_SEGMENT): HRESULT {.stdcall.}
        GetSegmentCount*: proc (This:ptr ID2D1Ink): UINT32 {.stdcall.}
        GetSegments*: proc (This:ptr ID2D1Ink, startSegment:UINT32, segments:ptr D2D1_INK_BEZIER_SEGMENT, segmentsCount:UINT32): HRESULT {.stdcall.}
        StreamAsGeometry*: proc (This:ptr ID2D1Ink, inkStyle:ptr ID2D1InkStyle, worldTransform:ptr D2D1_MATRIX_3X2_F, flatteningTolerance:FLOAT, geometrySink:ptr ID2D1SimplifiedGeometrySink): HRESULT {.stdcall.}
        GetBounds*: proc (This:ptr ID2D1Ink, inkStyle:ptr ID2D1InkStyle, worldTransform:ptr D2D1_MATRIX_3X2_F, bounds:ptr D2D1_RECT_F): HRESULT {.stdcall.}
    ID2D1Ink* = object
        lpVtbl*: ptr ID2D1InkVtbl
    ID2D1GradientMeshVtbl* = object
        Base*: ID2D1ResourceVtbl
        GetPatchCount*: proc (This:ptr ID2D1GradientMesh): UINT32 {.stdcall.}
        GetPatches*: proc (This:ptr ID2D1GradientMesh, startIndex:UINT32, patches:ptr D2D1_GRADIENT_MESH_PATCH, patchesCount:UINT32): HRESULT {.stdcall.}
    ID2D1GradientMesh* = object
        lpVtbl*: ptr ID2D1GradientMeshVtbl
    ID2D1ImageSourceVtbl* = object
        Base*: ID2D1ImageVtbl
        OfferResources*: proc (This:ptr ID2D1ImageSource): HRESULT {.stdcall.}
        TryReclaimResources*: proc (This:ptr ID2D1ImageSource, resourcesDiscarded:ptr BOOL): HRESULT {.stdcall.}
    ID2D1ImageSource* = object
        lpVtbl*: ptr ID2D1ImageSourceVtbl
    ID2D1ImageSourceFromWicVtbl* = object
        Base*: ID2D1ImageSourceVtbl
        EnsureCached*: proc (This:ptr ID2D1ImageSourceFromWic, rectangleToFill:ptr D2D1_RECT_U): HRESULT {.stdcall.}
        TrimCache*: proc (This:ptr ID2D1ImageSourceFromWic, rectangleToPreserve:ptr D2D1_RECT_U): HRESULT {.stdcall.}
        GetSource*: proc (This:ptr ID2D1ImageSourceFromWic, wicBitmapSource:ptr ptr IWICBitmapSource) {.stdcall.}
    ID2D1ImageSourceFromWic* = object
        lpVtbl*: ptr ID2D1ImageSourceFromWicVtbl
    ID2D1TransformedImageSourceVtbl* = object
        Base*: ID2D1ImageVtbl
        GetSource*: proc (This:ptr ID2D1TransformedImageSource, imageSource:ptr ptr ID2D1ImageSource) {.stdcall.}
        GetProperties*: proc (This:ptr ID2D1TransformedImageSource, properties:ptr D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES) {.stdcall.}
    ID2D1TransformedImageSource* = object
        lpVtbl*: ptr ID2D1TransformedImageSourceVtbl
    ID2D1LookupTable3DVtbl* = object
        Base*: ID2D1ResourceVtbl
    ID2D1LookupTable3D* = object
        lpVtbl*: ptr ID2D1LookupTable3DVtbl
    ID2D1DeviceContext2Vtbl* = object
        Base*: ID2D1DeviceContext1Vtbl
        CreateInk*: proc (This:ptr ID2D1DeviceContext2, startPoint:ptr D2D1_INK_POINT, ink:ptr ptr ID2D1Ink): HRESULT {.stdcall.}
        CreateInkStyle*: proc (This:ptr ID2D1DeviceContext2, inkStyleProperties:ptr D2D1_INK_STYLE_PROPERTIES, inkStyle:ptr ptr ID2D1InkStyle): HRESULT {.stdcall.}
        CreateGradientMesh*: proc (This:ptr ID2D1DeviceContext2, patches:ptr D2D1_GRADIENT_MESH_PATCH, patchesCount:UINT32, gradientMesh:ptr ptr ID2D1GradientMesh): HRESULT {.stdcall.}
        CreateImageSourceFromWic*: proc (This:ptr ID2D1DeviceContext2, wicBitmapSource:ptr IWICBitmapSource, loadingOptions:D2D1_IMAGE_SOURCE_LOADING_OPTIONS, alphaMode:D2D1_ALPHA_MODE, imageSource:ptr ptr ID2D1ImageSourceFromWic): HRESULT {.stdcall.}
        CreateLookupTable3D*: proc (This:ptr ID2D1DeviceContext2, precision:D2D1_BUFFER_PRECISION, extents:ptr UINT32, data:ptr BYTE, dataCount:UINT32, strides:ptr UINT32, lookupTable:ptr ptr ID2D1LookupTable3D): HRESULT {.stdcall.}
        CreateImageSourceFromDxgi*: proc (This:ptr ID2D1DeviceContext2, surfaces:ptr ptr IDXGISurface, surfaceCount:UINT32, colorSpace:DXGI_COLOR_SPACE_TYPE, options:D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS, imageSource:ptr ptr ID2D1ImageSource): HRESULT {.stdcall.}
        GetGradientMeshWorldBounds*: proc (This:ptr ID2D1DeviceContext2, gradientMesh:ptr ID2D1GradientMesh, pBounds:ptr D2D1_RECT_F): HRESULT {.stdcall.}
        DrawInk*: proc (This:ptr ID2D1DeviceContext2, ink:ptr ID2D1Ink, brush:ptr ID2D1Brush, inkStyle:ptr ID2D1InkStyle) {.stdcall.}
        DrawGradientMesh*: proc (This:ptr ID2D1DeviceContext2, gradientMesh:ptr ID2D1GradientMesh) {.stdcall.}
        DrawGdiMetafile*: proc (This:ptr ID2D1DeviceContext2, gdiMetafile:ptr ID2D1GdiMetafile, destinationRectangle:ptr D2D1_RECT_F, sourceRectangle:ptr D2D1_RECT_F = NULL) {.stdcall.}
        CreateTransformedImageSource*: proc (This:ptr ID2D1DeviceContext2, imageSource:ptr ID2D1ImageSource, properties:ptr D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES, transformedImageSource:ptr ptr ID2D1TransformedImageSource): HRESULT {.stdcall.}
    ID2D1DeviceContext2* = object
        lpVtbl*: ptr ID2D1DeviceContext2Vtbl
    ID2D1Device2Vtbl* = object
        Base*: ID2D1Device1Vtbl
        CreateDeviceContext*: proc (This:ptr ID2D1Device2, options:D2D1_DEVICE_CONTEXT_OPTIONS, deviceContext2:ptr ptr ID2D1DeviceContext2): HRESULT {.stdcall.}
        FlushDeviceContexts*: proc (This:ptr ID2D1Device2, bitmap:ptr ID2D1Bitmap) {.stdcall.}
        GetDxgiDevice*: proc (This:ptr ID2D1Device2, dxgiDevice:ptr ptr IDXGIDevice): HRESULT {.stdcall.}
    ID2D1Device2* = object
        lpVtbl*: ptr ID2D1Device2Vtbl
        
    ID2D1Factory3Vtbl* = object
        Base*: ID2D1FactoryVtbl
        #~ Base*: ID2D1Factory2Vtbl
        CreateDevice*: proc (This:ptr ID2D1Factory3, dxgiDevice:ptr IDXGIDevice, d2dDevice2:ptr ptr ID2D1Device2): HRESULT {.stdcall.}
    ID2D1Factory3* = object
        lpVtbl*: ptr ID2D1Factory3Vtbl
        
    ID2D1CommandSink2Vtbl* = object
        Base*: ID2D1CommandSink1Vtbl
        DrawInk*: proc (This:ptr ID2D1CommandSink2, ink:ptr ID2D1Ink, brush:ptr ID2D1Brush, inkStyle:ptr ID2D1InkStyle): HRESULT {.stdcall.}
        DrawGradientMesh*: proc (This:ptr ID2D1CommandSink2, gradientMesh:ptr ID2D1GradientMesh): HRESULT {.stdcall.}
        DrawGdiMetafile*: proc (This:ptr ID2D1CommandSink2, gdiMetafile:ptr ID2D1GdiMetafile, destinationRectangle:ptr D2D1_RECT_F, sourceRectangle:ptr D2D1_RECT_F): HRESULT {.stdcall.}
    ID2D1CommandSink2* = object
        lpVtbl*: ptr ID2D1CommandSink2Vtbl
    ID2D1GdiMetafile1Vtbl* = object
        Base*: ID2D1GdiMetafileVtbl
        GetDpi*: proc (This:ptr ID2D1GdiMetafile1, dpiX:ptr FLOAT, dpiY:ptr FLOAT): HRESULT {.stdcall.}
        GetSourceBounds*: proc (This:ptr ID2D1GdiMetafile1, bounds:ptr D2D1_RECT_F): HRESULT {.stdcall.}
    ID2D1GdiMetafile1* = object
        lpVtbl*: ptr ID2D1GdiMetafile1Vtbl
    ID2D1GdiMetafileSink1Vtbl* = object
        Base*: ID2D1GdiMetafileSinkVtbl
        ProcessRecord*: proc (This:ptr ID2D1GdiMetafileSink1, recordType:DWORD, recordData:pointer, recordDataSize:DWORD, flags:UINT32): HRESULT {.stdcall.}
    ID2D1GdiMetafileSink1* = object
        lpVtbl*: ptr ID2D1GdiMetafileSink1Vtbl
    ID2D1SpriteBatchVtbl* = object
        Base*: ID2D1ResourceVtbl
        AddSprites*: proc (This:ptr ID2D1SpriteBatch, spriteCount:UINT32, destinationRectangles:ptr D2D1_RECT_F, sourceRectangles:ptr D2D1_RECT_U = NULL, colors:ptr D2D1_COLOR_F = NULL, transforms:ptr D2D1_MATRIX_3X2_F = NULL, destinationRectanglesStride:UINT32 = UINT32 sizeof(D2D1_RECT_F)): HRESULT {.stdcall.}
        SetSprites*: proc (This:ptr ID2D1SpriteBatch, startIndex:UINT32, spriteCount:UINT32, destinationRectangles:ptr D2D1_RECT_F = NULL, sourceRectangles:ptr D2D1_RECT_U = NULL, colors:ptr D2D1_COLOR_F = NULL, transforms:ptr D2D1_MATRIX_3X2_F = NULL, destinationRectanglesStride:UINT32 = UINT32 sizeof(D2D1_RECT_F)): HRESULT {.stdcall.}
        GetSprites*: proc (This:ptr ID2D1SpriteBatch, startIndex:UINT32, spriteCount:UINT32, destinationRectangles:ptr D2D1_RECT_F = NULL, sourceRectangles:ptr D2D1_RECT_U = NULL, colors:ptr D2D1_COLOR_F = NULL, transforms:ptr D2D1_MATRIX_3X2_F = NULL): HRESULT {.stdcall.}
        GetSpriteCount*: proc (This:ptr ID2D1SpriteBatch): UINT32 {.stdcall.}
        Clear*: proc (This:ptr ID2D1SpriteBatch) {.stdcall.}
    ID2D1SpriteBatch* = object
        lpVtbl*: ptr ID2D1SpriteBatchVtbl
    ID2D1DeviceContext3Vtbl* = object
        Base*: ID2D1DeviceContext2Vtbl
        CreateSpriteBatch*: proc (This:ptr ID2D1DeviceContext3, spriteBatch:ptr ptr ID2D1SpriteBatch): HRESULT {.stdcall.}
        DrawSpriteBatch*: proc (This:ptr ID2D1DeviceContext3, spriteBatch:ptr ID2D1SpriteBatch, startIndex:UINT32, spriteCount:UINT32, bitmap:ptr ID2D1Bitmap, interpolationMode:D2D1_BITMAP_INTERPOLATION_MODE = D2D1_BITMAP_INTERPOLATION_MODE_LINEAR, spriteOptions:D2D1_SPRITE_OPTIONS = D2D1_SPRITE_OPTIONS_NONE) {.stdcall.}
    ID2D1DeviceContext3* = object
        lpVtbl*: ptr ID2D1DeviceContext3Vtbl
    ID2D1Device3Vtbl* = object
        Base*: ID2D1Device2Vtbl
        CreateDeviceContext*: proc (This:ptr ID2D1Device3, options:D2D1_DEVICE_CONTEXT_OPTIONS, deviceContext3:ptr ptr ID2D1DeviceContext3): HRESULT {.stdcall.}
    ID2D1Device3* = object
        lpVtbl*: ptr ID2D1Device3Vtbl
    ID2D1Factory4Vtbl* = object
        Base*: ID2D1Factory3Vtbl
        CreateDevice*: proc (This:ptr ID2D1Factory4, dxgiDevice:ptr IDXGIDevice, d2dDevice3:ptr ptr ID2D1Device3): HRESULT {.stdcall.}
    ID2D1Factory4* = object
        lpVtbl*: ptr ID2D1Factory4Vtbl
    ID2D1CommandSink3Vtbl* = object
        Base*: ID2D1CommandSink2Vtbl
        DrawSpriteBatch*: proc (This:ptr ID2D1CommandSink3, spriteBatch:ptr ID2D1SpriteBatch, startIndex:UINT32, spriteCount:UINT32, bitmap:ptr ID2D1Bitmap, interpolationMode:D2D1_BITMAP_INTERPOLATION_MODE, spriteOptions:D2D1_SPRITE_OPTIONS): HRESULT {.stdcall.}
    ID2D1CommandSink3* = object
        lpVtbl*: ptr ID2D1CommandSink3Vtbl
    ID2D1SvgGlyphStyleVtbl* = object
        Base*: ID2D1ResourceVtbl
        SetFill*: proc (This:ptr ID2D1SvgGlyphStyle, brush:ptr ID2D1Brush): HRESULT {.stdcall.}
        GetFill*: proc (This:ptr ID2D1SvgGlyphStyle, brush:ptr ptr ID2D1Brush) {.stdcall.}
        SetStroke*: proc (This:ptr ID2D1SvgGlyphStyle, brush:ptr ID2D1Brush, strokeWidth:FLOAT = 1.0f, dashes:ptr FLOAT = NULL, dashesCount:UINT32 = 0, dashOffset:FLOAT = 1.0f): HRESULT {.stdcall.}
        GetStrokeDashesCount*: proc (This:ptr ID2D1SvgGlyphStyle): UINT32 {.stdcall.}
        GetStroke*: proc (This:ptr ID2D1SvgGlyphStyle, brush:ptr ptr ID2D1Brush, strokeWidth:ptr FLOAT = NULL, dashes:ptr FLOAT = NULL, dashesCount:UINT32 = 0, dashOffset:ptr FLOAT = NULL) {.stdcall.}
    ID2D1SvgGlyphStyle* = object
        lpVtbl*: ptr ID2D1SvgGlyphStyleVtbl
    ID2D1DeviceContext4Vtbl* = object
        Base*: ID2D1DeviceContext3Vtbl
        CreateSvgGlyphStyle*: proc (This:ptr ID2D1DeviceContext4, svgGlyphStyle:ptr ptr ID2D1SvgGlyphStyle): HRESULT {.stdcall.}
        DrawText*: proc (This:ptr ID2D1DeviceContext4, str:ptr WCHAR, strLength:UINT32, textFormat:ptr IDWriteTextFormat, layoutRect:ptr D2D1_RECT_F, defaultFillBrush:ptr ID2D1Brush, svgGlyphStyle:ptr ID2D1SvgGlyphStyle, colorPaletteIndex:UINT32 = 0, options:D2D1_DRAW_TEXT_OPTIONS = D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT, measuringMode:DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL) {.stdcall.}
        DrawTextLayout*: proc (This:ptr ID2D1DeviceContext4, origin:D2D1_POINT_2F, textLayout:ptr IDWriteTextLayout, defaultFillBrush:ptr ID2D1Brush, svgGlyphStyle:ptr ID2D1SvgGlyphStyle, colorPaletteIndex:UINT32 = 0, options:D2D1_DRAW_TEXT_OPTIONS = D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT) {.stdcall.}
        DrawColorBitmapGlyphRun*: proc (This:ptr ID2D1DeviceContext4, glyphImageFormat:DWRITE_GLYPH_IMAGE_FORMATS, baselineOrigin:D2D1_POINT_2F, glyphRun:ptr DWRITE_GLYPH_RUN, measuringMode:DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL, bitmapSnapOption:D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION = D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION_DEFAULT) {.stdcall.}
        DrawSvgGlyphRun*: proc (This:ptr ID2D1DeviceContext4, baselineOrigin:D2D1_POINT_2F, glyphRun:ptr DWRITE_GLYPH_RUN, defaultFillBrush:ptr ID2D1Brush = NULL, svgGlyphStyle:ptr ID2D1SvgGlyphStyle = NULL, colorPaletteIndex:UINT32 = 0, measuringMode:DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL) {.stdcall.}
        GetColorBitmapGlyphImage*: proc (This:ptr ID2D1DeviceContext4, glyphImageFormat:DWRITE_GLYPH_IMAGE_FORMATS, glyphOrigin:D2D1_POINT_2F, fontFace:ptr IDWriteFontFace, fontEmSize:FLOAT, glyphIndex:UINT16, isSideways:BOOL, worldTransform:ptr D2D1_MATRIX_3X2_F, dpiX:FLOAT, dpiY:FLOAT, glyphTransform:ptr D2D1_MATRIX_3X2_F, glyphImage:ptr ptr ID2D1Image): HRESULT {.stdcall.}
        GetSvgGlyphImage*: proc (This:ptr ID2D1DeviceContext4, glyphOrigin:D2D1_POINT_2F, fontFace:ptr IDWriteFontFace, fontEmSize:FLOAT, glyphIndex:UINT16, isSideways:BOOL, worldTransform:ptr D2D1_MATRIX_3X2_F, defaultFillBrush:ptr ID2D1Brush, svgGlyphStyle:ptr ID2D1SvgGlyphStyle, colorPaletteIndex:UINT32, glyphTransform:ptr D2D1_MATRIX_3X2_F, glyphImage:ptr ptr ID2D1CommandList): HRESULT {.stdcall.}
    ID2D1DeviceContext4* = object
        lpVtbl*: ptr ID2D1DeviceContext4Vtbl
    ID2D1Device4Vtbl* = object
        Base*: ID2D1Device3Vtbl
        CreateDeviceContext*: proc (This:ptr ID2D1Device4, options:D2D1_DEVICE_CONTEXT_OPTIONS, deviceContext4:ptr ptr ID2D1DeviceContext4): HRESULT {.stdcall.}
        SetMaximumColorGlyphCacheMemory*: proc (This:ptr ID2D1Device4, maximumInBytes:UINT64) {.stdcall.}
        GetMaximumColorGlyphCacheMemory*: proc (This:ptr ID2D1Device4): UINT64 {.stdcall.}
    ID2D1Device4* = object
        lpVtbl*: ptr ID2D1Device4Vtbl
    ID2D1Factory5Vtbl* = object
        Base*: ID2D1Factory4Vtbl
        CreateDevice*: proc (This:ptr ID2D1Factory5, dxgiDevice:ptr IDXGIDevice, d2dDevice4:ptr ptr ID2D1Device4): HRESULT {.stdcall.}
    ID2D1Factory5* = object
        lpVtbl*: ptr ID2D1Factory5Vtbl
