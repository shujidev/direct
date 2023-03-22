import winim/lean
import dcommon, dwrite, dwrite_1, dwrite_2
#~ import d2d1, d2d1_1helper

const IID_IDWriteFontDownloadListener* = IID(Data1:0xb06fe5b9'i32, Data2:0x43ec, Data3:0x4393, Data4:[0x88'u8, 0x1b, 0xdb, 0xe4, 0xdc, 0x72, 0xfd, 0xa7])
const IID_IDWriteFontDownloadQueue* = IID(Data1:0xb71e6052'i32, Data2:0x5aea, Data3:0x4fa3, Data4:[0x83'u8, 0x2e, 0xf6, 0x0d, 0x43, 0x1f, 0x7e, 0x91])
const IID_IDWriteRenderingParams3* = IID(Data1:0xb7924baa'i32, Data2:0x391b, Data3:0x412a, Data4:[0x8c'u8, 0x5c, 0xe4, 0x4c, 0xc2, 0xd8, 0x67, 0xdc])
const IID_IDWriteStringList* = IID(Data1:0xcfee3140'i32, Data2:0x1257, Data3:0x47ca, Data4:[0x8b'u8, 0x85, 0x31, 0xbf, 0xcf, 0x3f, 0x2d, 0x0e])
const IID_IDWriteFontSet* = IID(Data1:0x53585141'i32, Data2:0xd9f8, Data3:0x4095, Data4:[0x83'u8, 0x21, 0xd7, 0x3c, 0xf6, 0xbd, 0x11, 0x6b])
const IID_IDWriteFontResource* = IID(Data1:0x1f803a76'i32, Data2:0x6871, Data3:0x48e8, Data4:[0x98'u8, 0x7f, 0xb9, 0x75, 0x55, 0x1c, 0x50, 0xf2])
const IID_IDWriteFontSet1* = IID(Data1:0x7e9fda85'i32, Data2:0x6c92, Data3:0x4053, Data4:[0xbc'u8, 0x47, 0x7a, 0xe3, 0x53, 0x0d, 0xb4, 0xd3])
const IID_IDWriteFont3* = IID(Data1:0x29748ed6'i32, Data2:0x8c9c, Data3:0x4a6a, Data4:[0xbe'u8, 0x0b, 0xd9, 0x12, 0xe8, 0x53, 0x89, 0x44])
const IID_IDWriteFontFamily1* = IID(Data1:0xda20d8ef'i32, Data2:0x812a, Data3:0x4c43, Data4:[0x98'u8, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xdf])
const IID_IDWriteFontFamily2* = IID(Data1:0x3ed49e77'i32, Data2:0xa398, Data3:0x4261, Data4:[0xb9'u8, 0xcf, 0xc1, 0x26, 0xc2, 0x13, 0x1e, 0xf3])
const IID_IDWriteFontCollection1* = IID(Data1:0x53585141'i32, Data2:0xd9f8, Data3:0x4095, Data4:[0x83'u8, 0x21, 0xd7, 0x3c, 0xf6, 0xbd, 0x11, 0x6c])
const IID_IDWriteFontCollection2* = IID(Data1:0x514039c6'i32, Data2:0x4617, Data3:0x4064, Data4:[0xbf'u8, 0x8b, 0x92, 0xea, 0x83, 0xe5, 0x06, 0xe0])
const IID_IDWriteFontCollection3* = IID(Data1:0xa4d055a6'i32, Data2:0xf9e3, Data3:0x4e25, Data4:[0x93'u8, 0xb7, 0x9e, 0x30, 0x9f, 0x3a, 0xf8, 0xe9])
const IID_IDWriteFontFaceReference* = IID(Data1:0x5e7fa7ca'i32, Data2:0xdde3, Data3:0x424c, Data4:[0x89'u8, 0xf0, 0x9f, 0xcd, 0x6f, 0xed, 0x58, 0xcd])
const IID_IDWriteFontFaceReference1* = IID(Data1:0xc081fe77'i32, Data2:0x2fd1, Data3:0x41ac, Data4:[0xa5'u8, 0xa3, 0x34, 0x98, 0x3c, 0x4b, 0xa6, 0x1a])
const IID_IDWriteFontList1* = IID(Data1:0xda20d8ef'i32, Data2:0x812a, Data3:0x4c43, Data4:[0x98'u8, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xde])
const IID_IDWriteFontList2* = IID(Data1:0xc0763a34'i32, Data2:0x77af, Data3:0x445a, Data4:[0xb7'u8, 0x35, 0x08, 0xc3, 0x7b, 0x0a, 0x5b, 0xf5])
const IID_IDWriteFontSet2* = IID(Data1:0xdc7ead19'i32, Data2:0xe54c, Data3:0x43af, Data4:[0xb2'u8, 0xda, 0x4e, 0x2b, 0x79, 0xba, 0x3f, 0x7f])
const IID_IDWriteFontSet3* = IID(Data1:0x7c073ef2'i32, Data2:0xa7f4, Data3:0x4045, Data4:[0x8c'u8, 0x32, 0x8a, 0xb8, 0xae, 0x64, 0x0f, 0x90])
const IID_IDWriteFontFace3* = IID(Data1:0xd37d7598'i32, Data2:0x09be, Data3:0x4222, Data4:[0xa2'u8, 0x36, 0x20, 0x81, 0x34, 0x1c, 0xc1, 0xf2])
const IID_IDWriteTextFormat2* = IID(Data1:0xf67e0edd'i32, Data2:0x9e3d, Data3:0x4ecc, Data4:[0x8c'u8, 0x32, 0x41, 0x83, 0x25, 0x3d, 0xfe, 0x70])
const IID_IDWriteTextFormat3* = IID(Data1:0x6d3b5641'i32, Data2:0xe550, Data3:0x430d, Data4:[0xa8'u8, 0x5b, 0xb7, 0xbf, 0x48, 0xa9, 0x34, 0x27])
const IID_IDWriteTextLayout3* = IID(Data1:0x07ddcd52'i32, Data2:0x020e, Data3:0x4de8, Data4:[0xac'u8, 0x33, 0x6c, 0x95, 0x3d, 0x83, 0xf9, 0x2d])
const IID_IDWriteTextLayout4* = IID(Data1:0x05a9bf42'i32, Data2:0x223f, Data3:0x4441, Data4:[0xb5'u8, 0xfb, 0x82, 0x63, 0x68, 0x5f, 0x55, 0xe9])
const IID_IDWriteFontFallback1* = IID(Data1:0x2397599d'i32, Data2:0xdd0d, Data3:0x4681, Data4:[0xbd'u8, 0x6a, 0xf4, 0xf3, 0x1e, 0xaa, 0xde, 0x77])
const IID_IDWriteGdiInterop1* = IID(Data1:0x4556be70'i32, Data2:0x3abd, Data3:0x4f70, Data4:[0x90'u8, 0xbe, 0x42, 0x17, 0x80, 0xa6, 0xf5, 0x15])
const IID_IDWriteFontSetBuilder* = IID(Data1:0x2f642afe'i32, Data2:0x9c68, Data3:0x4f40, Data4:[0xb8'u8, 0xbe, 0x45, 0x74, 0x01, 0xaf, 0xcb, 0x3d])
const IID_IDWriteFontSetBuilder1* = IID(Data1:0x3ff7715f'i32, Data2:0x3cdc, Data3:0x4dc6, Data4:[0x9b'u8, 0x72, 0xec, 0x56, 0x21, 0xdc, 0xca, 0xfd])
const IID_IDWriteFontSetBuilder2* = IID(Data1:0xee5ba612'i32, Data2:0xb131, Data3:0x463c, Data4:[0x8f'u8, 0x4f, 0x31, 0x89, 0xb9, 0x40, 0x1e, 0x45])
const IID_IDWriteFactory3* = IID(Data1:0x9a1b41c3'i32, Data2:0xd3bb, Data3:0x466a, Data4:[0x87'u8, 0xfc, 0xfe, 0x67, 0x55, 0x6a, 0x3b, 0x65])
const IID_IDWriteFontFace4* = IID(Data1:0x27f2a904'i32, Data2:0x4eb8, Data3:0x441d, Data4:[0x96'u8, 0x78, 0x05, 0x63, 0xf5, 0x3e, 0x3e, 0x2f])
const IID_IDWriteFontFace5* = IID(Data1:0x98eff3a5'i32, Data2:0xb667, Data3:0x479a, Data4:[0xb1'u8, 0x45, 0xe2, 0xfa, 0x5b, 0x9f, 0xdc, 0x29])
const IID_IDWriteColorGlyphRunEnumerator1* = IID(Data1:0x7c5f86da'i32, Data2:0xc7a1, Data3:0x4f05, Data4:[0xb8'u8, 0xe1, 0x55, 0xa1, 0x79, 0xfe, 0x5a, 0x35])
const IID_IDWriteFactory4* = IID(Data1:0x4b0b5bd3'i32, Data2:0x0797, Data3:0x4549, Data4:[0x8a'u8, 0xc5, 0xfe, 0x91, 0x5c, 0xc5, 0x38, 0x56])
const IID_IDWriteAsyncResult* = IID(Data1:0xce25f8fd'i32, Data2:0x863b, Data3:0x4d13, Data4:[0x96'u8, 0x51, 0xc1, 0xf8, 0x8d, 0xc7, 0x3f, 0xe2])
const IID_IDWriteRemoteFontFileStream* = IID(Data1:0x4db3757a'i32, Data2:0x2c72, Data3:0x4ed9, Data4:[0xb2'u8, 0xb6, 0x1a, 0xba, 0xbe, 0x1a, 0xff, 0x9c])
const IID_IDWriteRemoteFontFileLoader* = IID(Data1:0x68648c83'i32, Data2:0x6ede, Data3:0x46c0, Data4:[0xab'u8, 0x46, 0x20, 0x08, 0x3a, 0x88, 0x7f, 0xde])
const IID_IDWriteInMemoryFontFileLoader* = IID(Data1:0xdc102f47'i32, Data2:0xa12d, Data3:0x4b1c, Data4:[0x82'u8, 0x2d, 0x9e, 0x11, 0x7e, 0x33, 0x04, 0x3f])
const IID_IDWriteFactory5* = IID(Data1:0x958db99a'i32, Data2:0xbe2a, Data3:0x4f09, Data4:[0xaf'u8, 0x7d, 0x65, 0x18, 0x98, 0x03, 0xd1, 0xd3])
const IID_IDWriteFactory6* = IID(Data1:0xf3744d80'i32, Data2:0x21f7, Data3:0x42eb, Data4:[0xb3'u8, 0x5d, 0x99, 0x5b, 0xc7, 0x2f, 0xc2, 0x23])
const IID_IDWriteFactory7* = IID(Data1:0x35d0e0b3'i32, Data2:0x9076, Data3:0x4d2e, Data4:[0xa0'u8, 0x16, 0xa9, 0x1b, 0x56, 0x8a, 0x06, 0xb4])



type
  DWRITE_LOCALITY* = enum
    DWRITE_LOCALITY_REMOTE = 0, DWRITE_LOCALITY_PARTIAL = 1, DWRITE_LOCALITY_LOCAL = 2
  DWRITE_RENDERING_MODE1* = enum
    DWRITE_RENDERING_MODE1_DEFAULT = 0, DWRITE_RENDERING_MODE1_ALIASED = 1,
    DWRITE_RENDERING_MODE1_GDI_CLASSIC = 2, DWRITE_RENDERING_MODE1_GDI_NATURAL = 3,
    DWRITE_RENDERING_MODE1_NATURAL = 4,
    DWRITE_RENDERING_MODE1_NATURAL_SYMMETRIC = 5,
    DWRITE_RENDERING_MODE1_OUTLINE = 6,
    DWRITE_RENDERING_MODE1_NATURAL_SYMMETRIC_DOWNSAMPLED = 7
  DWRITE_FONT_PROPERTY_ID* = enum
    DWRITE_FONT_PROPERTY_ID_NONE = 0,
    DWRITE_FONT_PROPERTY_ID_WEIGHT_STRETCH_STYLE_FAMILY_NAME = 1,
    DWRITE_FONT_PROPERTY_ID_TYPOGRAPHIC_FAMILY_NAME = 2,
    DWRITE_FONT_PROPERTY_ID_WEIGHT_STRETCH_STYLE_FACE_NAME = 3,
    DWRITE_FONT_PROPERTY_ID_FULL_NAME = 4,
    DWRITE_FONT_PROPERTY_ID_WIN32_FAMILY_NAME = 5,
    DWRITE_FONT_PROPERTY_ID_POSTSCRIPT_NAME = 6,
    DWRITE_FONT_PROPERTY_ID_DESIGN_SCRIPT_LANGUAGE_TAG = 7,
    DWRITE_FONT_PROPERTY_ID_SUPPORTED_SCRIPT_LANGUAGE_TAG = 8,
    DWRITE_FONT_PROPERTY_ID_SEMANTIC_TAG = 9, DWRITE_FONT_PROPERTY_ID_WEIGHT = 10,
    DWRITE_FONT_PROPERTY_ID_STRETCH = 11, DWRITE_FONT_PROPERTY_ID_STYLE = 12,
    DWRITE_FONT_PROPERTY_ID_TYPOGRAPHIC_FACE_NAME = 13,
    #~ DWRITE_FONT_PROPERTY_ID_TOTAL = DWRITE_FONT_PROPERTY_ID_STYLE + 1, DWRITE_FONT_PROPERTY_ID_TOTAL_RS3 = DWRITE_FONT_PROPERTY_ID_TYPOGRAPHIC_FACE_NAME +1
  DWRITE_FONT_AXIS_TAG* = enum
    DWRITE_FONT_AXIS_TAG_WIDTH = 0x68746477,
    DWRITE_FONT_AXIS_TAG_ITALIC = 0x6c617469,
    DWRITE_FONT_AXIS_TAG_WEIGHT = 0x74686777,
    DWRITE_FONT_AXIS_TAG_SLANT = 0x746e6c73,
    DWRITE_FONT_AXIS_TAG_OPTICAL_SIZE = 0x7a73706f
  DWRITE_FONT_SOURCE_TYPE* = enum
    DWRITE_FONT_SOURCE_TYPE_UNKNOWN = 0, DWRITE_FONT_SOURCE_TYPE_PER_MACHINE = 1,
    DWRITE_FONT_SOURCE_TYPE_PER_USER = 2, DWRITE_FONT_SOURCE_TYPE_APPX_PACKAGE = 3,
    DWRITE_FONT_SOURCE_TYPE_REMOTE_FONT_PROVIDER = 4
  DWRITE_AUTOMATIC_FONT_AXES* = enum
    DWRITE_AUTOMATIC_FONT_AXES_NONE = 0,
    DWRITE_AUTOMATIC_FONT_AXES_OPTICAL_SIZE = 1
  DWRITE_FONT_AXIS_ATTRIBUTES* = enum
    DWRITE_FONT_AXIS_ATTRIBUTES_NONE = 0, DWRITE_FONT_AXIS_ATTRIBUTES_VARIABLE = 1,
    DWRITE_FONT_AXIS_ATTRIBUTES_HIDDEN = 2
  DWRITE_FONT_FAMILY_MODEL* = enum
    DWRITE_FONT_FAMILY_MODEL_TYPOGRAPHIC = 0,
    DWRITE_FONT_FAMILY_MODEL_WEIGHT_STRETCH_STYLE = 1
  DWRITE_FONT_LINE_GAP_USAGE* = enum
    DWRITE_FONT_LINE_GAP_USAGE_DEFAULT = 0,
    DWRITE_FONT_LINE_GAP_USAGE_DISABLED = 1, DWRITE_FONT_LINE_GAP_USAGE_ENABLED = 2
  DWRITE_CONTAINER_TYPE* = enum
    DWRITE_CONTAINER_TYPE_UNKNOWN = 0, DWRITE_CONTAINER_TYPE_WOFF = 1,
    DWRITE_CONTAINER_TYPE_WOFF2 = 2
  DWRITE_FONT_PROPERTY* {.bycopy.} = object
    propertyId*: DWRITE_FONT_PROPERTY_ID
    propertyValue*: ptr WCHAR
    localeName*: ptr WCHAR

  DWRITE_FONT_AXIS_VALUE* {.bycopy.} = object
    axisTag*: DWRITE_FONT_AXIS_TAG
    value*: FLOAT

  DWRITE_FONT_AXIS_RANGE* {.bycopy.} = object
    axisTag*: DWRITE_FONT_AXIS_TAG
    minValue*: FLOAT
    maxValue*: FLOAT

  DWRITE_LINE_METRICS1* {.bycopy.} = object
    length*: UINT32
    trailingWhitespaceLength*: UINT32
    newlineLength*: UINT32
    height*: FLOAT
    baseline*: FLOAT
    isTrimmed*: WINBOOL
    leadingBefore*: FLOAT
    leadingAfter*: FLOAT

  DWRITE_LINE_SPACING* {.bycopy.} = object
    `method`*: DWRITE_LINE_SPACING_METHOD
    height*: FLOAT
    baseline*: FLOAT
    leadingBefore*: FLOAT
    fontLineGapUsage*: DWRITE_FONT_LINE_GAP_USAGE

  DWRITE_GLYPH_IMAGE_DATA* {.bycopy.} = object
    imageData*: pointer
    imageDataSize*: UINT32
    uniqueDataId*: UINT32
    pixelsPerEm*: UINT32
    pixelSize*: D2D1_SIZE_U
    horizontalLeftOrigin*: D2D1_POINT_2L
    horizontalRightOrigin*: D2D1_POINT_2L
    verticalTopOrigin*: D2D1_POINT_2L
    verticalBottomOrigin*: D2D1_POINT_2L

  DWRITE_COLOR_GLYPH_RUN1* {.bycopy.} = object
    glyphRun*: DWRITE_GLYPH_RUN
    glyphRunDescription*: ptr DWRITE_GLYPH_RUN_DESCRIPTION
    baselineOriginX*: FLOAT
    baselineOriginY*: FLOAT
    runColor*: DWRITE_COLOR_F
    paletteIndex*: UINT16
    glyphImageFormat*: DWRITE_GLYPH_IMAGE_FORMATS
    measuringMode*: DWRITE_MEASURING_MODE

  DWRITE_FILE_FRAGMENT* {.bycopy.} = object
    fileOffset*: UINT64
    fragmentSize*: UINT64




const
  DWRITE_FONT_PROPERTY_ID_FAMILY_NAME* = DWRITE_FONT_PROPERTY_ID_TYPOGRAPHIC_FAMILY_NAME
  DWRITE_FONT_PROPERTY_ID_PREFERRED_FAMILY_NAME* = DWRITE_FONT_PROPERTY_ID_WEIGHT_STRETCH_STYLE_FAMILY_NAME
  DWRITE_FONT_PROPERTY_ID_FACE_NAME* = DWRITE_FONT_PROPERTY_ID_WEIGHT_STRETCH_STYLE_FACE_NAME

    
type
    IDWriteFontDownloadListenerVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontDownloadListener, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontDownloadListener): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontDownloadListener): ULONG {.stdcall.}
                DownloadCompleted*: proc (This:ptr IDWriteFontDownloadListener, queue:ptr IDWriteFontDownloadQueue, context:pointer, result:HRESULT) {.stdcall.}
    IDWriteFontDownloadListener* = object
        lpVtbl*: ptr IDWriteFontDownloadListenerVtbl
    IDWriteFontDownloadQueueVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontDownloadQueue, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontDownloadQueue): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontDownloadQueue): ULONG {.stdcall.}
                AddListener*: proc (This:ptr IDWriteFontDownloadQueue, listener:ptr IDWriteFontDownloadListener, token:ptr UINT32): HRESULT {.stdcall.}
                RemoveListener*: proc (This:ptr IDWriteFontDownloadQueue, token:UINT32): HRESULT {.stdcall.}
                IsEmpty*: proc (This:ptr IDWriteFontDownloadQueue): BOOL {.stdcall.}
                BeginDownload*: proc (This:ptr IDWriteFontDownloadQueue, context:pointer): HRESULT {.stdcall.}
                CancelDownload*: proc (This:ptr IDWriteFontDownloadQueue): HRESULT {.stdcall.}
                GetGenerationCount*: proc (This:ptr IDWriteFontDownloadQueue): UINT64 {.stdcall.}
    IDWriteFontDownloadQueue* = object
        lpVtbl*: ptr IDWriteFontDownloadQueueVtbl
    IDWriteRenderingParams3Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteRenderingParams3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteRenderingParams3): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteRenderingParams3): ULONG {.stdcall.}
                GetGamma*: proc (This:ptr IDWriteRenderingParams3): FLOAT {.stdcall.}
                GetEnhancedContrast*: proc (This:ptr IDWriteRenderingParams3): FLOAT {.stdcall.}
                GetClearTypeLevel*: proc (This:ptr IDWriteRenderingParams3): FLOAT {.stdcall.}
                GetPixelGeometry*: proc (This:ptr IDWriteRenderingParams3): DWRITE_PIXEL_GEOMETRY {.stdcall.}
                GetRenderingMode*: proc (This:ptr IDWriteRenderingParams3): DWRITE_RENDERING_MODE {.stdcall.}
                GetGrayscaleEnhancedContrast*: proc (This:ptr IDWriteRenderingParams3): FLOAT {.stdcall.}
                GetGridFitMode*: proc (This:ptr IDWriteRenderingParams3): DWRITE_GRID_FIT_MODE {.stdcall.}
                GetRenderingMode1*: proc (This:ptr IDWriteRenderingParams3): DWRITE_RENDERING_MODE1 {.stdcall.}
    IDWriteRenderingParams3* = object
        lpVtbl*: ptr IDWriteRenderingParams3Vtbl
    IDWriteStringListVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteStringList, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteStringList): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteStringList): ULONG {.stdcall.}
                GetCount*: proc (This:ptr IDWriteStringList): UINT32 {.stdcall.}
                GetLocaleNameLength*: proc (This:ptr IDWriteStringList, index:UINT32, length:ptr UINT32): HRESULT {.stdcall.}
                GetLocaleName*: proc (This:ptr IDWriteStringList, index:UINT32, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
                GetStringLength*: proc (This:ptr IDWriteStringList, index:UINT32, length:ptr UINT32): HRESULT {.stdcall.}
                GetString*: proc (This:ptr IDWriteStringList, index:UINT32, str:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
    IDWriteStringList* = object
        lpVtbl*: ptr IDWriteStringListVtbl
    IDWriteFontSetVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontSet, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontSet): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontSet): ULONG {.stdcall.}
                GetFontCount*: proc (This:ptr IDWriteFontSet): UINT32 {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontSet, index:UINT32, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                FindFontFaceReference*: proc (This:ptr IDWriteFontSet, reference:ptr IDWriteFontFaceReference, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                FindFontFace*: proc (This:ptr IDWriteFontSet, fontface:ptr IDWriteFontFace, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                GetPropertyValues3*: proc (This:ptr IDWriteFontSet, id:DWRITE_FONT_PROPERTY_ID, values:ptr ptr IDWriteStringList): HRESULT {.stdcall.}
                GetPropertyValues2*: proc (This:ptr IDWriteFontSet, id:DWRITE_FONT_PROPERTY_ID, preferred_locales:ptr WCHAR, values:ptr ptr IDWriteStringList): HRESULT {.stdcall.}
                GetPropertyValues*: proc (This:ptr IDWriteFontSet, index:UINT32, id:DWRITE_FONT_PROPERTY_ID, exists:ptr BOOL, values:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetPropertyOccurrenceCount*: proc (This:ptr IDWriteFontSet, property:ptr DWRITE_FONT_PROPERTY, count:ptr UINT32): HRESULT {.stdcall.}
                GetMatchingFonts2*: proc (This:ptr IDWriteFontSet, family:ptr WCHAR, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                GetMatchingFonts*: proc (This:ptr IDWriteFontSet, props:ptr DWRITE_FONT_PROPERTY, count:UINT32, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
    IDWriteFontSet* = object
        lpVtbl*: ptr IDWriteFontSetVtbl
    IDWriteFontResourceVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontResource, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontResource): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontResource): ULONG {.stdcall.}
                GetFontFile*: proc (This:ptr IDWriteFontResource, fontfile:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                GetFontFaceIndex*: proc (This:ptr IDWriteFontResource): UINT32 {.stdcall.}
                GetFontAxisCount*: proc (This:ptr IDWriteFontResource): UINT32 {.stdcall.}
                GetDefaultFontAxisValues*: proc (This:ptr IDWriteFontResource, values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32): HRESULT {.stdcall.}
                GetFontAxisRanges*: proc (This:ptr IDWriteFontResource, ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32): HRESULT {.stdcall.}
                GetFontAxisAttributes*: proc (This:ptr IDWriteFontResource, axis:UINT32): DWRITE_FONT_AXIS_ATTRIBUTES {.stdcall.}
                GetAxisNames*: proc (This:ptr IDWriteFontResource, axis:UINT32, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetAxisValueNameCount*: proc (This:ptr IDWriteFontResource, axis:UINT32): UINT32 {.stdcall.}
                GetAxisValueNames*: proc (This:ptr IDWriteFontResource, axis:UINT32, axis_value:UINT32, axis_range:ptr DWRITE_FONT_AXIS_RANGE, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                HasVariations*: proc (This:ptr IDWriteFontResource): BOOL {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFontResource, simulations:DWRITE_FONT_SIMULATIONS, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, fontface:ptr ptr IDWriteFontFace5): HRESULT {.stdcall.}
                CreateFontFaceReference*: proc (This:ptr IDWriteFontResource, simulations:DWRITE_FONT_SIMULATIONS, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, reference:ptr ptr IDWriteFontFaceReference1): HRESULT {.stdcall.}
    IDWriteFontResource* = object
        lpVtbl*: ptr IDWriteFontResourceVtbl
    IDWriteFontSet1Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontSet1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontSet1): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontSet1): ULONG {.stdcall.}
                GetFontCount*: proc (This:ptr IDWriteFontSet1): UINT32 {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontSet1, index:UINT32, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                FindFontFaceReference*: proc (This:ptr IDWriteFontSet1, reference:ptr IDWriteFontFaceReference, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                FindFontFace*: proc (This:ptr IDWriteFontSet1, fontface:ptr IDWriteFontFace, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                GetPropertyValues3*: proc (This:ptr IDWriteFontSet1, id:DWRITE_FONT_PROPERTY_ID, values:ptr ptr IDWriteStringList): HRESULT {.stdcall.}
                GetPropertyValues2*: proc (This:ptr IDWriteFontSet1, id:DWRITE_FONT_PROPERTY_ID, preferred_locales:ptr WCHAR, values:ptr ptr IDWriteStringList): HRESULT {.stdcall.}
                GetPropertyValues*: proc (This:ptr IDWriteFontSet1, index:UINT32, id:DWRITE_FONT_PROPERTY_ID, exists:ptr BOOL, values:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetPropertyOccurrenceCount*: proc (This:ptr IDWriteFontSet1, property:ptr DWRITE_FONT_PROPERTY, count:ptr UINT32): HRESULT {.stdcall.}
                GetMatchingFonts2*: proc (This:ptr IDWriteFontSet1, family:ptr WCHAR, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                GetMatchingFonts*: proc (This:ptr IDWriteFontSet1, props:ptr DWRITE_FONT_PROPERTY, count:UINT32, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                IDWriteFontSet1_GetMatchingFonts*: proc (This:ptr IDWriteFontSet1, property:ptr DWRITE_FONT_PROPERTY, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFirstFontResources*: proc (This:ptr IDWriteFontSet1, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFonts3*: proc (This:ptr IDWriteFontSet1, indices:ptr UINT32, num_indices:UINT32, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFonts2*: proc (This:ptr IDWriteFontSet1, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, select_any_range:BOOL, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFonts*: proc (This:ptr IDWriteFontSet1, props:ptr DWRITE_FONT_PROPERTY, num_properties:UINT32, select_any_property:BOOL, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFontIndices2*: proc (This:ptr IDWriteFontSet1, ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, select_any_range:BOOL, indices:ptr UINT32, num_indices:UINT32, actual_num_indices:ptr UINT32): HRESULT {.stdcall.}
                GetFilteredFontIndices*: proc (This:ptr IDWriteFontSet1, props:ptr DWRITE_FONT_PROPERTY, num_properties:UINT32, select_any_range:BOOL, indices:ptr UINT32, num_indices:UINT32, actual_num_indices:ptr UINT32): HRESULT {.stdcall.}
                GetFontAxisRanges2*: proc (This:ptr IDWriteFontSet1, font_index:UINT32, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, actual_num_ranges:ptr UINT32): HRESULT {.stdcall.}
                GetFontAxisRanges*: proc (This:ptr IDWriteFontSet1, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, actual_num_ranges:ptr UINT32): HRESULT {.stdcall.}
                IDWriteFontSet1_GetFontFaceReference*: proc (This:ptr IDWriteFontSet1, index:UINT32, reference:ptr ptr IDWriteFontFaceReference1): HRESULT {.stdcall.}
                CreateFontResource*: proc (This:ptr IDWriteFontSet1, index:UINT32, resource:ptr ptr IDWriteFontResource): HRESULT {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFontSet1, index:UINT32, fontface:ptr ptr IDWriteFontFace5): HRESULT {.stdcall.}
                GetFontLocality*: proc (This:ptr IDWriteFontSet1, index:UINT32): DWRITE_LOCALITY {.stdcall.}
    IDWriteFontSet1* = object
        lpVtbl*: ptr IDWriteFontSet1Vtbl
    IDWriteFont3Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFont3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFont3): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFont3): ULONG {.stdcall.}
                GetFontFamily*: proc (This:ptr IDWriteFont3, family:ptr ptr IDWriteFontFamily): HRESULT {.stdcall.}
                GetWeight*: proc (This:ptr IDWriteFont3): DWRITE_FONT_WEIGHT {.stdcall.}
                GetStretch*: proc (This:ptr IDWriteFont3): DWRITE_FONT_STRETCH {.stdcall.}
                GetStyle*: proc (This:ptr IDWriteFont3): DWRITE_FONT_STYLE {.stdcall.}
                IsSymbolFont*: proc (This:ptr IDWriteFont3): BOOL {.stdcall.}
                GetFaceNames*: proc (This:ptr IDWriteFont3, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetInformationalStrings*: proc (This:ptr IDWriteFont3, stringid:DWRITE_INFORMATIONAL_STRING_ID, strings:ptr ptr IDWriteLocalizedStrings, exists:ptr BOOL): HRESULT {.stdcall.}
                GetSimulations*: proc (This:ptr IDWriteFont3): DWRITE_FONT_SIMULATIONS {.stdcall.}
                GetMetrics*: proc (This:ptr IDWriteFont3, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
                HasCharacter*: proc (This:ptr IDWriteFont3, value:UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFont3, face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
                IDWriteFont1_GetMetrics*: proc (This:ptr IDWriteFont3, metrics:ptr DWRITE_FONT_METRICS1) {.stdcall.}
                GetPanose*: proc (This:ptr IDWriteFont3, panose:ptr DWRITE_PANOSE) {.stdcall.}
                GetUnicodeRanges*: proc (This:ptr IDWriteFont3, max_count:UINT32, ranges:ptr DWRITE_UNICODE_RANGE, count:ptr UINT32): HRESULT {.stdcall.}
                IsMonospacedFont*: proc (This:ptr IDWriteFont3): BOOL {.stdcall.}
                IsColorFont*: proc (This:ptr IDWriteFont3): BOOL {.stdcall.}
                IDWriteFont3_CreateFontFace*: proc (This:ptr IDWriteFont3, fontface:ptr ptr IDWriteFontFace3): HRESULT {.stdcall.}
                Equals*: proc (This:ptr IDWriteFont3, font:ptr IDWriteFont): BOOL {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFont3, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                IDWriteFont3_HasCharacter*: proc (This:ptr IDWriteFont3, character:UINT32): BOOL {.stdcall.}
                GetLocality*: proc (This:ptr IDWriteFont3): DWRITE_LOCALITY {.stdcall.}
    IDWriteFont3* = object
        lpVtbl*: ptr IDWriteFont3Vtbl
    IDWriteFontFamily1Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontFamily1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontFamily1): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontFamily1): ULONG {.stdcall.}
                GetFontCollection*: proc (This:ptr IDWriteFontFamily1, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                GetFontCount*: proc (This:ptr IDWriteFontFamily1): UINT32 {.stdcall.}
                GetFont*: proc (This:ptr IDWriteFontFamily1, index:UINT32, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetFamilyNames*: proc (This:ptr IDWriteFontFamily1, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetFirstMatchingFont*: proc (This:ptr IDWriteFontFamily1, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetMatchingFonts*: proc (This:ptr IDWriteFontFamily1, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, fonts:ptr ptr IDWriteFontList): HRESULT {.stdcall.}
                GetFontLocality*: proc (This:ptr IDWriteFontFamily1, index:UINT32): DWRITE_LOCALITY {.stdcall.}
                IDWriteFontFamily1_GetFont*: proc (This:ptr IDWriteFontFamily1, index:UINT32, font:ptr ptr IDWriteFont3): HRESULT {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontFamily1, index:UINT32, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
    IDWriteFontFamily1* = object
        lpVtbl*: ptr IDWriteFontFamily1Vtbl
    IDWriteFontFamily2Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontFamily2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontFamily2): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontFamily2): ULONG {.stdcall.}
                GetFontCollection*: proc (This:ptr IDWriteFontFamily2, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                GetFontCount*: proc (This:ptr IDWriteFontFamily2): UINT32 {.stdcall.}
                GetFont*: proc (This:ptr IDWriteFontFamily2, index:UINT32, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetFamilyNames*: proc (This:ptr IDWriteFontFamily2, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetFirstMatchingFont*: proc (This:ptr IDWriteFontFamily2, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetMatchingFonts*: proc (This:ptr IDWriteFontFamily2, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, fonts:ptr ptr IDWriteFontList): HRESULT {.stdcall.}
                GetFontLocality*: proc (This:ptr IDWriteFontFamily2, index:UINT32): DWRITE_LOCALITY {.stdcall.}
                IDWriteFontFamily1_GetFont*: proc (This:ptr IDWriteFontFamily2, index:UINT32, font:ptr ptr IDWriteFont3): HRESULT {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontFamily2, index:UINT32, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                IDWriteFontFamily2_GetMatchingFonts*: proc (This:ptr IDWriteFontFamily2, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, fontlist:ptr ptr IDWriteFontList2): HRESULT {.stdcall.}
                GetFontSet*: proc (This:ptr IDWriteFontFamily2, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
    IDWriteFontFamily2* = object
        lpVtbl*: ptr IDWriteFontFamily2Vtbl
    IDWriteFontCollection1Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontCollection1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontCollection1): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontCollection1): ULONG {.stdcall.}
                GetFontFamilyCount*: proc (This:ptr IDWriteFontCollection1): UINT32 {.stdcall.}
                GetFontFamily*: proc (This:ptr IDWriteFontCollection1, index:UINT32, family:ptr ptr IDWriteFontFamily): HRESULT {.stdcall.}
                FindFamilyName*: proc (This:ptr IDWriteFontCollection1, name:ptr WCHAR, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                GetFontFromFontFace*: proc (This:ptr IDWriteFontCollection1, face:ptr IDWriteFontFace, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetFontSet*: proc (This:ptr IDWriteFontCollection1, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                IDWriteFontCollection1_GetFontFamily*: proc (This:ptr IDWriteFontCollection1, index:UINT32, family:ptr ptr IDWriteFontFamily1): HRESULT {.stdcall.}
    IDWriteFontCollection1* = object
        lpVtbl*: ptr IDWriteFontCollection1Vtbl
    IDWriteFontCollection2Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontCollection2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontCollection2): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontCollection2): ULONG {.stdcall.}
                GetFontFamilyCount*: proc (This:ptr IDWriteFontCollection2): UINT32 {.stdcall.}
                GetFontFamily*: proc (This:ptr IDWriteFontCollection2, index:UINT32, family:ptr ptr IDWriteFontFamily): HRESULT {.stdcall.}
                FindFamilyName*: proc (This:ptr IDWriteFontCollection2, name:ptr WCHAR, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                GetFontFromFontFace*: proc (This:ptr IDWriteFontCollection2, face:ptr IDWriteFontFace, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetFontSet*: proc (This:ptr IDWriteFontCollection2, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                IDWriteFontCollection1_GetFontFamily*: proc (This:ptr IDWriteFontCollection2, index:UINT32, family:ptr ptr IDWriteFontFamily1): HRESULT {.stdcall.}
                IDWriteFontCollection2_GetFontFamily*: proc (This:ptr IDWriteFontCollection2, index:UINT32, family:ptr ptr IDWriteFontFamily2): HRESULT {.stdcall.}
                GetMatchingFonts*: proc (This:ptr IDWriteFontCollection2, familyname:ptr WCHAR, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, fontlist:ptr ptr IDWriteFontList2): HRESULT {.stdcall.}
                GetFontFamilyModel*: proc (This:ptr IDWriteFontCollection2): DWRITE_FONT_FAMILY_MODEL {.stdcall.}
                IDWriteFontCollection2_GetFontSet*: proc (This:ptr IDWriteFontCollection2, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
    IDWriteFontCollection2* = object
        lpVtbl*: ptr IDWriteFontCollection2Vtbl
    IDWriteFontCollection3Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontCollection3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontCollection3): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontCollection3): ULONG {.stdcall.}
                GetFontFamilyCount*: proc (This:ptr IDWriteFontCollection3): UINT32 {.stdcall.}
                GetFontFamily*: proc (This:ptr IDWriteFontCollection3, index:UINT32, family:ptr ptr IDWriteFontFamily): HRESULT {.stdcall.}
                FindFamilyName*: proc (This:ptr IDWriteFontCollection3, name:ptr WCHAR, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                GetFontFromFontFace*: proc (This:ptr IDWriteFontCollection3, face:ptr IDWriteFontFace, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetFontSet*: proc (This:ptr IDWriteFontCollection3, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                IDWriteFontCollection1_GetFontFamily*: proc (This:ptr IDWriteFontCollection3, index:UINT32, family:ptr ptr IDWriteFontFamily1): HRESULT {.stdcall.}
                IDWriteFontCollection2_GetFontFamily*: proc (This:ptr IDWriteFontCollection3, index:UINT32, family:ptr ptr IDWriteFontFamily2): HRESULT {.stdcall.}
                GetMatchingFonts*: proc (This:ptr IDWriteFontCollection3, familyname:ptr WCHAR, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, fontlist:ptr ptr IDWriteFontList2): HRESULT {.stdcall.}
                GetFontFamilyModel*: proc (This:ptr IDWriteFontCollection3): DWRITE_FONT_FAMILY_MODEL {.stdcall.}
                IDWriteFontCollection2_GetFontSet*: proc (This:ptr IDWriteFontCollection3, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetExpirationEvent*: proc (This:ptr IDWriteFontCollection3): HANDLE {.stdcall.}
    IDWriteFontCollection3* = object
        lpVtbl*: ptr IDWriteFontCollection3Vtbl
    IDWriteFontFaceReferenceVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontFaceReference, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontFaceReference): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontFaceReference): ULONG {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFontFaceReference, fontface:ptr ptr IDWriteFontFace3): HRESULT {.stdcall.}
                CreateFontFaceWithSimulations*: proc (This:ptr IDWriteFontFaceReference, simulations:DWRITE_FONT_SIMULATIONS, fontface:ptr ptr IDWriteFontFace3): HRESULT {.stdcall.}
                Equals*: proc (This:ptr IDWriteFontFaceReference, reference:ptr IDWriteFontFaceReference): BOOL {.stdcall.}
                GetFontFaceIndex*: proc (This:ptr IDWriteFontFaceReference): UINT32 {.stdcall.}
                GetSimulations*: proc (This:ptr IDWriteFontFaceReference): DWRITE_FONT_SIMULATIONS {.stdcall.}
                GetFontFile*: proc (This:ptr IDWriteFontFaceReference, fontfile:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                GetLocalFileSize*: proc (This:ptr IDWriteFontFaceReference): UINT64 {.stdcall.}
                GetFileSize*: proc (This:ptr IDWriteFontFaceReference): UINT64 {.stdcall.}
                GetFileTime*: proc (This:ptr IDWriteFontFaceReference, writetime:ptr FILETIME): HRESULT {.stdcall.}
                GetLocality*: proc (This:ptr IDWriteFontFaceReference): DWRITE_LOCALITY {.stdcall.}
                EnqueueFontDownloadRequest*: proc (This:ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                EnqueueCharacterDownloadRequest*: proc (This:ptr IDWriteFontFaceReference, chars:ptr WCHAR, count:UINT32): HRESULT {.stdcall.}
                EnqueueGlyphDownloadRequest*: proc (This:ptr IDWriteFontFaceReference, glyphs:ptr UINT16, count:UINT32): HRESULT {.stdcall.}
                EnqueueFileFragmentDownloadRequest*: proc (This:ptr IDWriteFontFaceReference, offset:UINT64, size:UINT64): HRESULT {.stdcall.}
    IDWriteFontFaceReference* = object
        lpVtbl*: ptr IDWriteFontFaceReferenceVtbl
    IDWriteFontFaceReference1Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontFaceReference1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontFaceReference1): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontFaceReference1): ULONG {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFontFaceReference1, fontface:ptr ptr IDWriteFontFace3): HRESULT {.stdcall.}
                CreateFontFaceWithSimulations*: proc (This:ptr IDWriteFontFaceReference1, simulations:DWRITE_FONT_SIMULATIONS, fontface:ptr ptr IDWriteFontFace3): HRESULT {.stdcall.}
                Equals*: proc (This:ptr IDWriteFontFaceReference1, reference:ptr IDWriteFontFaceReference): BOOL {.stdcall.}
                GetFontFaceIndex*: proc (This:ptr IDWriteFontFaceReference1): UINT32 {.stdcall.}
                GetSimulations*: proc (This:ptr IDWriteFontFaceReference1): DWRITE_FONT_SIMULATIONS {.stdcall.}
                GetFontFile*: proc (This:ptr IDWriteFontFaceReference1, fontfile:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                GetLocalFileSize*: proc (This:ptr IDWriteFontFaceReference1): UINT64 {.stdcall.}
                GetFileSize*: proc (This:ptr IDWriteFontFaceReference1): UINT64 {.stdcall.}
                GetFileTime*: proc (This:ptr IDWriteFontFaceReference1, writetime:ptr FILETIME): HRESULT {.stdcall.}
                GetLocality*: proc (This:ptr IDWriteFontFaceReference1): DWRITE_LOCALITY {.stdcall.}
                EnqueueFontDownloadRequest*: proc (This:ptr IDWriteFontFaceReference1): HRESULT {.stdcall.}
                EnqueueCharacterDownloadRequest*: proc (This:ptr IDWriteFontFaceReference1, chars:ptr WCHAR, count:UINT32): HRESULT {.stdcall.}
                EnqueueGlyphDownloadRequest*: proc (This:ptr IDWriteFontFaceReference1, glyphs:ptr UINT16, count:UINT32): HRESULT {.stdcall.}
                EnqueueFileFragmentDownloadRequest*: proc (This:ptr IDWriteFontFaceReference1, offset:UINT64, size:UINT64): HRESULT {.stdcall.}
                IDWriteFontFaceReference1_CreateFontFace*: proc (This:ptr IDWriteFontFaceReference1, fontface:ptr ptr IDWriteFontFace5): HRESULT {.stdcall.}
                GetFontAxisValueCount*: proc (This:ptr IDWriteFontFaceReference1): UINT32 {.stdcall.}
                GetFontAxisValues*: proc (This:ptr IDWriteFontFaceReference1, values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32): HRESULT {.stdcall.}
    IDWriteFontFaceReference1* = object
        lpVtbl*: ptr IDWriteFontFaceReference1Vtbl
    IDWriteFontList1Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontList1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontList1): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontList1): ULONG {.stdcall.}
                GetFontCollection*: proc (This:ptr IDWriteFontList1, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                GetFontCount*: proc (This:ptr IDWriteFontList1): UINT32 {.stdcall.}
                GetFont*: proc (This:ptr IDWriteFontList1, index:UINT32, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetFontLocality*: proc (This:ptr IDWriteFontList1, index:UINT32): DWRITE_LOCALITY {.stdcall.}
                IDWriteFontList1_GetFont*: proc (This:ptr IDWriteFontList1, index:UINT32, font:ptr ptr IDWriteFont3): HRESULT {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontList1, index:UINT32, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
    IDWriteFontList1* = object
        lpVtbl*: ptr IDWriteFontList1Vtbl
    IDWriteFontList2Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontList2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontList2): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontList2): ULONG {.stdcall.}
                GetFontCollection*: proc (This:ptr IDWriteFontList2, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                GetFontCount*: proc (This:ptr IDWriteFontList2): UINT32 {.stdcall.}
                GetFont*: proc (This:ptr IDWriteFontList2, index:UINT32, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetFontLocality*: proc (This:ptr IDWriteFontList2, index:UINT32): DWRITE_LOCALITY {.stdcall.}
                IDWriteFontList1_GetFont*: proc (This:ptr IDWriteFontList2, index:UINT32, font:ptr ptr IDWriteFont3): HRESULT {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontList2, index:UINT32, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                GetFontSet*: proc (This:ptr IDWriteFontList2, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
    IDWriteFontList2* = object
        lpVtbl*: ptr IDWriteFontList2Vtbl
    IDWriteFontSet2Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontSet2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontSet2): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontSet2): ULONG {.stdcall.}
                GetFontCount*: proc (This:ptr IDWriteFontSet2): UINT32 {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontSet2, index:UINT32, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                FindFontFaceReference*: proc (This:ptr IDWriteFontSet2, reference:ptr IDWriteFontFaceReference, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                FindFontFace*: proc (This:ptr IDWriteFontSet2, fontface:ptr IDWriteFontFace, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                GetPropertyValues3*: proc (This:ptr IDWriteFontSet2, id:DWRITE_FONT_PROPERTY_ID, values:ptr ptr IDWriteStringList): HRESULT {.stdcall.}
                GetPropertyValues2*: proc (This:ptr IDWriteFontSet2, id:DWRITE_FONT_PROPERTY_ID, preferred_locales:ptr WCHAR, values:ptr ptr IDWriteStringList): HRESULT {.stdcall.}
                GetPropertyValues*: proc (This:ptr IDWriteFontSet2, index:UINT32, id:DWRITE_FONT_PROPERTY_ID, exists:ptr BOOL, values:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetPropertyOccurrenceCount*: proc (This:ptr IDWriteFontSet2, property:ptr DWRITE_FONT_PROPERTY, count:ptr UINT32): HRESULT {.stdcall.}
                GetMatchingFonts2*: proc (This:ptr IDWriteFontSet2, family:ptr WCHAR, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                GetMatchingFonts*: proc (This:ptr IDWriteFontSet2, props:ptr DWRITE_FONT_PROPERTY, count:UINT32, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                IDWriteFontSet1_GetMatchingFonts*: proc (This:ptr IDWriteFontSet2, property:ptr DWRITE_FONT_PROPERTY, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFirstFontResources*: proc (This:ptr IDWriteFontSet2, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFonts3*: proc (This:ptr IDWriteFontSet2, indices:ptr UINT32, num_indices:UINT32, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFonts2*: proc (This:ptr IDWriteFontSet2, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, select_any_range:BOOL, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFonts*: proc (This:ptr IDWriteFontSet2, props:ptr DWRITE_FONT_PROPERTY, num_properties:UINT32, select_any_property:BOOL, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFontIndices2*: proc (This:ptr IDWriteFontSet2, ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, select_any_range:BOOL, indices:ptr UINT32, num_indices:UINT32, actual_num_indices:ptr UINT32): HRESULT {.stdcall.}
                GetFilteredFontIndices*: proc (This:ptr IDWriteFontSet2, props:ptr DWRITE_FONT_PROPERTY, num_properties:UINT32, select_any_range:BOOL, indices:ptr UINT32, num_indices:UINT32, actual_num_indices:ptr UINT32): HRESULT {.stdcall.}
                GetFontAxisRanges2*: proc (This:ptr IDWriteFontSet2, font_index:UINT32, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, actual_num_ranges:ptr UINT32): HRESULT {.stdcall.}
                GetFontAxisRanges*: proc (This:ptr IDWriteFontSet2, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, actual_num_ranges:ptr UINT32): HRESULT {.stdcall.}
                IDWriteFontSet1_GetFontFaceReference*: proc (This:ptr IDWriteFontSet2, index:UINT32, reference:ptr ptr IDWriteFontFaceReference1): HRESULT {.stdcall.}
                CreateFontResource*: proc (This:ptr IDWriteFontSet2, index:UINT32, resource:ptr ptr IDWriteFontResource): HRESULT {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFontSet2, index:UINT32, fontface:ptr ptr IDWriteFontFace5): HRESULT {.stdcall.}
                GetFontLocality*: proc (This:ptr IDWriteFontSet2, index:UINT32): DWRITE_LOCALITY {.stdcall.}
                GetExpirationEvent*: proc (This:ptr IDWriteFontSet2): HANDLE {.stdcall.}
    IDWriteFontSet2* = object
        lpVtbl*: ptr IDWriteFontSet2Vtbl
    IDWriteFontSet3Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontSet3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontSet3): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontSet3): ULONG {.stdcall.}
                GetFontCount*: proc (This:ptr IDWriteFontSet3): UINT32 {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontSet3, index:UINT32, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                FindFontFaceReference*: proc (This:ptr IDWriteFontSet3, reference:ptr IDWriteFontFaceReference, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                FindFontFace*: proc (This:ptr IDWriteFontSet3, fontface:ptr IDWriteFontFace, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
                GetPropertyValues3*: proc (This:ptr IDWriteFontSet3, id:DWRITE_FONT_PROPERTY_ID, values:ptr ptr IDWriteStringList): HRESULT {.stdcall.}
                GetPropertyValues2*: proc (This:ptr IDWriteFontSet3, id:DWRITE_FONT_PROPERTY_ID, preferred_locales:ptr WCHAR, values:ptr ptr IDWriteStringList): HRESULT {.stdcall.}
                GetPropertyValues*: proc (This:ptr IDWriteFontSet3, index:UINT32, id:DWRITE_FONT_PROPERTY_ID, exists:ptr BOOL, values:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetPropertyOccurrenceCount*: proc (This:ptr IDWriteFontSet3, property:ptr DWRITE_FONT_PROPERTY, count:ptr UINT32): HRESULT {.stdcall.}
                GetMatchingFonts2*: proc (This:ptr IDWriteFontSet3, family:ptr WCHAR, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                GetMatchingFonts*: proc (This:ptr IDWriteFontSet3, props:ptr DWRITE_FONT_PROPERTY, count:UINT32, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                IDWriteFontSet1_GetMatchingFonts*: proc (This:ptr IDWriteFontSet3, property:ptr DWRITE_FONT_PROPERTY, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFirstFontResources*: proc (This:ptr IDWriteFontSet3, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFonts3*: proc (This:ptr IDWriteFontSet3, indices:ptr UINT32, num_indices:UINT32, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFonts2*: proc (This:ptr IDWriteFontSet3, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, select_any_range:BOOL, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFonts*: proc (This:ptr IDWriteFontSet3, props:ptr DWRITE_FONT_PROPERTY, num_properties:UINT32, select_any_property:BOOL, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                GetFilteredFontIndices2*: proc (This:ptr IDWriteFontSet3, ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, select_any_range:BOOL, indices:ptr UINT32, num_indices:UINT32, actual_num_indices:ptr UINT32): HRESULT {.stdcall.}
                GetFilteredFontIndices*: proc (This:ptr IDWriteFontSet3, props:ptr DWRITE_FONT_PROPERTY, num_properties:UINT32, select_any_range:BOOL, indices:ptr UINT32, num_indices:UINT32, actual_num_indices:ptr UINT32): HRESULT {.stdcall.}
                GetFontAxisRanges2*: proc (This:ptr IDWriteFontSet3, font_index:UINT32, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, actual_num_ranges:ptr UINT32): HRESULT {.stdcall.}
                GetFontAxisRanges*: proc (This:ptr IDWriteFontSet3, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, actual_num_ranges:ptr UINT32): HRESULT {.stdcall.}
                IDWriteFontSet1_GetFontFaceReference*: proc (This:ptr IDWriteFontSet3, index:UINT32, reference:ptr ptr IDWriteFontFaceReference1): HRESULT {.stdcall.}
                CreateFontResource*: proc (This:ptr IDWriteFontSet3, index:UINT32, resource:ptr ptr IDWriteFontResource): HRESULT {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFontSet3, index:UINT32, fontface:ptr ptr IDWriteFontFace5): HRESULT {.stdcall.}
                GetFontLocality*: proc (This:ptr IDWriteFontSet3, index:UINT32): DWRITE_LOCALITY {.stdcall.}
                GetExpirationEvent*: proc (This:ptr IDWriteFontSet3): HANDLE {.stdcall.}
                GetFontSourceType*: proc (This:ptr IDWriteFontSet3, index:UINT32): DWRITE_FONT_SOURCE_TYPE {.stdcall.}
                GetFontSourceNameLength*: proc (This:ptr IDWriteFontSet3, index:UINT32): UINT32 {.stdcall.}
                GetFontSourceName*: proc (This:ptr IDWriteFontSet3, index:UINT32, buffer:ptr WCHAR, buffer_size:UINT32): HRESULT {.stdcall.}
    IDWriteFontSet3* = object
        lpVtbl*: ptr IDWriteFontSet3Vtbl
    IDWriteFontFace3Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontFace3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontFace3): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontFace3): ULONG {.stdcall.}
                GetType*: proc (This:ptr IDWriteFontFace3): DWRITE_FONT_FACE_TYPE {.stdcall.}
                GetFiles*: proc (This:ptr IDWriteFontFace3, number_of_files:ptr UINT32, fontfiles:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                GetIndex*: proc (This:ptr IDWriteFontFace3): UINT32 {.stdcall.}
                GetSimulations*: proc (This:ptr IDWriteFontFace3): DWRITE_FONT_SIMULATIONS {.stdcall.}
                IsSymbolFont*: proc (This:ptr IDWriteFontFace3): BOOL {.stdcall.}
                GetMetrics*: proc (This:ptr IDWriteFontFace3, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
                GetGlyphCount*: proc (This:ptr IDWriteFontFace3): UINT16 {.stdcall.}
                GetDesignGlyphMetrics*: proc (This:ptr IDWriteFontFace3, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
                GetGlyphIndices*: proc (This:ptr IDWriteFontFace3, codepoints:ptr UINT32, count:UINT32, glyph_indices:ptr UINT16): HRESULT {.stdcall.}
                TryGetFontTable*: proc (This:ptr IDWriteFontFace3, table_tag:UINT32, table_data:ptr pointer, table_size:ptr UINT32, context:ptr pointer, exists:ptr BOOL): HRESULT {.stdcall.}
                ReleaseFontTable*: proc (This:ptr IDWriteFontFace3, table_context:pointer) {.stdcall.}
                GetGlyphRunOutline*: proc (This:ptr IDWriteFontFace3, emSize:FLOAT, glyph_indices:ptr UINT16, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET, glyph_count:UINT32, is_sideways:BOOL, is_rtl:BOOL, geometrysink:ptr IDWriteGeometrySink): HRESULT {.stdcall.}
                GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace3, emSize:FLOAT, pixels_per_dip:FLOAT, mode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
                GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace3, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS): HRESULT {.stdcall.}
                GetGdiCompatibleGlyphMetrics*: proc (This:ptr IDWriteFontFace3, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
                IDWriteFontFace1_GetMetrics*: proc (This:ptr IDWriteFontFace3, metrics:ptr DWRITE_FONT_METRICS1) {.stdcall.}
                IDWriteFontFace1_GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace3, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS1): HRESULT {.stdcall.}
                GetCaretMetrics*: proc (This:ptr IDWriteFontFace3, metrics:ptr DWRITE_CARET_METRICS) {.stdcall.}
                GetUnicodeRanges*: proc (This:ptr IDWriteFontFace3, max_count:UINT32, ranges:ptr DWRITE_UNICODE_RANGE, count:ptr UINT32): HRESULT {.stdcall.}
                IsMonospacedFont*: proc (This:ptr IDWriteFontFace3): BOOL {.stdcall.}
                GetDesignGlyphAdvances*: proc (This:ptr IDWriteFontFace3, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32, is_sideways:BOOL): HRESULT {.stdcall.}
                GetGdiCompatibleGlyphAdvances*: proc (This:ptr IDWriteFontFace3, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, is_sideways:BOOL, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32): HRESULT {.stdcall.}
                GetKerningPairAdjustments*: proc (This:ptr IDWriteFontFace3, glyph_count:UINT32, indices:ptr UINT16, adjustments:ptr INT32): HRESULT {.stdcall.}
                HasKerningPairs*: proc (This:ptr IDWriteFontFace3): BOOL {.stdcall.}
                IDWriteFontFace1_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace3, font_emsize:FLOAT, dpiX:FLOAT, dpiY:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuring_mode:DWRITE_MEASURING_MODE, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
                GetVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace3, glyph_count:UINT32, nominal_indices:ptr UINT16, vertical_indices:ptr UINT16): HRESULT {.stdcall.}
                HasVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace3): BOOL {.stdcall.}
                IsColorFont*: proc (This:ptr IDWriteFontFace3): BOOL {.stdcall.}
                GetColorPaletteCount*: proc (This:ptr IDWriteFontFace3): UINT32 {.stdcall.}
                GetPaletteEntryCount*: proc (This:ptr IDWriteFontFace3): UINT32 {.stdcall.}
                GetPaletteEntries*: proc (This:ptr IDWriteFontFace3, palette_index:UINT32, first_entry_index:UINT32, entry_count:UINT32, entries:ptr DWRITE_COLOR_F): HRESULT {.stdcall.}
                IDWriteFontFace2_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace3, fontEmSize:FLOAT, dpiX:FLOAT, dpiY:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuringmode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, renderingmode:ptr DWRITE_RENDERING_MODE, gridfitmode:ptr DWRITE_GRID_FIT_MODE): HRESULT {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontFace3, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                GetPanose*: proc (This:ptr IDWriteFontFace3, panose:ptr DWRITE_PANOSE) {.stdcall.}
                GetWeight*: proc (This:ptr IDWriteFontFace3): DWRITE_FONT_WEIGHT {.stdcall.}
                GetStretch*: proc (This:ptr IDWriteFontFace3): DWRITE_FONT_STRETCH {.stdcall.}
                GetStyle*: proc (This:ptr IDWriteFontFace3): DWRITE_FONT_STYLE {.stdcall.}
                GetFamilyNames*: proc (This:ptr IDWriteFontFace3, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetFaceNames*: proc (This:ptr IDWriteFontFace3, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetInformationalStrings*: proc (This:ptr IDWriteFontFace3, stringid:DWRITE_INFORMATIONAL_STRING_ID, strings:ptr ptr IDWriteLocalizedStrings, exists:ptr BOOL): HRESULT {.stdcall.}
                HasCharacter*: proc (This:ptr IDWriteFontFace3, character:UINT32): BOOL {.stdcall.}
                IDWriteFontFace3_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace3, emsize:FLOAT, dpi_x:FLOAT, dpi_y:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuring_mode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, rendering_mode:ptr DWRITE_RENDERING_MODE1, gridfit_mode:ptr DWRITE_GRID_FIT_MODE): HRESULT {.stdcall.}
                IsCharacterLocal*: proc (This:ptr IDWriteFontFace3, character:UINT32): BOOL {.stdcall.}
                IsGlyphLocal*: proc (This:ptr IDWriteFontFace3, glyph:UINT16): BOOL {.stdcall.}
                AreCharactersLocal*: proc (This:ptr IDWriteFontFace3, characters:ptr WCHAR, count:UINT32, enqueue_if_not:BOOL, are_local:ptr BOOL): HRESULT {.stdcall.}
                AreGlyphsLocal*: proc (This:ptr IDWriteFontFace3, glyphs:ptr UINT16, count:UINT32, enqueue_if_not:BOOL, are_local:ptr BOOL): HRESULT {.stdcall.}
    IDWriteFontFace3* = object
        lpVtbl*: ptr IDWriteFontFace3Vtbl
    IDWriteTextFormat2Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteTextFormat2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteTextFormat2): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteTextFormat2): ULONG {.stdcall.}
                SetTextAlignment*: proc (This:ptr IDWriteTextFormat2, alignment:DWRITE_TEXT_ALIGNMENT): HRESULT {.stdcall.}
                SetParagraphAlignment*: proc (This:ptr IDWriteTextFormat2, alignment:DWRITE_PARAGRAPH_ALIGNMENT): HRESULT {.stdcall.}
                SetWordWrapping*: proc (This:ptr IDWriteTextFormat2, wrapping:DWRITE_WORD_WRAPPING): HRESULT {.stdcall.}
                SetReadingDirection*: proc (This:ptr IDWriteTextFormat2, direction:DWRITE_READING_DIRECTION): HRESULT {.stdcall.}
                SetFlowDirection*: proc (This:ptr IDWriteTextFormat2, direction:DWRITE_FLOW_DIRECTION): HRESULT {.stdcall.}
                SetIncrementalTabStop*: proc (This:ptr IDWriteTextFormat2, tabstop:FLOAT): HRESULT {.stdcall.}
                SetTrimming*: proc (This:ptr IDWriteTextFormat2, trimming:ptr DWRITE_TRIMMING, trimming_sign:ptr IDWriteInlineObject): HRESULT {.stdcall.}
                SetLineSpacing*: proc (This:ptr IDWriteTextFormat2, spacing:DWRITE_LINE_SPACING_METHOD, line_spacing:FLOAT, baseline:FLOAT): HRESULT {.stdcall.}
                GetTextAlignment*: proc (This:ptr IDWriteTextFormat2): DWRITE_TEXT_ALIGNMENT {.stdcall.}
                GetParagraphAlignment*: proc (This:ptr IDWriteTextFormat2): DWRITE_PARAGRAPH_ALIGNMENT {.stdcall.}
                GetWordWrapping*: proc (This:ptr IDWriteTextFormat2): DWRITE_WORD_WRAPPING {.stdcall.}
                GetReadingDirection*: proc (This:ptr IDWriteTextFormat2): DWRITE_READING_DIRECTION {.stdcall.}
                GetFlowDirection*: proc (This:ptr IDWriteTextFormat2): DWRITE_FLOW_DIRECTION {.stdcall.}
                GetIncrementalTabStop*: proc (This:ptr IDWriteTextFormat2): FLOAT {.stdcall.}
                GetTrimming*: proc (This:ptr IDWriteTextFormat2, options:ptr DWRITE_TRIMMING, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
                GetLineSpacing*: proc (This:ptr IDWriteTextFormat2, method1:ptr DWRITE_LINE_SPACING_METHOD, spacing:ptr FLOAT, baseline:ptr FLOAT): HRESULT {.stdcall.}
                GetFontCollection*: proc (This:ptr IDWriteTextFormat2, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                GetFontFamilyNameLength*: proc (This:ptr IDWriteTextFormat2): UINT32 {.stdcall.}
                GetFontFamilyName*: proc (This:ptr IDWriteTextFormat2, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
                GetFontWeight*: proc (This:ptr IDWriteTextFormat2): DWRITE_FONT_WEIGHT {.stdcall.}
                GetFontStyle*: proc (This:ptr IDWriteTextFormat2): DWRITE_FONT_STYLE {.stdcall.}
                GetFontStretch*: proc (This:ptr IDWriteTextFormat2): DWRITE_FONT_STRETCH {.stdcall.}
                GetFontSize*: proc (This:ptr IDWriteTextFormat2): FLOAT {.stdcall.}
                GetLocaleNameLength*: proc (This:ptr IDWriteTextFormat2): UINT32 {.stdcall.}
                GetLocaleName*: proc (This:ptr IDWriteTextFormat2, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
                SetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextFormat2, orientation:DWRITE_VERTICAL_GLYPH_ORIENTATION): HRESULT {.stdcall.}
                GetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextFormat2): DWRITE_VERTICAL_GLYPH_ORIENTATION {.stdcall.}
                SetLastLineWrapping*: proc (This:ptr IDWriteTextFormat2, lastline_wrapping_enabled:BOOL): HRESULT {.stdcall.}
                GetLastLineWrapping*: proc (This:ptr IDWriteTextFormat2): BOOL {.stdcall.}
                SetOpticalAlignment*: proc (This:ptr IDWriteTextFormat2, alignment:DWRITE_OPTICAL_ALIGNMENT): HRESULT {.stdcall.}
                GetOpticalAlignment*: proc (This:ptr IDWriteTextFormat2): DWRITE_OPTICAL_ALIGNMENT {.stdcall.}
                SetFontFallback*: proc (This:ptr IDWriteTextFormat2, fallback:ptr IDWriteFontFallback): HRESULT {.stdcall.}
                GetFontFallback*: proc (This:ptr IDWriteTextFormat2, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
                IDWriteTextFormat2_SetLineSpacing*: proc (This:ptr IDWriteTextFormat2, spacing:ptr DWRITE_LINE_SPACING): HRESULT {.stdcall.}
                IDWriteTextFormat2_GetLineSpacing*: proc (This:ptr IDWriteTextFormat2, spacing:ptr DWRITE_LINE_SPACING): HRESULT {.stdcall.}
    IDWriteTextFormat2* = object
        lpVtbl*: ptr IDWriteTextFormat2Vtbl
    IDWriteTextFormat3Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteTextFormat3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteTextFormat3): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteTextFormat3): ULONG {.stdcall.}
                SetTextAlignment*: proc (This:ptr IDWriteTextFormat3, alignment:DWRITE_TEXT_ALIGNMENT): HRESULT {.stdcall.}
                SetParagraphAlignment*: proc (This:ptr IDWriteTextFormat3, alignment:DWRITE_PARAGRAPH_ALIGNMENT): HRESULT {.stdcall.}
                SetWordWrapping*: proc (This:ptr IDWriteTextFormat3, wrapping:DWRITE_WORD_WRAPPING): HRESULT {.stdcall.}
                SetReadingDirection*: proc (This:ptr IDWriteTextFormat3, direction:DWRITE_READING_DIRECTION): HRESULT {.stdcall.}
                SetFlowDirection*: proc (This:ptr IDWriteTextFormat3, direction:DWRITE_FLOW_DIRECTION): HRESULT {.stdcall.}
                SetIncrementalTabStop*: proc (This:ptr IDWriteTextFormat3, tabstop:FLOAT): HRESULT {.stdcall.}
                SetTrimming*: proc (This:ptr IDWriteTextFormat3, trimming:ptr DWRITE_TRIMMING, trimming_sign:ptr IDWriteInlineObject): HRESULT {.stdcall.}
                SetLineSpacing*: proc (This:ptr IDWriteTextFormat3, spacing:DWRITE_LINE_SPACING_METHOD, line_spacing:FLOAT, baseline:FLOAT): HRESULT {.stdcall.}
                GetTextAlignment*: proc (This:ptr IDWriteTextFormat3): DWRITE_TEXT_ALIGNMENT {.stdcall.}
                GetParagraphAlignment*: proc (This:ptr IDWriteTextFormat3): DWRITE_PARAGRAPH_ALIGNMENT {.stdcall.}
                GetWordWrapping*: proc (This:ptr IDWriteTextFormat3): DWRITE_WORD_WRAPPING {.stdcall.}
                GetReadingDirection*: proc (This:ptr IDWriteTextFormat3): DWRITE_READING_DIRECTION {.stdcall.}
                GetFlowDirection*: proc (This:ptr IDWriteTextFormat3): DWRITE_FLOW_DIRECTION {.stdcall.}
                GetIncrementalTabStop*: proc (This:ptr IDWriteTextFormat3): FLOAT {.stdcall.}
                GetTrimming*: proc (This:ptr IDWriteTextFormat3, options:ptr DWRITE_TRIMMING, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
                GetLineSpacing*: proc (This:ptr IDWriteTextFormat3, method1:ptr DWRITE_LINE_SPACING_METHOD, spacing:ptr FLOAT, baseline:ptr FLOAT): HRESULT {.stdcall.}
                GetFontCollection*: proc (This:ptr IDWriteTextFormat3, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                GetFontFamilyNameLength*: proc (This:ptr IDWriteTextFormat3): UINT32 {.stdcall.}
                GetFontFamilyName*: proc (This:ptr IDWriteTextFormat3, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
                GetFontWeight*: proc (This:ptr IDWriteTextFormat3): DWRITE_FONT_WEIGHT {.stdcall.}
                GetFontStyle*: proc (This:ptr IDWriteTextFormat3): DWRITE_FONT_STYLE {.stdcall.}
                GetFontStretch*: proc (This:ptr IDWriteTextFormat3): DWRITE_FONT_STRETCH {.stdcall.}
                GetFontSize*: proc (This:ptr IDWriteTextFormat3): FLOAT {.stdcall.}
                GetLocaleNameLength*: proc (This:ptr IDWriteTextFormat3): UINT32 {.stdcall.}
                GetLocaleName*: proc (This:ptr IDWriteTextFormat3, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
                SetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextFormat3, orientation:DWRITE_VERTICAL_GLYPH_ORIENTATION): HRESULT {.stdcall.}
                GetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextFormat3): DWRITE_VERTICAL_GLYPH_ORIENTATION {.stdcall.}
                SetLastLineWrapping*: proc (This:ptr IDWriteTextFormat3, lastline_wrapping_enabled:BOOL): HRESULT {.stdcall.}
                GetLastLineWrapping*: proc (This:ptr IDWriteTextFormat3): BOOL {.stdcall.}
                SetOpticalAlignment*: proc (This:ptr IDWriteTextFormat3, alignment:DWRITE_OPTICAL_ALIGNMENT): HRESULT {.stdcall.}
                GetOpticalAlignment*: proc (This:ptr IDWriteTextFormat3): DWRITE_OPTICAL_ALIGNMENT {.stdcall.}
                SetFontFallback*: proc (This:ptr IDWriteTextFormat3, fallback:ptr IDWriteFontFallback): HRESULT {.stdcall.}
                GetFontFallback*: proc (This:ptr IDWriteTextFormat3, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
                IDWriteTextFormat2_SetLineSpacing*: proc (This:ptr IDWriteTextFormat3, spacing:ptr DWRITE_LINE_SPACING): HRESULT {.stdcall.}
                IDWriteTextFormat2_GetLineSpacing*: proc (This:ptr IDWriteTextFormat3, spacing:ptr DWRITE_LINE_SPACING): HRESULT {.stdcall.}
                SetFontAxisValues*: proc (This:ptr IDWriteTextFormat3, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32): HRESULT {.stdcall.}
                GetFontAxisValueCount*: proc (This:ptr IDWriteTextFormat3): UINT32 {.stdcall.}
                GetFontAxisValues*: proc (This:ptr IDWriteTextFormat3, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32): HRESULT {.stdcall.}
                GetAutomaticFontAxes*: proc (This:ptr IDWriteTextFormat3): DWRITE_AUTOMATIC_FONT_AXES {.stdcall.}
                SetAutomaticFontAxes*: proc (This:ptr IDWriteTextFormat3, axes:DWRITE_AUTOMATIC_FONT_AXES): HRESULT {.stdcall.}
    IDWriteTextFormat3* = object
        lpVtbl*: ptr IDWriteTextFormat3Vtbl
    IDWriteTextLayout3Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteTextLayout3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteTextLayout3): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteTextLayout3): ULONG {.stdcall.}
                SetTextAlignment*: proc (This:ptr IDWriteTextLayout3, alignment:DWRITE_TEXT_ALIGNMENT): HRESULT {.stdcall.}
                SetParagraphAlignment*: proc (This:ptr IDWriteTextLayout3, alignment:DWRITE_PARAGRAPH_ALIGNMENT): HRESULT {.stdcall.}
                SetWordWrapping*: proc (This:ptr IDWriteTextLayout3, wrapping:DWRITE_WORD_WRAPPING): HRESULT {.stdcall.}
                SetReadingDirection*: proc (This:ptr IDWriteTextLayout3, direction:DWRITE_READING_DIRECTION): HRESULT {.stdcall.}
                SetFlowDirection*: proc (This:ptr IDWriteTextLayout3, direction:DWRITE_FLOW_DIRECTION): HRESULT {.stdcall.}
                SetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout3, tabstop:FLOAT): HRESULT {.stdcall.}
                SetTrimming*: proc (This:ptr IDWriteTextLayout3, trimming:ptr DWRITE_TRIMMING, trimming_sign:ptr IDWriteInlineObject): HRESULT {.stdcall.}
                SetLineSpacing*: proc (This:ptr IDWriteTextLayout3, spacing:DWRITE_LINE_SPACING_METHOD, line_spacing:FLOAT, baseline:FLOAT): HRESULT {.stdcall.}
                GetTextAlignment*: proc (This:ptr IDWriteTextLayout3): DWRITE_TEXT_ALIGNMENT {.stdcall.}
                GetParagraphAlignment*: proc (This:ptr IDWriteTextLayout3): DWRITE_PARAGRAPH_ALIGNMENT {.stdcall.}
                GetWordWrapping*: proc (This:ptr IDWriteTextLayout3): DWRITE_WORD_WRAPPING {.stdcall.}
                GetReadingDirection*: proc (This:ptr IDWriteTextLayout3): DWRITE_READING_DIRECTION {.stdcall.}
                GetFlowDirection*: proc (This:ptr IDWriteTextLayout3): DWRITE_FLOW_DIRECTION {.stdcall.}
                GetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout3): FLOAT {.stdcall.}
                GetTrimming*: proc (This:ptr IDWriteTextLayout3, options:ptr DWRITE_TRIMMING, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
                GetLineSpacing*: proc (This:ptr IDWriteTextLayout3, method1:ptr DWRITE_LINE_SPACING_METHOD, spacing:ptr FLOAT, baseline:ptr FLOAT): HRESULT {.stdcall.}
                GetFontCollection*: proc (This:ptr IDWriteTextLayout3, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout3): UINT32 {.stdcall.}
                GetFontFamilyName*: proc (This:ptr IDWriteTextLayout3, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
                GetFontWeight*: proc (This:ptr IDWriteTextLayout3): DWRITE_FONT_WEIGHT {.stdcall.}
                GetFontStyle*: proc (This:ptr IDWriteTextLayout3): DWRITE_FONT_STYLE {.stdcall.}
                GetFontStretch*: proc (This:ptr IDWriteTextLayout3): DWRITE_FONT_STRETCH {.stdcall.}
                GetFontSize*: proc (This:ptr IDWriteTextLayout3): FLOAT {.stdcall.}
                GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout3): UINT32 {.stdcall.}
                GetLocaleName*: proc (This:ptr IDWriteTextLayout3, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
                SetMaxWidth*: proc (This:ptr IDWriteTextLayout3, maxWidth:FLOAT): HRESULT {.stdcall.}
                SetMaxHeight*: proc (This:ptr IDWriteTextLayout3, maxHeight:FLOAT): HRESULT {.stdcall.}
                SetFontCollection*: proc (This:ptr IDWriteTextLayout3, collection:ptr IDWriteFontCollection, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontFamilyName*: proc (This:ptr IDWriteTextLayout3, name:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontWeight*: proc (This:ptr IDWriteTextLayout3, weight:DWRITE_FONT_WEIGHT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontStyle*: proc (This:ptr IDWriteTextLayout3, style:DWRITE_FONT_STYLE, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontStretch*: proc (This:ptr IDWriteTextLayout3, stretch:DWRITE_FONT_STRETCH, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontSize*: proc (This:ptr IDWriteTextLayout3, size:FLOAT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetUnderline*: proc (This:ptr IDWriteTextLayout3, underline:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetStrikethrough*: proc (This:ptr IDWriteTextLayout3, strikethrough:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetDrawingEffect*: proc (This:ptr IDWriteTextLayout3, effect:pointer, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetInlineObject*: proc (This:ptr IDWriteTextLayout3, object1:ptr IDWriteInlineObject, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetTypography*: proc (This:ptr IDWriteTextLayout3, typography:ptr IDWriteTypography, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetLocaleName*: proc (This:ptr IDWriteTextLayout3, locale:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetMaxWidth*: proc (This:ptr IDWriteTextLayout3): FLOAT {.stdcall.}
                GetMaxHeight*: proc (This:ptr IDWriteTextLayout3): FLOAT {.stdcall.}
                IDWriteTextLayout_GetFontCollection*: proc (This:ptr IDWriteTextLayout3, pos:UINT32, collection:ptr ptr IDWriteFontCollection, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout3, pos:UINT32, len:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontFamilyName*: proc (This:ptr IDWriteTextLayout3, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontWeight*: proc (This:ptr IDWriteTextLayout3, position:UINT32, weight:ptr DWRITE_FONT_WEIGHT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontStyle*: proc (This:ptr IDWriteTextLayout3, currentPosition:UINT32, style:ptr DWRITE_FONT_STYLE, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontStretch*: proc (This:ptr IDWriteTextLayout3, position:UINT32, stretch:ptr DWRITE_FONT_STRETCH, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontSize*: proc (This:ptr IDWriteTextLayout3, position:UINT32, size:ptr FLOAT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetUnderline*: proc (This:ptr IDWriteTextLayout3, position:UINT32, has_underline:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetStrikethrough*: proc (This:ptr IDWriteTextLayout3, position:UINT32, has_strikethrough:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetDrawingEffect*: proc (This:ptr IDWriteTextLayout3, position:UINT32, effect:ptr pointer, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetInlineObject*: proc (This:ptr IDWriteTextLayout3, position:UINT32, object1:ptr ptr IDWriteInlineObject, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetTypography*: proc (This:ptr IDWriteTextLayout3, position:UINT32, typography:ptr ptr IDWriteTypography, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout3, position:UINT32, length:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetLocaleName*: proc (This:ptr IDWriteTextLayout3, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                Draw*: proc (This:ptr IDWriteTextLayout3, context:pointer, renderer:ptr IDWriteTextRenderer, originX:FLOAT, originY:FLOAT): HRESULT {.stdcall.}
                GetLineMetrics*: proc (This:ptr IDWriteTextLayout3, metrics:ptr DWRITE_LINE_METRICS, max_count:UINT32, actual_count:ptr UINT32): HRESULT {.stdcall.}
                GetMetrics*: proc (This:ptr IDWriteTextLayout3, metrics:ptr DWRITE_TEXT_METRICS): HRESULT {.stdcall.}
                GetOverhangMetrics*: proc (This:ptr IDWriteTextLayout3, overhangs:ptr DWRITE_OVERHANG_METRICS): HRESULT {.stdcall.}
                GetClusterMetrics*: proc (This:ptr IDWriteTextLayout3, metrics:ptr DWRITE_CLUSTER_METRICS, max_count:UINT32, act_count:ptr UINT32): HRESULT {.stdcall.}
                DetermineMinWidth*: proc (This:ptr IDWriteTextLayout3, min_width:ptr FLOAT): HRESULT {.stdcall.}
                HitTestPoint*: proc (This:ptr IDWriteTextLayout3, pointX:FLOAT, pointY:FLOAT, is_trailinghit:ptr BOOL, is_inside:ptr BOOL, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
                HitTestTextPosition*: proc (This:ptr IDWriteTextLayout3, textPosition:UINT32, is_trailinghit:BOOL, pointX:ptr FLOAT, pointY:ptr FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
                HitTestTextRange*: proc (This:ptr IDWriteTextLayout3, textPosition:UINT32, textLength:UINT32, originX:FLOAT, originY:FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS, max_metricscount:UINT32, actual_metricscount:ptr UINT32): HRESULT {.stdcall.}
                SetPairKerning*: proc (This:ptr IDWriteTextLayout3, is_pairkerning_enabled:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetPairKerning*: proc (This:ptr IDWriteTextLayout3, position:UINT32, is_pairkerning_enabled:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetCharacterSpacing*: proc (This:ptr IDWriteTextLayout3, leading_spacing:FLOAT, trailing_spacing:FLOAT, minimum_advance_width:FLOAT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetCharacterSpacing*: proc (This:ptr IDWriteTextLayout3, position:UINT32, leading_spacing:ptr FLOAT, trailing_spacing:ptr FLOAT, minimum_advance_width:ptr FLOAT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout2_GetMetrics*: proc (This:ptr IDWriteTextLayout3, metrics:ptr DWRITE_TEXT_METRICS1): HRESULT {.stdcall.}
                SetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextLayout3, orientation:DWRITE_VERTICAL_GLYPH_ORIENTATION): HRESULT {.stdcall.}
                GetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextLayout3): DWRITE_VERTICAL_GLYPH_ORIENTATION {.stdcall.}
                SetLastLineWrapping*: proc (This:ptr IDWriteTextLayout3, lastline_wrapping_enabled:BOOL): HRESULT {.stdcall.}
                GetLastLineWrapping*: proc (This:ptr IDWriteTextLayout3): BOOL {.stdcall.}
                SetOpticalAlignment*: proc (This:ptr IDWriteTextLayout3, alignment:DWRITE_OPTICAL_ALIGNMENT): HRESULT {.stdcall.}
                GetOpticalAlignment*: proc (This:ptr IDWriteTextLayout3): DWRITE_OPTICAL_ALIGNMENT {.stdcall.}
                SetFontFallback*: proc (This:ptr IDWriteTextLayout3, fallback:ptr IDWriteFontFallback): HRESULT {.stdcall.}
                GetFontFallback*: proc (This:ptr IDWriteTextLayout3, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
                InvalidateLayout*: proc (This:ptr IDWriteTextLayout3): HRESULT {.stdcall.}
                IDWriteTextLayout3_SetLineSpacing*: proc (This:ptr IDWriteTextLayout3, spacing:ptr DWRITE_LINE_SPACING): HRESULT {.stdcall.}
                IDWriteTextLayout3_GetLineSpacing*: proc (This:ptr IDWriteTextLayout3, spacing:ptr DWRITE_LINE_SPACING): HRESULT {.stdcall.}
                IDWriteTextLayout3_GetLineMetrics*: proc (This:ptr IDWriteTextLayout3, metrics:ptr DWRITE_LINE_METRICS1, max_count:UINT32, count:ptr UINT32): HRESULT {.stdcall.}
    IDWriteTextLayout3* = object
        lpVtbl*: ptr IDWriteTextLayout3Vtbl
    IDWriteTextLayout4Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteTextLayout4, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteTextLayout4): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteTextLayout4): ULONG {.stdcall.}
                SetTextAlignment*: proc (This:ptr IDWriteTextLayout4, alignment:DWRITE_TEXT_ALIGNMENT): HRESULT {.stdcall.}
                SetParagraphAlignment*: proc (This:ptr IDWriteTextLayout4, alignment:DWRITE_PARAGRAPH_ALIGNMENT): HRESULT {.stdcall.}
                SetWordWrapping*: proc (This:ptr IDWriteTextLayout4, wrapping:DWRITE_WORD_WRAPPING): HRESULT {.stdcall.}
                SetReadingDirection*: proc (This:ptr IDWriteTextLayout4, direction:DWRITE_READING_DIRECTION): HRESULT {.stdcall.}
                SetFlowDirection*: proc (This:ptr IDWriteTextLayout4, direction:DWRITE_FLOW_DIRECTION): HRESULT {.stdcall.}
                SetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout4, tabstop:FLOAT): HRESULT {.stdcall.}
                SetTrimming*: proc (This:ptr IDWriteTextLayout4, trimming:ptr DWRITE_TRIMMING, trimming_sign:ptr IDWriteInlineObject): HRESULT {.stdcall.}
                SetLineSpacing*: proc (This:ptr IDWriteTextLayout4, spacing:DWRITE_LINE_SPACING_METHOD, line_spacing:FLOAT, baseline:FLOAT): HRESULT {.stdcall.}
                GetTextAlignment*: proc (This:ptr IDWriteTextLayout4): DWRITE_TEXT_ALIGNMENT {.stdcall.}
                GetParagraphAlignment*: proc (This:ptr IDWriteTextLayout4): DWRITE_PARAGRAPH_ALIGNMENT {.stdcall.}
                GetWordWrapping*: proc (This:ptr IDWriteTextLayout4): DWRITE_WORD_WRAPPING {.stdcall.}
                GetReadingDirection*: proc (This:ptr IDWriteTextLayout4): DWRITE_READING_DIRECTION {.stdcall.}
                GetFlowDirection*: proc (This:ptr IDWriteTextLayout4): DWRITE_FLOW_DIRECTION {.stdcall.}
                GetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout4): FLOAT {.stdcall.}
                GetTrimming*: proc (This:ptr IDWriteTextLayout4, options:ptr DWRITE_TRIMMING, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
                GetLineSpacing*: proc (This:ptr IDWriteTextLayout4, method1:ptr DWRITE_LINE_SPACING_METHOD, spacing:ptr FLOAT, baseline:ptr FLOAT): HRESULT {.stdcall.}
                GetFontCollection*: proc (This:ptr IDWriteTextLayout4, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout4): UINT32 {.stdcall.}
                GetFontFamilyName*: proc (This:ptr IDWriteTextLayout4, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
                GetFontWeight*: proc (This:ptr IDWriteTextLayout4): DWRITE_FONT_WEIGHT {.stdcall.}
                GetFontStyle*: proc (This:ptr IDWriteTextLayout4): DWRITE_FONT_STYLE {.stdcall.}
                GetFontStretch*: proc (This:ptr IDWriteTextLayout4): DWRITE_FONT_STRETCH {.stdcall.}
                GetFontSize*: proc (This:ptr IDWriteTextLayout4): FLOAT {.stdcall.}
                GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout4): UINT32 {.stdcall.}
                GetLocaleName*: proc (This:ptr IDWriteTextLayout4, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
                SetMaxWidth*: proc (This:ptr IDWriteTextLayout4, maxWidth:FLOAT): HRESULT {.stdcall.}
                SetMaxHeight*: proc (This:ptr IDWriteTextLayout4, maxHeight:FLOAT): HRESULT {.stdcall.}
                SetFontCollection*: proc (This:ptr IDWriteTextLayout4, collection:ptr IDWriteFontCollection, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontFamilyName*: proc (This:ptr IDWriteTextLayout4, name:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontWeight*: proc (This:ptr IDWriteTextLayout4, weight:DWRITE_FONT_WEIGHT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontStyle*: proc (This:ptr IDWriteTextLayout4, style:DWRITE_FONT_STYLE, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontStretch*: proc (This:ptr IDWriteTextLayout4, stretch:DWRITE_FONT_STRETCH, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetFontSize*: proc (This:ptr IDWriteTextLayout4, size:FLOAT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetUnderline*: proc (This:ptr IDWriteTextLayout4, underline:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetStrikethrough*: proc (This:ptr IDWriteTextLayout4, strikethrough:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetDrawingEffect*: proc (This:ptr IDWriteTextLayout4, effect:pointer, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetInlineObject*: proc (This:ptr IDWriteTextLayout4, object1:ptr IDWriteInlineObject, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetTypography*: proc (This:ptr IDWriteTextLayout4, typography:ptr IDWriteTypography, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetLocaleName*: proc (This:ptr IDWriteTextLayout4, locale:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetMaxWidth*: proc (This:ptr IDWriteTextLayout4): FLOAT {.stdcall.}
                GetMaxHeight*: proc (This:ptr IDWriteTextLayout4): FLOAT {.stdcall.}
                IDWriteTextLayout_GetFontCollection*: proc (This:ptr IDWriteTextLayout4, pos:UINT32, collection:ptr ptr IDWriteFontCollection, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout4, pos:UINT32, len:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontFamilyName*: proc (This:ptr IDWriteTextLayout4, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontWeight*: proc (This:ptr IDWriteTextLayout4, position:UINT32, weight:ptr DWRITE_FONT_WEIGHT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontStyle*: proc (This:ptr IDWriteTextLayout4, currentPosition:UINT32, style:ptr DWRITE_FONT_STYLE, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontStretch*: proc (This:ptr IDWriteTextLayout4, position:UINT32, stretch:ptr DWRITE_FONT_STRETCH, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetFontSize*: proc (This:ptr IDWriteTextLayout4, position:UINT32, size:ptr FLOAT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetUnderline*: proc (This:ptr IDWriteTextLayout4, position:UINT32, has_underline:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetStrikethrough*: proc (This:ptr IDWriteTextLayout4, position:UINT32, has_strikethrough:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetDrawingEffect*: proc (This:ptr IDWriteTextLayout4, position:UINT32, effect:ptr pointer, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetInlineObject*: proc (This:ptr IDWriteTextLayout4, position:UINT32, object1:ptr ptr IDWriteInlineObject, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetTypography*: proc (This:ptr IDWriteTextLayout4, position:UINT32, typography:ptr ptr IDWriteTypography, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout4, position:UINT32, length:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout_GetLocaleName*: proc (This:ptr IDWriteTextLayout4, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                Draw*: proc (This:ptr IDWriteTextLayout4, context:pointer, renderer:ptr IDWriteTextRenderer, originX:FLOAT, originY:FLOAT): HRESULT {.stdcall.}
                GetLineMetrics*: proc (This:ptr IDWriteTextLayout4, metrics:ptr DWRITE_LINE_METRICS, max_count:UINT32, actual_count:ptr UINT32): HRESULT {.stdcall.}
                GetMetrics*: proc (This:ptr IDWriteTextLayout4, metrics:ptr DWRITE_TEXT_METRICS): HRESULT {.stdcall.}
                GetOverhangMetrics*: proc (This:ptr IDWriteTextLayout4, overhangs:ptr DWRITE_OVERHANG_METRICS): HRESULT {.stdcall.}
                GetClusterMetrics*: proc (This:ptr IDWriteTextLayout4, metrics:ptr DWRITE_CLUSTER_METRICS, max_count:UINT32, act_count:ptr UINT32): HRESULT {.stdcall.}
                DetermineMinWidth*: proc (This:ptr IDWriteTextLayout4, min_width:ptr FLOAT): HRESULT {.stdcall.}
                HitTestPoint*: proc (This:ptr IDWriteTextLayout4, pointX:FLOAT, pointY:FLOAT, is_trailinghit:ptr BOOL, is_inside:ptr BOOL, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
                HitTestTextPosition*: proc (This:ptr IDWriteTextLayout4, textPosition:UINT32, is_trailinghit:BOOL, pointX:ptr FLOAT, pointY:ptr FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
                HitTestTextRange*: proc (This:ptr IDWriteTextLayout4, textPosition:UINT32, textLength:UINT32, originX:FLOAT, originY:FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS, max_metricscount:UINT32, actual_metricscount:ptr UINT32): HRESULT {.stdcall.}
                SetPairKerning*: proc (This:ptr IDWriteTextLayout4, is_pairkerning_enabled:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetPairKerning*: proc (This:ptr IDWriteTextLayout4, position:UINT32, is_pairkerning_enabled:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                SetCharacterSpacing*: proc (This:ptr IDWriteTextLayout4, leading_spacing:FLOAT, trailing_spacing:FLOAT, minimum_advance_width:FLOAT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetCharacterSpacing*: proc (This:ptr IDWriteTextLayout4, position:UINT32, leading_spacing:ptr FLOAT, trailing_spacing:ptr FLOAT, minimum_advance_width:ptr FLOAT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                IDWriteTextLayout2_GetMetrics*: proc (This:ptr IDWriteTextLayout4, metrics:ptr DWRITE_TEXT_METRICS1): HRESULT {.stdcall.}
                SetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextLayout4, orientation:DWRITE_VERTICAL_GLYPH_ORIENTATION): HRESULT {.stdcall.}
                GetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextLayout4): DWRITE_VERTICAL_GLYPH_ORIENTATION {.stdcall.}
                SetLastLineWrapping*: proc (This:ptr IDWriteTextLayout4, lastline_wrapping_enabled:BOOL): HRESULT {.stdcall.}
                GetLastLineWrapping*: proc (This:ptr IDWriteTextLayout4): BOOL {.stdcall.}
                SetOpticalAlignment*: proc (This:ptr IDWriteTextLayout4, alignment:DWRITE_OPTICAL_ALIGNMENT): HRESULT {.stdcall.}
                GetOpticalAlignment*: proc (This:ptr IDWriteTextLayout4): DWRITE_OPTICAL_ALIGNMENT {.stdcall.}
                SetFontFallback*: proc (This:ptr IDWriteTextLayout4, fallback:ptr IDWriteFontFallback): HRESULT {.stdcall.}
                GetFontFallback*: proc (This:ptr IDWriteTextLayout4, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
                InvalidateLayout*: proc (This:ptr IDWriteTextLayout4): HRESULT {.stdcall.}
                IDWriteTextLayout3_SetLineSpacing*: proc (This:ptr IDWriteTextLayout4, spacing:ptr DWRITE_LINE_SPACING): HRESULT {.stdcall.}
                IDWriteTextLayout3_GetLineSpacing*: proc (This:ptr IDWriteTextLayout4, spacing:ptr DWRITE_LINE_SPACING): HRESULT {.stdcall.}
                IDWriteTextLayout3_GetLineMetrics*: proc (This:ptr IDWriteTextLayout4, metrics:ptr DWRITE_LINE_METRICS1, max_count:UINT32, count:ptr UINT32): HRESULT {.stdcall.}
                SetFontAxisValues*: proc (This:ptr IDWriteTextLayout4, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetFontAxisValueCount*: proc (This:ptr IDWriteTextLayout4, pos:UINT32): UINT32 {.stdcall.}
                GetFontAxisValues*: proc (This:ptr IDWriteTextLayout4, pos:UINT32, values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
                GetAutomaticFontAxes*: proc (This:ptr IDWriteTextLayout4): DWRITE_AUTOMATIC_FONT_AXES {.stdcall.}
                SetAutomaticFontAxes*: proc (This:ptr IDWriteTextLayout4, axes:DWRITE_AUTOMATIC_FONT_AXES): HRESULT {.stdcall.}
    IDWriteTextLayout4* = object
        lpVtbl*: ptr IDWriteTextLayout4Vtbl
    IDWriteFontFallback1Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontFallback1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontFallback1): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontFallback1): ULONG {.stdcall.}
                MapCharacters*: proc (This:ptr IDWriteFontFallback1, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, basecollection:ptr IDWriteFontCollection, baseFamilyName:ptr WCHAR, baseWeight:DWRITE_FONT_WEIGHT, baseStyle:DWRITE_FONT_STYLE, baseStretch:DWRITE_FONT_STRETCH, mappedLength:ptr UINT32, mappedFont:ptr ptr IDWriteFont, scale:ptr FLOAT): HRESULT {.stdcall.}
                IDWriteFontFallback1_MapCharacters*: proc (This:ptr IDWriteFontFallback1, source:ptr IDWriteTextAnalysisSource, pos:UINT32, length:UINT32, base_collection:ptr IDWriteFontCollection, familyname:ptr WCHAR, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, mapped_length:ptr UINT32, scale:ptr FLOAT, fontface:ptr ptr IDWriteFontFace5): HRESULT {.stdcall.}
    IDWriteFontFallback1* = object
        lpVtbl*: ptr IDWriteFontFallback1Vtbl
    IDWriteGdiInterop1Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteGdiInterop1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteGdiInterop1): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteGdiInterop1): ULONG {.stdcall.}
                CreateFontFromLOGFONT*: proc (This:ptr IDWriteGdiInterop1, logfont:ptr LOGFONTW, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                ConvertFontToLOGFONT*: proc (This:ptr IDWriteGdiInterop1, font:ptr IDWriteFont, logfont:ptr LOGFONTW, is_systemfont:ptr BOOL): HRESULT {.stdcall.}
                ConvertFontFaceToLOGFONT*: proc (This:ptr IDWriteGdiInterop1, font:ptr IDWriteFontFace, logfont:ptr LOGFONTW): HRESULT {.stdcall.}
                CreateFontFaceFromHdc*: proc (This:ptr IDWriteGdiInterop1, hdc:HDC, fontface:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
                CreateBitmapRenderTarget*: proc (This:ptr IDWriteGdiInterop1, hdc:HDC, width:UINT32, height:UINT32, target:ptr ptr IDWriteBitmapRenderTarget): HRESULT {.stdcall.}
                IDWriteGdiInterop1_CreateFontFromLOGFONT*: proc (This:ptr IDWriteGdiInterop1, logfont:ptr LOGFONTW, collection:ptr IDWriteFontCollection, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
                GetFontSignature2*: proc (This:ptr IDWriteGdiInterop1, fontface:ptr IDWriteFontFace, fontsig:ptr FONTSIGNATURE): HRESULT {.stdcall.}
                GetFontSignature*: proc (This:ptr IDWriteGdiInterop1, font:ptr IDWriteFont, fontsig:ptr FONTSIGNATURE): HRESULT {.stdcall.}
                GetMatchingFontsByLOGFONT*: proc (This:ptr IDWriteGdiInterop1, logfont:ptr LOGFONTW, fontset:ptr IDWriteFontSet, subset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
    IDWriteGdiInterop1* = object
        lpVtbl*: ptr IDWriteGdiInterop1Vtbl
    IDWriteFontSetBuilderVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontSetBuilder, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontSetBuilder): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontSetBuilder): ULONG {.stdcall.}
                AddFontFaceReference2*: proc (This:ptr IDWriteFontSetBuilder, ref1:ptr IDWriteFontFaceReference, props:ptr DWRITE_FONT_PROPERTY, prop_count:UINT32): HRESULT {.stdcall.}
                AddFontFaceReference*: proc (This:ptr IDWriteFontSetBuilder, ref1:ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                AddFontSet*: proc (This:ptr IDWriteFontSetBuilder, fontset:ptr IDWriteFontSet): HRESULT {.stdcall.}
                CreateFontSet*: proc (This:ptr IDWriteFontSetBuilder, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
    IDWriteFontSetBuilder* = object
        lpVtbl*: ptr IDWriteFontSetBuilderVtbl
    IDWriteFontSetBuilder1Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontSetBuilder1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontSetBuilder1): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontSetBuilder1): ULONG {.stdcall.}
                AddFontFaceReference2*: proc (This:ptr IDWriteFontSetBuilder1, ref1:ptr IDWriteFontFaceReference, props:ptr DWRITE_FONT_PROPERTY, prop_count:UINT32): HRESULT {.stdcall.}
                AddFontFaceReference*: proc (This:ptr IDWriteFontSetBuilder1, ref1:ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                AddFontSet*: proc (This:ptr IDWriteFontSetBuilder1, fontset:ptr IDWriteFontSet): HRESULT {.stdcall.}
                CreateFontSet*: proc (This:ptr IDWriteFontSetBuilder1, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                AddFontFile*: proc (This:ptr IDWriteFontSetBuilder1, file:ptr IDWriteFontFile): HRESULT {.stdcall.}
    IDWriteFontSetBuilder1* = object
        lpVtbl*: ptr IDWriteFontSetBuilder1Vtbl
    IDWriteFontSetBuilder2Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontSetBuilder2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontSetBuilder2): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontSetBuilder2): ULONG {.stdcall.}
                AddFontFaceReference2*: proc (This:ptr IDWriteFontSetBuilder2, ref1:ptr IDWriteFontFaceReference, props:ptr DWRITE_FONT_PROPERTY, prop_count:UINT32): HRESULT {.stdcall.}
                AddFontFaceReference*: proc (This:ptr IDWriteFontSetBuilder2, ref1:ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                AddFontSet*: proc (This:ptr IDWriteFontSetBuilder2, fontset:ptr IDWriteFontSet): HRESULT {.stdcall.}
                CreateFontSet*: proc (This:ptr IDWriteFontSetBuilder2, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                AddFontFile*: proc (This:ptr IDWriteFontSetBuilder2, file:ptr IDWriteFontFile): HRESULT {.stdcall.}
                AddFont*: proc (This:ptr IDWriteFontSetBuilder2, fontfile:ptr IDWriteFontFile, face_index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_values:UINT32, axis_ranges:ptr DWRITE_FONT_AXIS_RANGE, num_ranges:UINT32, props:ptr DWRITE_FONT_PROPERTY, num_properties:UINT32): HRESULT {.stdcall.}
                IDWriteFontSetBuilder2_AddFontFile*: proc (This:ptr IDWriteFontSetBuilder2, filepath:ptr WCHAR): HRESULT {.stdcall.}
    IDWriteFontSetBuilder2* = object
        lpVtbl*: ptr IDWriteFontSetBuilder2Vtbl
    IDWriteFactory3Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFactory3, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFactory3): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFactory3): ULONG {.stdcall.}
                GetSystemFontCollection*: proc (This:ptr IDWriteFactory3, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                CreateCustomFontCollection*: proc (This:ptr IDWriteFactory3, loader:ptr IDWriteFontCollectionLoader, key:pointer, key_size:UINT32, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                RegisterFontCollectionLoader*: proc (This:ptr IDWriteFactory3, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                UnregisterFontCollectionLoader*: proc (This:ptr IDWriteFactory3, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                CreateFontFileReference*: proc (This:ptr IDWriteFactory3, path:ptr WCHAR, writetime:ptr FILETIME, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateCustomFontFileReference*: proc (This:ptr IDWriteFactory3, reference_key:pointer, key_size:UINT32, loader:ptr IDWriteFontFileLoader, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFactory3, facetype:DWRITE_FONT_FACE_TYPE, files_number:UINT32, font_files:ptr ptr IDWriteFontFile, index:UINT32, sim_flags:DWRITE_FONT_SIMULATIONS, font_face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
                CreateRenderingParams*: proc (This:ptr IDWriteFactory3, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateMonitorRenderingParams*: proc (This:ptr IDWriteFactory3, monitor:HMONITOR, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory3, gamma:FLOAT, enhancedContrast:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                RegisterFontFileLoader*: proc (This:ptr IDWriteFactory3, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                UnregisterFontFileLoader*: proc (This:ptr IDWriteFactory3, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                CreateTextFormat*: proc (This:ptr IDWriteFactory3, family_name:ptr WCHAR, collection:ptr IDWriteFontCollection, weight:DWRITE_FONT_WEIGHT, style:DWRITE_FONT_STYLE, stretch:DWRITE_FONT_STRETCH, size:FLOAT, locale:ptr WCHAR, format:ptr ptr IDWriteTextFormat): HRESULT {.stdcall.}
                CreateTypography*: proc (This:ptr IDWriteFactory3, typography:ptr ptr IDWriteTypography): HRESULT {.stdcall.}
                GetGdiInterop*: proc (This:ptr IDWriteFactory3, gdi_interop:ptr ptr IDWriteGdiInterop): HRESULT {.stdcall.}
                CreateTextLayout*: proc (This:ptr IDWriteFactory3, str:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, max_width:FLOAT, max_height:FLOAT, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateGdiCompatibleTextLayout*: proc (This:ptr IDWriteFactory3, str:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, layout_width:FLOAT, layout_height:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateEllipsisTrimmingSign*: proc (This:ptr IDWriteFactory3, format:ptr IDWriteTextFormat, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
                CreateTextAnalyzer*: proc (This:ptr IDWriteFactory3, analyzer:ptr ptr IDWriteTextAnalyzer): HRESULT {.stdcall.}
                CreateNumberSubstitution*: proc (This:ptr IDWriteFactory3, method1:DWRITE_NUMBER_SUBSTITUTION_METHOD, locale:ptr WCHAR, ignore_user_override:BOOL, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
                CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory3, glyph_run:ptr DWRITE_GLYPH_RUN, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE, measuring_mode:DWRITE_MEASURING_MODE, baseline_x:FLOAT, baseline_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                GetEudcFontCollection*: proc (This:ptr IDWriteFactory3, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                IDWriteFactory1_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory3, gamma:FLOAT, enhcontrast:FLOAT, enhcontrast_grayscale:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams1): HRESULT {.stdcall.}
                GetSystemFontFallback*: proc (This:ptr IDWriteFactory3, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
                CreateFontFallbackBuilder*: proc (This:ptr IDWriteFactory3, fallbackbuilder:ptr ptr IDWriteFontFallbackBuilder): HRESULT {.stdcall.}
                TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory3, originX:FLOAT, originY:FLOAT, run:ptr DWRITE_GLYPH_RUN, rundescr:ptr DWRITE_GLYPH_RUN_DESCRIPTION, mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette_index:UINT32, colorlayers:ptr ptr IDWriteColorGlyphRunEnumerator): HRESULT {.stdcall.}
                IDWriteFactory2_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory3, gamma:FLOAT, contrast:FLOAT, grayscalecontrast:FLOAT, cleartypeLevel:FLOAT, pixelGeometry:DWRITE_PIXEL_GEOMETRY, renderingMode:DWRITE_RENDERING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams2): HRESULT {.stdcall.}
                IDWriteFactory2_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory3, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, renderingMode:DWRITE_RENDERING_MODE, measuringMode:DWRITE_MEASURING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, antialiasMode:DWRITE_TEXT_ANTIALIAS_MODE, originX:FLOAT, originY:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                IDWriteFactory3_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory3, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE1, measuring_mode:DWRITE_MEASURING_MODE, gridfit_mode:DWRITE_GRID_FIT_MODE, antialias_mode:DWRITE_TEXT_ANTIALIAS_MODE, origin_x:FLOAT, origin_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                IDWriteFactory3_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory3, gamma:FLOAT, enhanced_contrast:FLOAT, grayscale_enhanced_contrast:FLOAT, cleartype_level:FLOAT, pixel_geometry:DWRITE_PIXEL_GEOMETRY, rendering_mode:DWRITE_RENDERING_MODE1, gridfit_mode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams3): HRESULT {.stdcall.}
                CreateFontFaceReference2*: proc (This:ptr IDWriteFactory3, file:ptr IDWriteFontFile, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                CreateFontFaceReference*: proc (This:ptr IDWriteFactory3, path:ptr WCHAR, writetime:ptr FILETIME, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                GetSystemFontSet*: proc (This:ptr IDWriteFactory3, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                CreateFontSetBuilder*: proc (This:ptr IDWriteFactory3, builder:ptr ptr IDWriteFontSetBuilder): HRESULT {.stdcall.}
                CreateFontCollectionFromFontSet*: proc (This:ptr IDWriteFactory3, fontset:ptr IDWriteFontSet, collection:ptr ptr IDWriteFontCollection1): HRESULT {.stdcall.}
                IDWriteFactory3_GetSystemFontCollection*: proc (This:ptr IDWriteFactory3, include_downloadable:BOOL, collection:ptr ptr IDWriteFontCollection1, check_for_updates:BOOL): HRESULT {.stdcall.}
                GetFontDownloadQueue*: proc (This:ptr IDWriteFactory3, queue:ptr ptr IDWriteFontDownloadQueue): HRESULT {.stdcall.}
    IDWriteFactory3* = object
        lpVtbl*: ptr IDWriteFactory3Vtbl
    IDWriteFontFace4Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontFace4, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontFace4): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontFace4): ULONG {.stdcall.}
                GetType*: proc (This:ptr IDWriteFontFace4): DWRITE_FONT_FACE_TYPE {.stdcall.}
                GetFiles*: proc (This:ptr IDWriteFontFace4, number_of_files:ptr UINT32, fontfiles:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                GetIndex*: proc (This:ptr IDWriteFontFace4): UINT32 {.stdcall.}
                GetSimulations*: proc (This:ptr IDWriteFontFace4): DWRITE_FONT_SIMULATIONS {.stdcall.}
                IsSymbolFont*: proc (This:ptr IDWriteFontFace4): BOOL {.stdcall.}
                GetMetrics*: proc (This:ptr IDWriteFontFace4, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
                GetGlyphCount*: proc (This:ptr IDWriteFontFace4): UINT16 {.stdcall.}
                GetDesignGlyphMetrics*: proc (This:ptr IDWriteFontFace4, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
                GetGlyphIndices*: proc (This:ptr IDWriteFontFace4, codepoints:ptr UINT32, count:UINT32, glyph_indices:ptr UINT16): HRESULT {.stdcall.}
                TryGetFontTable*: proc (This:ptr IDWriteFontFace4, table_tag:UINT32, table_data:ptr pointer, table_size:ptr UINT32, context:ptr pointer, exists:ptr BOOL): HRESULT {.stdcall.}
                ReleaseFontTable*: proc (This:ptr IDWriteFontFace4, table_context:pointer) {.stdcall.}
                GetGlyphRunOutline*: proc (This:ptr IDWriteFontFace4, emSize:FLOAT, glyph_indices:ptr UINT16, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET, glyph_count:UINT32, is_sideways:BOOL, is_rtl:BOOL, geometrysink:ptr IDWriteGeometrySink): HRESULT {.stdcall.}
                GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace4, emSize:FLOAT, pixels_per_dip:FLOAT, mode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
                GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace4, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS): HRESULT {.stdcall.}
                GetGdiCompatibleGlyphMetrics*: proc (This:ptr IDWriteFontFace4, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
                IDWriteFontFace1_GetMetrics*: proc (This:ptr IDWriteFontFace4, metrics:ptr DWRITE_FONT_METRICS1) {.stdcall.}
                IDWriteFontFace1_GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace4, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS1): HRESULT {.stdcall.}
                GetCaretMetrics*: proc (This:ptr IDWriteFontFace4, metrics:ptr DWRITE_CARET_METRICS) {.stdcall.}
                GetUnicodeRanges*: proc (This:ptr IDWriteFontFace4, max_count:UINT32, ranges:ptr DWRITE_UNICODE_RANGE, count:ptr UINT32): HRESULT {.stdcall.}
                IsMonospacedFont*: proc (This:ptr IDWriteFontFace4): BOOL {.stdcall.}
                GetDesignGlyphAdvances*: proc (This:ptr IDWriteFontFace4, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32, is_sideways:BOOL): HRESULT {.stdcall.}
                GetGdiCompatibleGlyphAdvances*: proc (This:ptr IDWriteFontFace4, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, is_sideways:BOOL, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32): HRESULT {.stdcall.}
                GetKerningPairAdjustments*: proc (This:ptr IDWriteFontFace4, glyph_count:UINT32, indices:ptr UINT16, adjustments:ptr INT32): HRESULT {.stdcall.}
                HasKerningPairs*: proc (This:ptr IDWriteFontFace4): BOOL {.stdcall.}
                IDWriteFontFace1_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace4, font_emsize:FLOAT, dpiX:FLOAT, dpiY:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuring_mode:DWRITE_MEASURING_MODE, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
                GetVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace4, glyph_count:UINT32, nominal_indices:ptr UINT16, vertical_indices:ptr UINT16): HRESULT {.stdcall.}
                HasVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace4): BOOL {.stdcall.}
                IsColorFont*: proc (This:ptr IDWriteFontFace4): BOOL {.stdcall.}
                GetColorPaletteCount*: proc (This:ptr IDWriteFontFace4): UINT32 {.stdcall.}
                GetPaletteEntryCount*: proc (This:ptr IDWriteFontFace4): UINT32 {.stdcall.}
                GetPaletteEntries*: proc (This:ptr IDWriteFontFace4, palette_index:UINT32, first_entry_index:UINT32, entry_count:UINT32, entries:ptr DWRITE_COLOR_F): HRESULT {.stdcall.}
                IDWriteFontFace2_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace4, fontEmSize:FLOAT, dpiX:FLOAT, dpiY:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuringmode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, renderingmode:ptr DWRITE_RENDERING_MODE, gridfitmode:ptr DWRITE_GRID_FIT_MODE): HRESULT {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontFace4, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                GetPanose*: proc (This:ptr IDWriteFontFace4, panose:ptr DWRITE_PANOSE) {.stdcall.}
                GetWeight*: proc (This:ptr IDWriteFontFace4): DWRITE_FONT_WEIGHT {.stdcall.}
                GetStretch*: proc (This:ptr IDWriteFontFace4): DWRITE_FONT_STRETCH {.stdcall.}
                GetStyle*: proc (This:ptr IDWriteFontFace4): DWRITE_FONT_STYLE {.stdcall.}
                GetFamilyNames*: proc (This:ptr IDWriteFontFace4, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetFaceNames*: proc (This:ptr IDWriteFontFace4, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetInformationalStrings*: proc (This:ptr IDWriteFontFace4, stringid:DWRITE_INFORMATIONAL_STRING_ID, strings:ptr ptr IDWriteLocalizedStrings, exists:ptr BOOL): HRESULT {.stdcall.}
                HasCharacter*: proc (This:ptr IDWriteFontFace4, character:UINT32): BOOL {.stdcall.}
                IDWriteFontFace3_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace4, emsize:FLOAT, dpi_x:FLOAT, dpi_y:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuring_mode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, rendering_mode:ptr DWRITE_RENDERING_MODE1, gridfit_mode:ptr DWRITE_GRID_FIT_MODE): HRESULT {.stdcall.}
                IsCharacterLocal*: proc (This:ptr IDWriteFontFace4, character:UINT32): BOOL {.stdcall.}
                IsGlyphLocal*: proc (This:ptr IDWriteFontFace4, glyph:UINT16): BOOL {.stdcall.}
                AreCharactersLocal*: proc (This:ptr IDWriteFontFace4, characters:ptr WCHAR, count:UINT32, enqueue_if_not:BOOL, are_local:ptr BOOL): HRESULT {.stdcall.}
                AreGlyphsLocal*: proc (This:ptr IDWriteFontFace4, glyphs:ptr UINT16, count:UINT32, enqueue_if_not:BOOL, are_local:ptr BOOL): HRESULT {.stdcall.}
                GetGlyphImageFormats2*: proc (This:ptr IDWriteFontFace4, glyph:UINT16, ppem_first:UINT32, ppem_last:UINT32, formats:ptr DWRITE_GLYPH_IMAGE_FORMATS): HRESULT {.stdcall.}
                GetGlyphImageFormats*: proc (This:ptr IDWriteFontFace4): DWRITE_GLYPH_IMAGE_FORMATS {.stdcall.}
                GetGlyphImageData*: proc (This:ptr IDWriteFontFace4, glyph:UINT16, ppem:UINT32, format:DWRITE_GLYPH_IMAGE_FORMATS, data:ptr DWRITE_GLYPH_IMAGE_DATA, context:ptr pointer): HRESULT {.stdcall.}
                ReleaseGlyphImageData*: proc (This:ptr IDWriteFontFace4, context:pointer) {.stdcall.}
    IDWriteFontFace4* = object
        lpVtbl*: ptr IDWriteFontFace4Vtbl
    IDWriteFontFace5Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFontFace5, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFontFace5): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFontFace5): ULONG {.stdcall.}
                GetType*: proc (This:ptr IDWriteFontFace5): DWRITE_FONT_FACE_TYPE {.stdcall.}
                GetFiles*: proc (This:ptr IDWriteFontFace5, number_of_files:ptr UINT32, fontfiles:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                GetIndex*: proc (This:ptr IDWriteFontFace5): UINT32 {.stdcall.}
                GetSimulations*: proc (This:ptr IDWriteFontFace5): DWRITE_FONT_SIMULATIONS {.stdcall.}
                IsSymbolFont*: proc (This:ptr IDWriteFontFace5): BOOL {.stdcall.}
                GetMetrics*: proc (This:ptr IDWriteFontFace5, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
                GetGlyphCount*: proc (This:ptr IDWriteFontFace5): UINT16 {.stdcall.}
                GetDesignGlyphMetrics*: proc (This:ptr IDWriteFontFace5, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
                GetGlyphIndices*: proc (This:ptr IDWriteFontFace5, codepoints:ptr UINT32, count:UINT32, glyph_indices:ptr UINT16): HRESULT {.stdcall.}
                TryGetFontTable*: proc (This:ptr IDWriteFontFace5, table_tag:UINT32, table_data:ptr pointer, table_size:ptr UINT32, context:ptr pointer, exists:ptr BOOL): HRESULT {.stdcall.}
                ReleaseFontTable*: proc (This:ptr IDWriteFontFace5, table_context:pointer) {.stdcall.}
                GetGlyphRunOutline*: proc (This:ptr IDWriteFontFace5, emSize:FLOAT, glyph_indices:ptr UINT16, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET, glyph_count:UINT32, is_sideways:BOOL, is_rtl:BOOL, geometrysink:ptr IDWriteGeometrySink): HRESULT {.stdcall.}
                GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace5, emSize:FLOAT, pixels_per_dip:FLOAT, mode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
                GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace5, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS): HRESULT {.stdcall.}
                GetGdiCompatibleGlyphMetrics*: proc (This:ptr IDWriteFontFace5, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
                IDWriteFontFace1_GetMetrics*: proc (This:ptr IDWriteFontFace5, metrics:ptr DWRITE_FONT_METRICS1) {.stdcall.}
                IDWriteFontFace1_GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace5, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS1): HRESULT {.stdcall.}
                GetCaretMetrics*: proc (This:ptr IDWriteFontFace5, metrics:ptr DWRITE_CARET_METRICS) {.stdcall.}
                GetUnicodeRanges*: proc (This:ptr IDWriteFontFace5, max_count:UINT32, ranges:ptr DWRITE_UNICODE_RANGE, count:ptr UINT32): HRESULT {.stdcall.}
                IsMonospacedFont*: proc (This:ptr IDWriteFontFace5): BOOL {.stdcall.}
                GetDesignGlyphAdvances*: proc (This:ptr IDWriteFontFace5, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32, is_sideways:BOOL): HRESULT {.stdcall.}
                GetGdiCompatibleGlyphAdvances*: proc (This:ptr IDWriteFontFace5, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, is_sideways:BOOL, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32): HRESULT {.stdcall.}
                GetKerningPairAdjustments*: proc (This:ptr IDWriteFontFace5, glyph_count:UINT32, indices:ptr UINT16, adjustments:ptr INT32): HRESULT {.stdcall.}
                HasKerningPairs*: proc (This:ptr IDWriteFontFace5): BOOL {.stdcall.}
                IDWriteFontFace1_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace5, font_emsize:FLOAT, dpiX:FLOAT, dpiY:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuring_mode:DWRITE_MEASURING_MODE, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
                GetVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace5, glyph_count:UINT32, nominal_indices:ptr UINT16, vertical_indices:ptr UINT16): HRESULT {.stdcall.}
                HasVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace5): BOOL {.stdcall.}
                IsColorFont*: proc (This:ptr IDWriteFontFace5): BOOL {.stdcall.}
                GetColorPaletteCount*: proc (This:ptr IDWriteFontFace5): UINT32 {.stdcall.}
                GetPaletteEntryCount*: proc (This:ptr IDWriteFontFace5): UINT32 {.stdcall.}
                GetPaletteEntries*: proc (This:ptr IDWriteFontFace5, palette_index:UINT32, first_entry_index:UINT32, entry_count:UINT32, entries:ptr DWRITE_COLOR_F): HRESULT {.stdcall.}
                IDWriteFontFace2_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace5, fontEmSize:FLOAT, dpiX:FLOAT, dpiY:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuringmode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, renderingmode:ptr DWRITE_RENDERING_MODE, gridfitmode:ptr DWRITE_GRID_FIT_MODE): HRESULT {.stdcall.}
                GetFontFaceReference*: proc (This:ptr IDWriteFontFace5, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                GetPanose*: proc (This:ptr IDWriteFontFace5, panose:ptr DWRITE_PANOSE) {.stdcall.}
                GetWeight*: proc (This:ptr IDWriteFontFace5): DWRITE_FONT_WEIGHT {.stdcall.}
                GetStretch*: proc (This:ptr IDWriteFontFace5): DWRITE_FONT_STRETCH {.stdcall.}
                GetStyle*: proc (This:ptr IDWriteFontFace5): DWRITE_FONT_STYLE {.stdcall.}
                GetFamilyNames*: proc (This:ptr IDWriteFontFace5, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetFaceNames*: proc (This:ptr IDWriteFontFace5, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
                GetInformationalStrings*: proc (This:ptr IDWriteFontFace5, stringid:DWRITE_INFORMATIONAL_STRING_ID, strings:ptr ptr IDWriteLocalizedStrings, exists:ptr BOOL): HRESULT {.stdcall.}
                HasCharacter*: proc (This:ptr IDWriteFontFace5, character:UINT32): BOOL {.stdcall.}
                IDWriteFontFace3_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace5, emsize:FLOAT, dpi_x:FLOAT, dpi_y:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuring_mode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, rendering_mode:ptr DWRITE_RENDERING_MODE1, gridfit_mode:ptr DWRITE_GRID_FIT_MODE): HRESULT {.stdcall.}
                IsCharacterLocal*: proc (This:ptr IDWriteFontFace5, character:UINT32): BOOL {.stdcall.}
                IsGlyphLocal*: proc (This:ptr IDWriteFontFace5, glyph:UINT16): BOOL {.stdcall.}
                AreCharactersLocal*: proc (This:ptr IDWriteFontFace5, characters:ptr WCHAR, count:UINT32, enqueue_if_not:BOOL, are_local:ptr BOOL): HRESULT {.stdcall.}
                AreGlyphsLocal*: proc (This:ptr IDWriteFontFace5, glyphs:ptr UINT16, count:UINT32, enqueue_if_not:BOOL, are_local:ptr BOOL): HRESULT {.stdcall.}
                GetGlyphImageFormats2*: proc (This:ptr IDWriteFontFace5, glyph:UINT16, ppem_first:UINT32, ppem_last:UINT32, formats:ptr DWRITE_GLYPH_IMAGE_FORMATS): HRESULT {.stdcall.}
                GetGlyphImageFormats*: proc (This:ptr IDWriteFontFace5): DWRITE_GLYPH_IMAGE_FORMATS {.stdcall.}
                GetGlyphImageData*: proc (This:ptr IDWriteFontFace5, glyph:UINT16, ppem:UINT32, format:DWRITE_GLYPH_IMAGE_FORMATS, data:ptr DWRITE_GLYPH_IMAGE_DATA, context:ptr pointer): HRESULT {.stdcall.}
                ReleaseGlyphImageData*: proc (This:ptr IDWriteFontFace5, context:pointer) {.stdcall.}
                GetFontAxisValueCount*: proc (This:ptr IDWriteFontFace5): UINT32 {.stdcall.}
                GetFontAxisValues*: proc (This:ptr IDWriteFontFace5, values:ptr DWRITE_FONT_AXIS_VALUE, value_count:UINT32): HRESULT {.stdcall.}
                HasVariations*: proc (This:ptr IDWriteFontFace5): BOOL {.stdcall.}
                GetFontResource*: proc (This:ptr IDWriteFontFace5, resource:ptr ptr IDWriteFontResource): HRESULT {.stdcall.}
                Equals*: proc (This:ptr IDWriteFontFace5, fontface:ptr IDWriteFontFace): BOOL {.stdcall.}
    IDWriteFontFace5* = object
        lpVtbl*: ptr IDWriteFontFace5Vtbl
    IDWriteColorGlyphRunEnumerator1Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteColorGlyphRunEnumerator1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteColorGlyphRunEnumerator1): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteColorGlyphRunEnumerator1): ULONG {.stdcall.}
                MoveNext*: proc (This:ptr IDWriteColorGlyphRunEnumerator1, hasRun:ptr BOOL): HRESULT {.stdcall.}
                GetCurrentRun*: proc (This:ptr IDWriteColorGlyphRunEnumerator1, run:ptr ptr DWRITE_COLOR_GLYPH_RUN): HRESULT {.stdcall.}
                IDWriteColorGlyphRunEnumerator1_GetCurrentRun*: proc (This:ptr IDWriteColorGlyphRunEnumerator1, run:ptr ptr DWRITE_COLOR_GLYPH_RUN1): HRESULT {.stdcall.}
    IDWriteColorGlyphRunEnumerator1* = object
        lpVtbl*: ptr IDWriteColorGlyphRunEnumerator1Vtbl
    IDWriteFactory4Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFactory4, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFactory4): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFactory4): ULONG {.stdcall.}
                GetSystemFontCollection*: proc (This:ptr IDWriteFactory4, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                CreateCustomFontCollection*: proc (This:ptr IDWriteFactory4, loader:ptr IDWriteFontCollectionLoader, key:pointer, key_size:UINT32, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                RegisterFontCollectionLoader*: proc (This:ptr IDWriteFactory4, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                UnregisterFontCollectionLoader*: proc (This:ptr IDWriteFactory4, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                CreateFontFileReference*: proc (This:ptr IDWriteFactory4, path:ptr WCHAR, writetime:ptr FILETIME, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateCustomFontFileReference*: proc (This:ptr IDWriteFactory4, reference_key:pointer, key_size:UINT32, loader:ptr IDWriteFontFileLoader, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFactory4, facetype:DWRITE_FONT_FACE_TYPE, files_number:UINT32, font_files:ptr ptr IDWriteFontFile, index:UINT32, sim_flags:DWRITE_FONT_SIMULATIONS, font_face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
                CreateRenderingParams*: proc (This:ptr IDWriteFactory4, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateMonitorRenderingParams*: proc (This:ptr IDWriteFactory4, monitor:HMONITOR, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory4, gamma:FLOAT, enhancedContrast:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                RegisterFontFileLoader*: proc (This:ptr IDWriteFactory4, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                UnregisterFontFileLoader*: proc (This:ptr IDWriteFactory4, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                CreateTextFormat*: proc (This:ptr IDWriteFactory4, family_name:ptr WCHAR, collection:ptr IDWriteFontCollection, weight:DWRITE_FONT_WEIGHT, style:DWRITE_FONT_STYLE, stretch:DWRITE_FONT_STRETCH, size:FLOAT, locale:ptr WCHAR, format:ptr ptr IDWriteTextFormat): HRESULT {.stdcall.}
                CreateTypography*: proc (This:ptr IDWriteFactory4, typography:ptr ptr IDWriteTypography): HRESULT {.stdcall.}
                GetGdiInterop*: proc (This:ptr IDWriteFactory4, gdi_interop:ptr ptr IDWriteGdiInterop): HRESULT {.stdcall.}
                CreateTextLayout*: proc (This:ptr IDWriteFactory4, string:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, max_width:FLOAT, max_height:FLOAT, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateGdiCompatibleTextLayout*: proc (This:ptr IDWriteFactory4, string:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, layout_width:FLOAT, layout_height:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateEllipsisTrimmingSign*: proc (This:ptr IDWriteFactory4, format:ptr IDWriteTextFormat, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
                CreateTextAnalyzer*: proc (This:ptr IDWriteFactory4, analyzer:ptr ptr IDWriteTextAnalyzer): HRESULT {.stdcall.}
                CreateNumberSubstitution*: proc (This:ptr IDWriteFactory4, method1:DWRITE_NUMBER_SUBSTITUTION_METHOD, locale:ptr WCHAR, ignore_user_override:BOOL, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
                CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory4, glyph_run:ptr DWRITE_GLYPH_RUN, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE, measuring_mode:DWRITE_MEASURING_MODE, baseline_x:FLOAT, baseline_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                GetEudcFontCollection*: proc (This:ptr IDWriteFactory4, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                IDWriteFactory1_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory4, gamma:FLOAT, enhcontrast:FLOAT, enhcontrast_grayscale:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams1): HRESULT {.stdcall.}
                GetSystemFontFallback*: proc (This:ptr IDWriteFactory4, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
                CreateFontFallbackBuilder*: proc (This:ptr IDWriteFactory4, fallbackbuilder:ptr ptr IDWriteFontFallbackBuilder): HRESULT {.stdcall.}
                TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory4, originX:FLOAT, originY:FLOAT, run:ptr DWRITE_GLYPH_RUN, rundescr:ptr DWRITE_GLYPH_RUN_DESCRIPTION, mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette_index:UINT32, colorlayers:ptr ptr IDWriteColorGlyphRunEnumerator): HRESULT {.stdcall.}
                IDWriteFactory2_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory4, gamma:FLOAT, contrast:FLOAT, grayscalecontrast:FLOAT, cleartypeLevel:FLOAT, pixelGeometry:DWRITE_PIXEL_GEOMETRY, renderingMode:DWRITE_RENDERING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams2): HRESULT {.stdcall.}
                IDWriteFactory2_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory4, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, renderingMode:DWRITE_RENDERING_MODE, measuringMode:DWRITE_MEASURING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, antialiasMode:DWRITE_TEXT_ANTIALIAS_MODE, originX:FLOAT, originY:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                IDWriteFactory3_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory4, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE1, measuring_mode:DWRITE_MEASURING_MODE, gridfit_mode:DWRITE_GRID_FIT_MODE, antialias_mode:DWRITE_TEXT_ANTIALIAS_MODE, origin_x:FLOAT, origin_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                IDWriteFactory3_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory4, gamma:FLOAT, enhanced_contrast:FLOAT, grayscale_enhanced_contrast:FLOAT, cleartype_level:FLOAT, pixel_geometry:DWRITE_PIXEL_GEOMETRY, rendering_mode:DWRITE_RENDERING_MODE1, gridfit_mode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams3): HRESULT {.stdcall.}
                CreateFontFaceReference2*: proc (This:ptr IDWriteFactory4, file:ptr IDWriteFontFile, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                CreateFontFaceReference*: proc (This:ptr IDWriteFactory4, path:ptr WCHAR, writetime:ptr FILETIME, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                GetSystemFontSet*: proc (This:ptr IDWriteFactory4, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                CreateFontSetBuilder*: proc (This:ptr IDWriteFactory4, builder:ptr ptr IDWriteFontSetBuilder): HRESULT {.stdcall.}
                CreateFontCollectionFromFontSet*: proc (This:ptr IDWriteFactory4, fontset:ptr IDWriteFontSet, collection:ptr ptr IDWriteFontCollection1): HRESULT {.stdcall.}
                IDWriteFactory3_GetSystemFontCollection*: proc (This:ptr IDWriteFactory4, include_downloadable:BOOL, collection:ptr ptr IDWriteFontCollection1, check_for_updates:BOOL): HRESULT {.stdcall.}
                GetFontDownloadQueue*: proc (This:ptr IDWriteFactory4, queue:ptr ptr IDWriteFontDownloadQueue): HRESULT {.stdcall.}
                IDWriteFactory4_TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory4, baseline_origin:D2D1_POINT_2F, run:ptr DWRITE_GLYPH_RUN, run_desc:ptr DWRITE_GLYPH_RUN_DESCRIPTION, desired_formats:DWRITE_GLYPH_IMAGE_FORMATS, measuring_mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette:UINT32, layers:ptr ptr IDWriteColorGlyphRunEnumerator1): HRESULT {.stdcall.}
                ComputeGlyphOrigins2*: proc (This:ptr IDWriteFactory4, run:ptr DWRITE_GLYPH_RUN, baseline_origin:D2D1_POINT_2F, origins:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
                ComputeGlyphOrigins*: proc (This:ptr IDWriteFactory4, run:ptr DWRITE_GLYPH_RUN, measuring_mode:DWRITE_MEASURING_MODE, baseline_origin:D2D1_POINT_2F, transform:ptr DWRITE_MATRIX, origins:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
    IDWriteFactory4* = object
        lpVtbl*: ptr IDWriteFactory4Vtbl
    IDWriteAsyncResultVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteAsyncResult, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteAsyncResult): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteAsyncResult): ULONG {.stdcall.}
                GetWaitHandle*: proc (This:ptr IDWriteAsyncResult): HANDLE {.stdcall.}
                GetResult*: proc (This:ptr IDWriteAsyncResult): HRESULT {.stdcall.}
    IDWriteAsyncResult* = object
        lpVtbl*: ptr IDWriteAsyncResultVtbl
    IDWriteRemoteFontFileStreamVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteRemoteFontFileStream, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteRemoteFontFileStream): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteRemoteFontFileStream): ULONG {.stdcall.}
                ReadFileFragment*: proc (This:ptr IDWriteRemoteFontFileStream, fragment_start:ptr pointer, offset:UINT64, fragment_size:UINT64, fragment_context:ptr pointer): HRESULT {.stdcall.}
                ReleaseFileFragment*: proc (This:ptr IDWriteRemoteFontFileStream, fragment_context:pointer) {.stdcall.}
                GetFileSize*: proc (This:ptr IDWriteRemoteFontFileStream, size:ptr UINT64): HRESULT {.stdcall.}
                GetLastWriteTime*: proc (This:ptr IDWriteRemoteFontFileStream, last_writetime:ptr UINT64): HRESULT {.stdcall.}
                GetLocalFileSize*: proc (This:ptr IDWriteRemoteFontFileStream, size:ptr UINT64): HRESULT {.stdcall.}
                GetFileFragmentLocality*: proc (This:ptr IDWriteRemoteFontFileStream, offset:UINT64, size:UINT64, is_local:ptr BOOL, partial_size:ptr UINT64): HRESULT {.stdcall.}
                GetLocality*: proc (This:ptr IDWriteRemoteFontFileStream): DWRITE_LOCALITY {.stdcall.}
                BeginDownload*: proc (This:ptr IDWriteRemoteFontFileStream, operation_id:ptr GUID, fragments:ptr DWRITE_FILE_FRAGMENT, fragment_count:UINT32, async_result:ptr ptr IDWriteAsyncResult): HRESULT {.stdcall.}
    IDWriteRemoteFontFileStream* = object
        lpVtbl*: ptr IDWriteRemoteFontFileStreamVtbl
    IDWriteRemoteFontFileLoaderVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteRemoteFontFileLoader, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteRemoteFontFileLoader): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteRemoteFontFileLoader): ULONG {.stdcall.}
                CreateStreamFromKey*: proc (This:ptr IDWriteRemoteFontFileLoader, key:pointer, key_size:UINT32, stream:ptr ptr IDWriteFontFileStream): HRESULT {.stdcall.}
                CreateRemoteStreamFromKey*: proc (This:ptr IDWriteRemoteFontFileLoader, key:pointer, key_size:UINT32, stream:ptr ptr IDWriteRemoteFontFileStream): HRESULT {.stdcall.}
                GetLocalityFromKey*: proc (This:ptr IDWriteRemoteFontFileLoader, key:pointer, key_size:UINT32, locality:ptr DWRITE_LOCALITY): HRESULT {.stdcall.}
                CreateFontFileReferenceFromUrl*: proc (This:ptr IDWriteRemoteFontFileLoader, factory:ptr IDWriteFactory, base_url:ptr WCHAR, file_url:ptr WCHAR, fontfile:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
    IDWriteRemoteFontFileLoader* = object
        lpVtbl*: ptr IDWriteRemoteFontFileLoaderVtbl
    IDWriteInMemoryFontFileLoaderVtbl* = object
                QueryInterface*: proc (This:ptr IDWriteInMemoryFontFileLoader, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteInMemoryFontFileLoader): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteInMemoryFontFileLoader): ULONG {.stdcall.}
                CreateStreamFromKey*: proc (This:ptr IDWriteInMemoryFontFileLoader, key:pointer, key_size:UINT32, stream:ptr ptr IDWriteFontFileStream): HRESULT {.stdcall.}
                CreateInMemoryFontFileReference*: proc (This:ptr IDWriteInMemoryFontFileLoader, factory:ptr IDWriteFactory, data:pointer, data_size:UINT32, owner:pointer, fontfile:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                GetFileCount*: proc (This:ptr IDWriteInMemoryFontFileLoader): UINT32 {.stdcall.}
    IDWriteInMemoryFontFileLoader* = object
        lpVtbl*: ptr IDWriteInMemoryFontFileLoaderVtbl
    IDWriteFactory5Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFactory5, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFactory5): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFactory5): ULONG {.stdcall.}
                GetSystemFontCollection*: proc (This:ptr IDWriteFactory5, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                CreateCustomFontCollection*: proc (This:ptr IDWriteFactory5, loader:ptr IDWriteFontCollectionLoader, key:pointer, key_size:UINT32, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                RegisterFontCollectionLoader*: proc (This:ptr IDWriteFactory5, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                UnregisterFontCollectionLoader*: proc (This:ptr IDWriteFactory5, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                CreateFontFileReference*: proc (This:ptr IDWriteFactory5, path:ptr WCHAR, writetime:ptr FILETIME, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateCustomFontFileReference*: proc (This:ptr IDWriteFactory5, reference_key:pointer, key_size:UINT32, loader:ptr IDWriteFontFileLoader, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFactory5, facetype:DWRITE_FONT_FACE_TYPE, files_number:UINT32, font_files:ptr ptr IDWriteFontFile, index:UINT32, sim_flags:DWRITE_FONT_SIMULATIONS, font_face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
                CreateRenderingParams*: proc (This:ptr IDWriteFactory5, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateMonitorRenderingParams*: proc (This:ptr IDWriteFactory5, monitor:HMONITOR, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory5, gamma:FLOAT, enhancedContrast:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                RegisterFontFileLoader*: proc (This:ptr IDWriteFactory5, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                UnregisterFontFileLoader*: proc (This:ptr IDWriteFactory5, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                CreateTextFormat*: proc (This:ptr IDWriteFactory5, family_name:ptr WCHAR, collection:ptr IDWriteFontCollection, weight:DWRITE_FONT_WEIGHT, style:DWRITE_FONT_STYLE, stretch:DWRITE_FONT_STRETCH, size:FLOAT, locale:ptr WCHAR, format:ptr ptr IDWriteTextFormat): HRESULT {.stdcall.}
                CreateTypography*: proc (This:ptr IDWriteFactory5, typography:ptr ptr IDWriteTypography): HRESULT {.stdcall.}
                GetGdiInterop*: proc (This:ptr IDWriteFactory5, gdi_interop:ptr ptr IDWriteGdiInterop): HRESULT {.stdcall.}
                CreateTextLayout*: proc (This:ptr IDWriteFactory5, string:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, max_width:FLOAT, max_height:FLOAT, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateGdiCompatibleTextLayout*: proc (This:ptr IDWriteFactory5, string:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, layout_width:FLOAT, layout_height:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateEllipsisTrimmingSign*: proc (This:ptr IDWriteFactory5, format:ptr IDWriteTextFormat, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
                CreateTextAnalyzer*: proc (This:ptr IDWriteFactory5, analyzer:ptr ptr IDWriteTextAnalyzer): HRESULT {.stdcall.}
                CreateNumberSubstitution*: proc (This:ptr IDWriteFactory5, method1:DWRITE_NUMBER_SUBSTITUTION_METHOD, locale:ptr WCHAR, ignore_user_override:BOOL, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
                CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory5, glyph_run:ptr DWRITE_GLYPH_RUN, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE, measuring_mode:DWRITE_MEASURING_MODE, baseline_x:FLOAT, baseline_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                
                GetEudcFontCollection*: proc (This:ptr IDWriteFactory5, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                IDWriteFactory1_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory5, gamma:FLOAT, enhcontrast:FLOAT, enhcontrast_grayscale:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams1): HRESULT {.stdcall.}
                
                GetSystemFontFallback*: proc (This:ptr IDWriteFactory5, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
                CreateFontFallbackBuilder*: proc (This:ptr IDWriteFactory5, fallbackbuilder:ptr ptr IDWriteFontFallbackBuilder): HRESULT {.stdcall.}
                TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory5, originX:FLOAT, originY:FLOAT, run:ptr DWRITE_GLYPH_RUN, rundescr:ptr DWRITE_GLYPH_RUN_DESCRIPTION, mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette_index:UINT32, colorlayers:ptr ptr IDWriteColorGlyphRunEnumerator): HRESULT {.stdcall.}
                IDWriteFactory2_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory5, gamma:FLOAT, contrast:FLOAT, grayscalecontrast:FLOAT, cleartypeLevel:FLOAT, pixelGeometry:DWRITE_PIXEL_GEOMETRY, renderingMode:DWRITE_RENDERING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams2): HRESULT {.stdcall.}
                IDWriteFactory2_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory5, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, renderingMode:DWRITE_RENDERING_MODE, measuringMode:DWRITE_MEASURING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, antialiasMode:DWRITE_TEXT_ANTIALIAS_MODE, originX:FLOAT, originY:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                
                IDWriteFactory3_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory5, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE1, measuring_mode:DWRITE_MEASURING_MODE, gridfit_mode:DWRITE_GRID_FIT_MODE, antialias_mode:DWRITE_TEXT_ANTIALIAS_MODE, origin_x:FLOAT, origin_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                IDWriteFactory3_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory5, gamma:FLOAT, enhanced_contrast:FLOAT, grayscale_enhanced_contrast:FLOAT, cleartype_level:FLOAT, pixel_geometry:DWRITE_PIXEL_GEOMETRY, rendering_mode:DWRITE_RENDERING_MODE1, gridfit_mode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams3): HRESULT {.stdcall.}
                CreateFontFaceReference2*: proc (This:ptr IDWriteFactory5, file:ptr IDWriteFontFile, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                CreateFontFaceReference*: proc (This:ptr IDWriteFactory5, path:ptr WCHAR, writetime:ptr FILETIME, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                GetSystemFontSet*: proc (This:ptr IDWriteFactory5, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                CreateFontSetBuilder*: proc (This:ptr IDWriteFactory5, builder:ptr ptr IDWriteFontSetBuilder1): HRESULT {.stdcall.}
                CreateFontCollectionFromFontSet*: proc (This:ptr IDWriteFactory5, fontset:ptr IDWriteFontSet, collection:ptr ptr IDWriteFontCollection1): HRESULT {.stdcall.}
                IDWriteFactory3_GetSystemFontCollection*: proc (This:ptr IDWriteFactory5, include_downloadable:BOOL, collection:ptr ptr IDWriteFontCollection1, check_for_updates:BOOL): HRESULT {.stdcall.}
                GetFontDownloadQueue*: proc (This:ptr IDWriteFactory5, queue:ptr ptr IDWriteFontDownloadQueue): HRESULT {.stdcall.}
                
                IDWriteFactory4_TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory5, baseline_origin:D2D1_POINT_2F, run:ptr DWRITE_GLYPH_RUN, run_desc:ptr DWRITE_GLYPH_RUN_DESCRIPTION, desired_formats:DWRITE_GLYPH_IMAGE_FORMATS, measuring_mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette:UINT32, layers:ptr ptr IDWriteColorGlyphRunEnumerator1): HRESULT {.stdcall.}
                ComputeGlyphOrigins2*: proc (This:ptr IDWriteFactory5, run:ptr DWRITE_GLYPH_RUN, baseline_origin:D2D1_POINT_2F, origins:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
                ComputeGlyphOrigins*: proc (This:ptr IDWriteFactory5, run:ptr DWRITE_GLYPH_RUN, measuring_mode:DWRITE_MEASURING_MODE, baseline_origin:D2D1_POINT_2F, transform:ptr DWRITE_MATRIX, origins:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
                
                IDWriteFactory5_CreateFontSetBuilder*: proc (This:ptr IDWriteFactory5, fontset_builder:ptr ptr IDWriteFontSetBuilder1): HRESULT {.stdcall.}
                CreateInMemoryFontFileLoader*: proc (This:ptr IDWriteFactory5, loader:ptr ptr IDWriteInMemoryFontFileLoader): HRESULT {.stdcall.}
                CreateHttpFontFileLoader*: proc (This:ptr IDWriteFactory5, referrer_url:ptr WCHAR, extra_headers:ptr WCHAR, loader:ptr ptr IDWriteRemoteFontFileLoader): HRESULT {.stdcall.}
                AnalyzeContainerType*: proc (This:ptr IDWriteFactory5, data:pointer, data_size:UINT32): DWRITE_CONTAINER_TYPE {.stdcall.}
                UnpackFontFile*: proc (This:ptr IDWriteFactory5, container_type:DWRITE_CONTAINER_TYPE, data:pointer, data_size:UINT32, stream:ptr ptr IDWriteFontFileStream): HRESULT {.stdcall.}
                
    IDWriteFactory5* = object
        lpVtbl*: ptr IDWriteFactory5Vtbl
    IDWriteFactory6Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFactory6, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFactory6): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFactory6): ULONG {.stdcall.}
                GetSystemFontCollection*: proc (This:ptr IDWriteFactory6, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                CreateCustomFontCollection*: proc (This:ptr IDWriteFactory6, loader:ptr IDWriteFontCollectionLoader, key:pointer, key_size:UINT32, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                RegisterFontCollectionLoader*: proc (This:ptr IDWriteFactory6, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                UnregisterFontCollectionLoader*: proc (This:ptr IDWriteFactory6, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                CreateFontFileReference*: proc (This:ptr IDWriteFactory6, path:ptr WCHAR, writetime:ptr FILETIME, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateCustomFontFileReference*: proc (This:ptr IDWriteFactory6, reference_key:pointer, key_size:UINT32, loader:ptr IDWriteFontFileLoader, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFactory6, facetype:DWRITE_FONT_FACE_TYPE, files_number:UINT32, font_files:ptr ptr IDWriteFontFile, index:UINT32, sim_flags:DWRITE_FONT_SIMULATIONS, font_face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
                CreateRenderingParams*: proc (This:ptr IDWriteFactory6, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateMonitorRenderingParams*: proc (This:ptr IDWriteFactory6, monitor:HMONITOR, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory6, gamma:FLOAT, enhancedContrast:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                RegisterFontFileLoader*: proc (This:ptr IDWriteFactory6, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                UnregisterFontFileLoader*: proc (This:ptr IDWriteFactory6, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                CreateTextFormat*: proc (This:ptr IDWriteFactory6, family_name:ptr WCHAR, collection:ptr IDWriteFontCollection, weight:DWRITE_FONT_WEIGHT, style:DWRITE_FONT_STYLE, stretch:DWRITE_FONT_STRETCH, size:FLOAT, locale:ptr WCHAR, format:ptr ptr IDWriteTextFormat): HRESULT {.stdcall.}
                CreateTypography*: proc (This:ptr IDWriteFactory6, typography:ptr ptr IDWriteTypography): HRESULT {.stdcall.}
                GetGdiInterop*: proc (This:ptr IDWriteFactory6, gdi_interop:ptr ptr IDWriteGdiInterop): HRESULT {.stdcall.}
                CreateTextLayout*: proc (This:ptr IDWriteFactory6, string:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, max_width:FLOAT, max_height:FLOAT, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateGdiCompatibleTextLayout*: proc (This:ptr IDWriteFactory6, string:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, layout_width:FLOAT, layout_height:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateEllipsisTrimmingSign*: proc (This:ptr IDWriteFactory6, format:ptr IDWriteTextFormat, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
                CreateTextAnalyzer*: proc (This:ptr IDWriteFactory6, analyzer:ptr ptr IDWriteTextAnalyzer): HRESULT {.stdcall.}
                CreateNumberSubstitution*: proc (This:ptr IDWriteFactory6, method1:DWRITE_NUMBER_SUBSTITUTION_METHOD, locale:ptr WCHAR, ignore_user_override:BOOL, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
                CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory6, glyph_run:ptr DWRITE_GLYPH_RUN, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE, measuring_mode:DWRITE_MEASURING_MODE, baseline_x:FLOAT, baseline_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                GetEudcFontCollection*: proc (This:ptr IDWriteFactory6, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                IDWriteFactory1_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory6, gamma:FLOAT, enhcontrast:FLOAT, enhcontrast_grayscale:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams1): HRESULT {.stdcall.}
                GetSystemFontFallback*: proc (This:ptr IDWriteFactory6, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
                CreateFontFallbackBuilder*: proc (This:ptr IDWriteFactory6, fallbackbuilder:ptr ptr IDWriteFontFallbackBuilder): HRESULT {.stdcall.}
                TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory6, originX:FLOAT, originY:FLOAT, run:ptr DWRITE_GLYPH_RUN, rundescr:ptr DWRITE_GLYPH_RUN_DESCRIPTION, mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette_index:UINT32, colorlayers:ptr ptr IDWriteColorGlyphRunEnumerator): HRESULT {.stdcall.}
                IDWriteFactory2_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory6, gamma:FLOAT, contrast:FLOAT, grayscalecontrast:FLOAT, cleartypeLevel:FLOAT, pixelGeometry:DWRITE_PIXEL_GEOMETRY, renderingMode:DWRITE_RENDERING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams2): HRESULT {.stdcall.}
                IDWriteFactory2_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory6, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, renderingMode:DWRITE_RENDERING_MODE, measuringMode:DWRITE_MEASURING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, antialiasMode:DWRITE_TEXT_ANTIALIAS_MODE, originX:FLOAT, originY:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                IDWriteFactory3_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory6, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE1, measuring_mode:DWRITE_MEASURING_MODE, gridfit_mode:DWRITE_GRID_FIT_MODE, antialias_mode:DWRITE_TEXT_ANTIALIAS_MODE, origin_x:FLOAT, origin_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                IDWriteFactory3_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory6, gamma:FLOAT, enhanced_contrast:FLOAT, grayscale_enhanced_contrast:FLOAT, cleartype_level:FLOAT, pixel_geometry:DWRITE_PIXEL_GEOMETRY, rendering_mode:DWRITE_RENDERING_MODE1, gridfit_mode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams3): HRESULT {.stdcall.}
                CreateFontFaceReference2*: proc (This:ptr IDWriteFactory6, file:ptr IDWriteFontFile, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                CreateFontFaceReference*: proc (This:ptr IDWriteFactory6, path:ptr WCHAR, writetime:ptr FILETIME, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                GetSystemFontSet*: proc (This:ptr IDWriteFactory6, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                CreateFontSetBuilder*: proc (This:ptr IDWriteFactory6, builder:ptr ptr IDWriteFontSetBuilder): HRESULT {.stdcall.}
                CreateFontCollectionFromFontSet*: proc (This:ptr IDWriteFactory6, fontset:ptr IDWriteFontSet, collection:ptr ptr IDWriteFontCollection1): HRESULT {.stdcall.}
                IDWriteFactory3_GetSystemFontCollection*: proc (This:ptr IDWriteFactory6, include_downloadable:BOOL, collection:ptr ptr IDWriteFontCollection1, check_for_updates:BOOL): HRESULT {.stdcall.}
                GetFontDownloadQueue*: proc (This:ptr IDWriteFactory6, queue:ptr ptr IDWriteFontDownloadQueue): HRESULT {.stdcall.}
                IDWriteFactory4_TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory6, baseline_origin:D2D1_POINT_2F, run:ptr DWRITE_GLYPH_RUN, run_desc:ptr DWRITE_GLYPH_RUN_DESCRIPTION, desired_formats:DWRITE_GLYPH_IMAGE_FORMATS, measuring_mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette:UINT32, layers:ptr ptr IDWriteColorGlyphRunEnumerator1): HRESULT {.stdcall.}
                ComputeGlyphOrigins2*: proc (This:ptr IDWriteFactory6, run:ptr DWRITE_GLYPH_RUN, baseline_origin:D2D1_POINT_2F, origins:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
                ComputeGlyphOrigins*: proc (This:ptr IDWriteFactory6, run:ptr DWRITE_GLYPH_RUN, measuring_mode:DWRITE_MEASURING_MODE, baseline_origin:D2D1_POINT_2F, transform:ptr DWRITE_MATRIX, origins:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
                IDWriteFactory5_CreateFontSetBuilder*: proc (This:ptr IDWriteFactory6, fontset_builder:ptr ptr IDWriteFontSetBuilder1): HRESULT {.stdcall.}
                CreateInMemoryFontFileLoader*: proc (This:ptr IDWriteFactory6, loader:ptr ptr IDWriteInMemoryFontFileLoader): HRESULT {.stdcall.}
                CreateHttpFontFileLoader*: proc (This:ptr IDWriteFactory6, referrer_url:ptr WCHAR, extra_headers:ptr WCHAR, loader:ptr ptr IDWriteRemoteFontFileLoader): HRESULT {.stdcall.}
                AnalyzeContainerType*: proc (This:ptr IDWriteFactory6, data:pointer, data_size:UINT32): DWRITE_CONTAINER_TYPE {.stdcall.}
                UnpackFontFile*: proc (This:ptr IDWriteFactory6, container_type:DWRITE_CONTAINER_TYPE, data:pointer, data_size:UINT32, stream:ptr ptr IDWriteFontFileStream): HRESULT {.stdcall.}
                IDWriteFactory6_CreateFontFaceReference*: proc (This:ptr IDWriteFactory6, file:ptr IDWriteFontFile, face_index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_axis:UINT32, face_ref:ptr ptr IDWriteFontFaceReference1): HRESULT {.stdcall.}
                CreateFontResource*: proc (This:ptr IDWriteFactory6, file:ptr IDWriteFontFile, face_index:UINT32, resource:ptr ptr IDWriteFontResource): HRESULT {.stdcall.}
                IDWriteFactory6_GetSystemFontSet*: proc (This:ptr IDWriteFactory6, include_downloadable:BOOL, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                IDWriteFactory6_GetSystemFontCollection*: proc (This:ptr IDWriteFactory6, include_downloadable:BOOL, family_model:DWRITE_FONT_FAMILY_MODEL, collection:ptr ptr IDWriteFontCollection2): HRESULT {.stdcall.}
                IDWriteFactory6_CreateFontCollectionFromFontSet*: proc (This:ptr IDWriteFactory6, fontset:ptr IDWriteFontSet, family_model:DWRITE_FONT_FAMILY_MODEL, collection:ptr ptr IDWriteFontCollection2): HRESULT {.stdcall.}
                IDWriteFactory6_CreateFontSetBuilder*: proc (This:ptr IDWriteFactory6, builder:ptr ptr IDWriteFontSetBuilder2): HRESULT {.stdcall.}
                IDWriteFactory6_CreateTextFormat*: proc (This:ptr IDWriteFactory6, familyname:ptr WCHAR, collection:ptr IDWriteFontCollection, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_axis:UINT32, fontsize:FLOAT, localename:ptr WCHAR, format:ptr ptr IDWriteTextFormat3): HRESULT {.stdcall.}
    IDWriteFactory6* = object
        lpVtbl*: ptr IDWriteFactory6Vtbl
    IDWriteFactory7Vtbl* = object
                QueryInterface*: proc (This:ptr IDWriteFactory7, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
                AddRef*: proc (This:ptr IDWriteFactory7): ULONG {.stdcall.}
                Release*: proc (This:ptr IDWriteFactory7): ULONG {.stdcall.}
                GetSystemFontCollection*: proc (This:ptr IDWriteFactory7, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                CreateCustomFontCollection*: proc (This:ptr IDWriteFactory7, loader:ptr IDWriteFontCollectionLoader, key:pointer, key_size:UINT32, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
                RegisterFontCollectionLoader*: proc (This:ptr IDWriteFactory7, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                UnregisterFontCollectionLoader*: proc (This:ptr IDWriteFactory7, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
                CreateFontFileReference*: proc (This:ptr IDWriteFactory7, path:ptr WCHAR, writetime:ptr FILETIME, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateCustomFontFileReference*: proc (This:ptr IDWriteFactory7, reference_key:pointer, key_size:UINT32, loader:ptr IDWriteFontFileLoader, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
                CreateFontFace*: proc (This:ptr IDWriteFactory7, facetype:DWRITE_FONT_FACE_TYPE, files_number:UINT32, font_files:ptr ptr IDWriteFontFile, index:UINT32, sim_flags:DWRITE_FONT_SIMULATIONS, font_face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
                CreateRenderingParams*: proc (This:ptr IDWriteFactory7, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateMonitorRenderingParams*: proc (This:ptr IDWriteFactory7, monitor:HMONITOR, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory7, gamma:FLOAT, enhancedContrast:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
                RegisterFontFileLoader*: proc (This:ptr IDWriteFactory7, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                UnregisterFontFileLoader*: proc (This:ptr IDWriteFactory7, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
                CreateTextFormat*: proc (This:ptr IDWriteFactory7, family_name:ptr WCHAR, collection:ptr IDWriteFontCollection, weight:DWRITE_FONT_WEIGHT, style:DWRITE_FONT_STYLE, stretch:DWRITE_FONT_STRETCH, size:FLOAT, locale:ptr WCHAR, format:ptr ptr IDWriteTextFormat): HRESULT {.stdcall.}
                CreateTypography*: proc (This:ptr IDWriteFactory7, typography:ptr ptr IDWriteTypography): HRESULT {.stdcall.}
                GetGdiInterop*: proc (This:ptr IDWriteFactory7, gdi_interop:ptr ptr IDWriteGdiInterop): HRESULT {.stdcall.}
                CreateTextLayout*: proc (This:ptr IDWriteFactory7, string:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, max_width:FLOAT, max_height:FLOAT, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateGdiCompatibleTextLayout*: proc (This:ptr IDWriteFactory7, string:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, layout_width:FLOAT, layout_height:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
                CreateEllipsisTrimmingSign*: proc (This:ptr IDWriteFactory7, format:ptr IDWriteTextFormat, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
                CreateTextAnalyzer*: proc (This:ptr IDWriteFactory7, analyzer:ptr ptr IDWriteTextAnalyzer): HRESULT {.stdcall.}
                CreateNumberSubstitution*: proc (This:ptr IDWriteFactory7, method1:DWRITE_NUMBER_SUBSTITUTION_METHOD, locale:ptr WCHAR, ignore_user_override:BOOL, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
                CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory7, glyph_run:ptr DWRITE_GLYPH_RUN, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE, measuring_mode:DWRITE_MEASURING_MODE, baseline_x:FLOAT, baseline_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                GetEudcFontCollection*: proc (This:ptr IDWriteFactory7, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
                IDWriteFactory1_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory7, gamma:FLOAT, enhcontrast:FLOAT, enhcontrast_grayscale:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams1): HRESULT {.stdcall.}
                GetSystemFontFallback*: proc (This:ptr IDWriteFactory7, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
                CreateFontFallbackBuilder*: proc (This:ptr IDWriteFactory7, fallbackbuilder:ptr ptr IDWriteFontFallbackBuilder): HRESULT {.stdcall.}
                TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory7, originX:FLOAT, originY:FLOAT, run:ptr DWRITE_GLYPH_RUN, rundescr:ptr DWRITE_GLYPH_RUN_DESCRIPTION, mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette_index:UINT32, colorlayers:ptr ptr IDWriteColorGlyphRunEnumerator): HRESULT {.stdcall.}
                IDWriteFactory2_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory7, gamma:FLOAT, contrast:FLOAT, grayscalecontrast:FLOAT, cleartypeLevel:FLOAT, pixelGeometry:DWRITE_PIXEL_GEOMETRY, renderingMode:DWRITE_RENDERING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams2): HRESULT {.stdcall.}
                IDWriteFactory2_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory7, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, renderingMode:DWRITE_RENDERING_MODE, measuringMode:DWRITE_MEASURING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, antialiasMode:DWRITE_TEXT_ANTIALIAS_MODE, originX:FLOAT, originY:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                IDWriteFactory3_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory7, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE1, measuring_mode:DWRITE_MEASURING_MODE, gridfit_mode:DWRITE_GRID_FIT_MODE, antialias_mode:DWRITE_TEXT_ANTIALIAS_MODE, origin_x:FLOAT, origin_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
                IDWriteFactory3_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory7, gamma:FLOAT, enhanced_contrast:FLOAT, grayscale_enhanced_contrast:FLOAT, cleartype_level:FLOAT, pixel_geometry:DWRITE_PIXEL_GEOMETRY, rendering_mode:DWRITE_RENDERING_MODE1, gridfit_mode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams3): HRESULT {.stdcall.}
                CreateFontFaceReference2*: proc (This:ptr IDWriteFactory7, file:ptr IDWriteFontFile, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                CreateFontFaceReference*: proc (This:ptr IDWriteFactory7, path:ptr WCHAR, writetime:ptr FILETIME, index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, reference:ptr ptr IDWriteFontFaceReference): HRESULT {.stdcall.}
                GetSystemFontSet*: proc (This:ptr IDWriteFactory7, fontset:ptr ptr IDWriteFontSet): HRESULT {.stdcall.}
                CreateFontSetBuilder*: proc (This:ptr IDWriteFactory7, builder:ptr ptr IDWriteFontSetBuilder): HRESULT {.stdcall.}
                CreateFontCollectionFromFontSet*: proc (This:ptr IDWriteFactory7, fontset:ptr IDWriteFontSet, collection:ptr ptr IDWriteFontCollection1): HRESULT {.stdcall.}
                IDWriteFactory3_GetSystemFontCollection*: proc (This:ptr IDWriteFactory7, include_downloadable:BOOL, collection:ptr ptr IDWriteFontCollection1, check_for_updates:BOOL): HRESULT {.stdcall.}
                GetFontDownloadQueue*: proc (This:ptr IDWriteFactory7, queue:ptr ptr IDWriteFontDownloadQueue): HRESULT {.stdcall.}
                IDWriteFactory4_TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory7, baseline_origin:D2D1_POINT_2F, run:ptr DWRITE_GLYPH_RUN, run_desc:ptr DWRITE_GLYPH_RUN_DESCRIPTION, desired_formats:DWRITE_GLYPH_IMAGE_FORMATS, measuring_mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette:UINT32, layers:ptr ptr IDWriteColorGlyphRunEnumerator1): HRESULT {.stdcall.}
                ComputeGlyphOrigins2*: proc (This:ptr IDWriteFactory7, run:ptr DWRITE_GLYPH_RUN, baseline_origin:D2D1_POINT_2F, origins:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
                ComputeGlyphOrigins*: proc (This:ptr IDWriteFactory7, run:ptr DWRITE_GLYPH_RUN, measuring_mode:DWRITE_MEASURING_MODE, baseline_origin:D2D1_POINT_2F, transform:ptr DWRITE_MATRIX, origins:ptr D2D1_POINT_2F): HRESULT {.stdcall.}
                IDWriteFactory5_CreateFontSetBuilder*: proc (This:ptr IDWriteFactory7, fontset_builder:ptr ptr IDWriteFontSetBuilder1): HRESULT {.stdcall.}
                CreateInMemoryFontFileLoader*: proc (This:ptr IDWriteFactory7, loader:ptr ptr IDWriteInMemoryFontFileLoader): HRESULT {.stdcall.}
                CreateHttpFontFileLoader*: proc (This:ptr IDWriteFactory7, referrer_url:ptr WCHAR, extra_headers:ptr WCHAR, loader:ptr ptr IDWriteRemoteFontFileLoader): HRESULT {.stdcall.}
                AnalyzeContainerType*: proc (This:ptr IDWriteFactory7, data:pointer, data_size:UINT32): DWRITE_CONTAINER_TYPE {.stdcall.}
                UnpackFontFile*: proc (This:ptr IDWriteFactory7, container_type:DWRITE_CONTAINER_TYPE, data:pointer, data_size:UINT32, stream:ptr ptr IDWriteFontFileStream): HRESULT {.stdcall.}
                IDWriteFactory6_CreateFontFaceReference*: proc (This:ptr IDWriteFactory7, file:ptr IDWriteFontFile, face_index:UINT32, simulations:DWRITE_FONT_SIMULATIONS, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_axis:UINT32, face_ref:ptr ptr IDWriteFontFaceReference1): HRESULT {.stdcall.}
                CreateFontResource*: proc (This:ptr IDWriteFactory7, file:ptr IDWriteFontFile, face_index:UINT32, resource:ptr ptr IDWriteFontResource): HRESULT {.stdcall.}
                IDWriteFactory6_GetSystemFontSet*: proc (This:ptr IDWriteFactory7, include_downloadable:BOOL, fontset:ptr ptr IDWriteFontSet1): HRESULT {.stdcall.}
                IDWriteFactory6_GetSystemFontCollection*: proc (This:ptr IDWriteFactory7, include_downloadable:BOOL, family_model:DWRITE_FONT_FAMILY_MODEL, collection:ptr ptr IDWriteFontCollection2): HRESULT {.stdcall.}
                IDWriteFactory6_CreateFontCollectionFromFontSet*: proc (This:ptr IDWriteFactory7, fontset:ptr IDWriteFontSet, family_model:DWRITE_FONT_FAMILY_MODEL, collection:ptr ptr IDWriteFontCollection2): HRESULT {.stdcall.}
                IDWriteFactory6_CreateFontSetBuilder*: proc (This:ptr IDWriteFactory7, builder:ptr ptr IDWriteFontSetBuilder2): HRESULT {.stdcall.}
                IDWriteFactory6_CreateTextFormat*: proc (This:ptr IDWriteFactory7, familyname:ptr WCHAR, collection:ptr IDWriteFontCollection, axis_values:ptr DWRITE_FONT_AXIS_VALUE, num_axis:UINT32, fontsize:FLOAT, localename:ptr WCHAR, format:ptr ptr IDWriteTextFormat3): HRESULT {.stdcall.}
                IDWriteFactory7_GetSystemFontSet*: proc (This:ptr IDWriteFactory7, include_downloadable:BOOL, fontset:ptr ptr IDWriteFontSet2): HRESULT {.stdcall.}
                IDWriteFactory7_GetSystemFontCollection*: proc (This:ptr IDWriteFactory7, include_downloadable:BOOL, family_model:DWRITE_FONT_FAMILY_MODEL, collection:ptr ptr IDWriteFontCollection3): HRESULT {.stdcall.}
    IDWriteFactory7* = object
        lpVtbl*: ptr IDWriteFactory7Vtbl

