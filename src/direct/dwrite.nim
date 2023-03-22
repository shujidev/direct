
import winim/lean
import dcommon

type IDWriteGeometrySink* = object #is a typedef of the ID2D1SimplifiedGeometrySink (can be casted)
#~ type IDWriteGeometrySink* = ID2D1SimplifiedGeometrySink #is a typedef of the ID2D1SimplifiedGeometrySink (can be casted)

type
  DWRITE_FACTORY_TYPE* = enum
    DWRITE_FACTORY_TYPE_SHARED = 0, DWRITE_FACTORY_TYPE_ISOLATED = 1
  DWRITE_FONT_FILE_TYPE* = enum
    DWRITE_FONT_FILE_TYPE_UNKNOWN = 0, DWRITE_FONT_FILE_TYPE_CFF = 1,
    DWRITE_FONT_FILE_TYPE_TRUETYPE = 2,
    DWRITE_FONT_FILE_TYPE_OPENTYPE_COLLECTION = 3,
    DWRITE_FONT_FILE_TYPE_TYPE1_PFM = 4, DWRITE_FONT_FILE_TYPE_TYPE1_PFB = 5,
    DWRITE_FONT_FILE_TYPE_VECTOR = 6, DWRITE_FONT_FILE_TYPE_BITMAP = 7
  DWRITE_FONT_FACE_TYPE* = enum
    DWRITE_FONT_FACE_TYPE_CFF = 0, DWRITE_FONT_FACE_TYPE_TRUETYPE = 1,
    DWRITE_FONT_FACE_TYPE_OPENTYPE_COLLECTION = 2, DWRITE_FONT_FACE_TYPE_TYPE1 = 3,
    DWRITE_FONT_FACE_TYPE_VECTOR = 4, DWRITE_FONT_FACE_TYPE_BITMAP = 5,
    DWRITE_FONT_FACE_TYPE_UNKNOWN = 6, DWRITE_FONT_FACE_TYPE_RAW_CFF = 7
  DWRITE_FONT_WEIGHT* = enum
    DWRITE_FONT_WEIGHT_THIN = 100, DWRITE_FONT_WEIGHT_EXTRA_LIGHT = 200,
    DWRITE_FONT_WEIGHT_LIGHT = 300, DWRITE_FONT_WEIGHT_SEMI_LIGHT = 350,
    DWRITE_FONT_WEIGHT_NORMAL = 400, DWRITE_FONT_WEIGHT_MEDIUM = 500,
    DWRITE_FONT_WEIGHT_DEMI_BOLD = 600, DWRITE_FONT_WEIGHT_BOLD = 700,
    DWRITE_FONT_WEIGHT_EXTRA_BOLD = 800, DWRITE_FONT_WEIGHT_BLACK = 900,
    DWRITE_FONT_WEIGHT_EXTRA_BLACK = 950
  DWRITE_FONT_STRETCH* = enum
    DWRITE_FONT_STRETCH_UNDEFINED = 0, DWRITE_FONT_STRETCH_ULTRA_CONDENSED = 1,
    DWRITE_FONT_STRETCH_EXTRA_CONDENSED = 2, DWRITE_FONT_STRETCH_CONDENSED = 3,
    DWRITE_FONT_STRETCH_SEMI_CONDENSED = 4, DWRITE_FONT_STRETCH_NORMAL = 5,
    DWRITE_FONT_STRETCH_SEMI_EXPANDED = 6, DWRITE_FONT_STRETCH_EXPANDED = 7,
    DWRITE_FONT_STRETCH_EXTRA_EXPANDED = 8, DWRITE_FONT_STRETCH_ULTRA_EXPANDED = 9
  DWRITE_FONT_STYLE* = enum
    DWRITE_FONT_STYLE_NORMAL = 0, DWRITE_FONT_STYLE_OBLIQUE = 1,
    DWRITE_FONT_STYLE_ITALIC = 2
  DWRITE_INFORMATIONAL_STRING_ID* = enum
    DWRITE_INFORMATIONAL_STRING_NONE = 0,
    DWRITE_INFORMATIONAL_STRING_COPYRIGHT_NOTICE = 1,
    DWRITE_INFORMATIONAL_STRING_VERSION_STRINGS = 2,
    DWRITE_INFORMATIONAL_STRING_TRADEMARK = 3,
    DWRITE_INFORMATIONAL_STRING_MANUFACTURER = 4,
    DWRITE_INFORMATIONAL_STRING_DESIGNER = 5,
    DWRITE_INFORMATIONAL_STRING_DESIGNER_URL = 6,
    DWRITE_INFORMATIONAL_STRING_DESCRIPTION = 7,
    DWRITE_INFORMATIONAL_STRING_FONT_VENDOR_URL = 8,
    DWRITE_INFORMATIONAL_STRING_LICENSE_DESCRIPTION = 9,
    DWRITE_INFORMATIONAL_STRING_LICENSE_INFO_URL = 10,
    DWRITE_INFORMATIONAL_STRING_WIN32_FAMILY_NAMES = 11,
    DWRITE_INFORMATIONAL_STRING_WIN32_SUBFAMILY_NAMES = 12,
    DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_FAMILY_NAMES = 13,
    DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_SUBFAMILY_NAMES = 14,
    DWRITE_INFORMATIONAL_STRING_SAMPLE_TEXT = 15,
    DWRITE_INFORMATIONAL_STRING_FULL_NAME = 16,
    DWRITE_INFORMATIONAL_STRING_POSTSCRIPT_NAME = 17,
    DWRITE_INFORMATIONAL_STRING_POSTSCRIPT_CID_NAME = 18,
    DWRITE_INFORMATIONAL_STRING_WEIGHT_STRETCH_STYLE_FAMILY_NAME = 19,
    DWRITE_INFORMATIONAL_STRING_DESIGN_SCRIPT_LANGUAGE_TAG = 20,
    DWRITE_INFORMATIONAL_STRING_SUPPORTED_SCRIPT_LANGUAGE_TAG = 21
  DWRITE_FONT_SIMULATIONS* = enum
    DWRITE_FONT_SIMULATIONS_NONE = 0, DWRITE_FONT_SIMULATIONS_BOLD = 1,
    DWRITE_FONT_SIMULATIONS_OBLIQUE = 2
  DWRITE_PIXEL_GEOMETRY* = enum
    DWRITE_PIXEL_GEOMETRY_FLAT = 0, DWRITE_PIXEL_GEOMETRY_RGB = 1,
    DWRITE_PIXEL_GEOMETRY_BGR = 2
  DWRITE_RENDERING_MODE* = enum
    DWRITE_RENDERING_MODE_DEFAULT = 0, DWRITE_RENDERING_MODE_ALIASED = 1,
    DWRITE_RENDERING_MODE_GDI_CLASSIC = 2, DWRITE_RENDERING_MODE_GDI_NATURAL = 3,
    DWRITE_RENDERING_MODE_NATURAL = 4, DWRITE_RENDERING_MODE_NATURAL_SYMMETRIC = 5,
    DWRITE_RENDERING_MODE_OUTLINE = 6
  DWRITE_TEXT_ALIGNMENT* = enum
    DWRITE_TEXT_ALIGNMENT_LEADING = 0, DWRITE_TEXT_ALIGNMENT_TRAILING = 1,
    DWRITE_TEXT_ALIGNMENT_CENTER = 2, DWRITE_TEXT_ALIGNMENT_JUSTIFIED = 3
  DWRITE_PARAGRAPH_ALIGNMENT* = enum
    DWRITE_PARAGRAPH_ALIGNMENT_NEAR = 0, DWRITE_PARAGRAPH_ALIGNMENT_FAR = 1,
    DWRITE_PARAGRAPH_ALIGNMENT_CENTER = 2
  DWRITE_WORD_WRAPPING* = enum
    DWRITE_WORD_WRAPPING_WRAP = 0, DWRITE_WORD_WRAPPING_NO_WRAP = 1,
    DWRITE_WORD_WRAPPING_EMERGENCY_BREAK = 2, DWRITE_WORD_WRAPPING_WHOLE_WORD = 3,
    DWRITE_WORD_WRAPPING_CHARACTER = 4
  DWRITE_READING_DIRECTION* = enum
    DWRITE_READING_DIRECTION_LEFT_TO_RIGHT = 0,
    DWRITE_READING_DIRECTION_RIGHT_TO_LEFT = 1,
    DWRITE_READING_DIRECTION_TOP_TO_BOTTOM = 2,
    DWRITE_READING_DIRECTION_BOTTOM_TO_TOP = 3
  DWRITE_FLOW_DIRECTION* = enum
    DWRITE_FLOW_DIRECTION_TOP_TO_BOTTOM = 0,
    DWRITE_FLOW_DIRECTION_BOTTOM_TO_TOP = 1,
    DWRITE_FLOW_DIRECTION_LEFT_TO_RIGHT = 2,
    DWRITE_FLOW_DIRECTION_RIGHT_TO_LEFT = 3
  DWRITE_TRIMMING_GRANULARITY* = enum
    DWRITE_TRIMMING_GRANULARITY_NONE = 0,
    DWRITE_TRIMMING_GRANULARITY_CHARACTER = 1, DWRITE_TRIMMING_GRANULARITY_WORD = 2
  DWRITE_BREAK_CONDITION* = enum
    DWRITE_BREAK_CONDITION_NEUTRAL = 0, DWRITE_BREAK_CONDITION_CAN_BREAK = 1,
    DWRITE_BREAK_CONDITION_MAY_NOT_BREAK = 2, DWRITE_BREAK_CONDITION_MUST_BREAK = 3
  DWRITE_LINE_SPACING_METHOD* = enum
    DWRITE_LINE_SPACING_METHOD_DEFAULT = 0, DWRITE_LINE_SPACING_METHOD_UNIFORM = 1,
    DWRITE_LINE_SPACING_METHOD_PROPORTIONAL = 2
  DWRITE_FONT_FEATURE_TAG* = enum
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_10 = 0x30317373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_20 = 0x30327373,
    DWRITE_FONT_FEATURE_TAG_JIS90_FORMS = 0x3039706a,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_1 = 0x31307373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_11 = 0x31317373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_2 = 0x32307373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_12 = 0x32317373,
    DWRITE_FONT_FEATURE_TAG_VERTICAL_ALTERNATES_AND_ROTATION = 0x32747276,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_3 = 0x33307373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_13 = 0x33317373,
    DWRITE_FONT_FEATURE_TAG_JIS83_FORMS = 0x3338706a,
    DWRITE_FONT_FEATURE_TAG_JIS04_FORMS = 0x3430706a,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_4 = 0x34307373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_14 = 0x34317373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_5 = 0x35307373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_15 = 0x35317373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_6 = 0x36307373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_16 = 0x36317373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_7 = 0x37307373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_17 = 0x37317373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_8 = 0x38307373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_18 = 0x38317373,
    DWRITE_FONT_FEATURE_TAG_JIS78_FORMS = 0x3837706a,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_9 = 0x39307373,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_19 = 0x39317373,
    DWRITE_FONT_FEATURE_TAG_STANDARD_LIGATURES = 0x6167696c,
    DWRITE_FONT_FEATURE_TAG_HORIZONTAL_KANA_ALTERNATES = 0x616e6b68,
    DWRITE_FONT_FEATURE_TAG_FRACTIONS = 0x63617266,
    DWRITE_FONT_FEATURE_TAG_UNICASE = 0x63696e75,
    DWRITE_FONT_FEATURE_TAG_PETITE_CAPITALS_FROM_CAPITALS = 0x63703263,
    DWRITE_FONT_FEATURE_TAG_ALTERNATIVE_FRACTIONS = 0x63726661,
    DWRITE_FONT_FEATURE_TAG_SMALL_CAPITALS_FROM_CAPITALS = 0x63733263,
    DWRITE_FONT_FEATURE_TAG_TRADITIONAL_FORMS = 0x64617274,
    DWRITE_FONT_FEATURE_TAG_FULL_WIDTH = 0x64697766,
    DWRITE_FONT_FEATURE_TAG_HALF_WIDTH = 0x64697768,
    DWRITE_FONT_FEATURE_TAG_PROPORTIONAL_WIDTHS = 0x64697770,
    DWRITE_FONT_FEATURE_TAG_QUARTER_WIDTHS = 0x64697771,
    DWRITE_FONT_FEATURE_TAG_THIRD_WIDTHS = 0x64697774,
    DWRITE_FONT_FEATURE_TAG_CASE_SENSITIVE_FORMS = 0x65736163,
    DWRITE_FONT_FEATURE_TAG_HALF_FORMS = 0x666c6168,
    DWRITE_FONT_FEATURE_TAG_SCIENTIFIC_INFERIORS = 0x666e6973,
    DWRITE_FONT_FEATURE_TAG_CONTEXTUAL_LIGATURES = 0x67696c63,
    DWRITE_FONT_FEATURE_TAG_DISCRETIONARY_LIGATURES = 0x67696c64,
    DWRITE_FONT_FEATURE_TAG_HISTORICAL_LIGATURES = 0x67696c68,
    DWRITE_FONT_FEATURE_TAG_REQUIRED_LIGATURES = 0x67696c72,
    DWRITE_FONT_FEATURE_TAG_SWASH = 0x68737773,
    DWRITE_FONT_FEATURE_TAG_CONTEXTUAL_SWASH = 0x68777363,
    DWRITE_FONT_FEATURE_TAG_NLC_KANJI_FORMS = 0x6b636c6e,
    DWRITE_FONT_FEATURE_TAG_MARK_TO_MARK_POSITIONING = 0x6b6d6b6d,
    DWRITE_FONT_FEATURE_TAG_MARK_POSITIONING = 0x6b72616d,
    DWRITE_FONT_FEATURE_TAG_MATHEMATICAL_GREEK = 0x6b72676d,
    DWRITE_FONT_FEATURE_TAG_LOCALIZED_FORMS = 0x6c636f6c,
    DWRITE_FONT_FEATURE_TAG_SIMPLIFIED_FORMS = 0x6c706d73,
    DWRITE_FONT_FEATURE_TAG_TITLING = 0x6c746974,
    DWRITE_FONT_FEATURE_TAG_TRADITIONAL_NAME_FORMS = 0x6d616e74,
    DWRITE_FONT_FEATURE_TAG_LINING_FIGURES = 0x6d756e6c,
    DWRITE_FONT_FEATURE_TAG_OLD_STYLE_FIGURES = 0x6d756e6f,
    DWRITE_FONT_FEATURE_TAG_PROPORTIONAL_FIGURES = 0x6d756e70,
    DWRITE_FONT_FEATURE_TAG_TABULAR_FIGURES = 0x6d756e74,
    DWRITE_FONT_FEATURE_TAG_ORDINALS = 0x6e64726f,
    DWRITE_FONT_FEATURE_TAG_HALANT_FORMS = 0x6e6c6168,
    DWRITE_FONT_FEATURE_TAG_KERNING = 0x6e72656b,
    DWRITE_FONT_FEATURE_TAG_HOJO_KANJI_FORMS = 0x6f6a6f68,
    DWRITE_FONT_FEATURE_TAG_SLASHED_ZERO = 0x6f72657a,
    DWRITE_FONT_FEATURE_TAG_PETITE_CAPITALS = 0x70616370,
    DWRITE_FONT_FEATURE_TAG_SMALL_CAPITALS = 0x70636d73,
    DWRITE_FONT_FEATURE_TAG_GLYPH_COMPOSITION_DECOMPOSITION = 0x706d6363,
    DWRITE_FONT_FEATURE_TAG_CAPITAL_SPACING = 0x70737063,
    DWRITE_FONT_FEATURE_TAG_SUBSCRIPT = 0x73627573,
    DWRITE_FONT_FEATURE_TAG_SUPERSCRIPT = 0x73707573,
    DWRITE_FONT_FEATURE_TAG_CURSIVE_POSITIONING = 0x73727563,
    DWRITE_FONT_FEATURE_TAG_CONTEXTUAL_ALTERNATES = 0x746c6163,
    DWRITE_FONT_FEATURE_TAG_ALTERNATE_HALF_WIDTH = 0x746c6168,
    DWRITE_FONT_FEATURE_TAG_ALTERNATE_ANNOTATION_FORMS = 0x746c616e,
    DWRITE_FONT_FEATURE_TAG_PROPORTIONAL_ALTERNATE_WIDTH = 0x746c6170,
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_ALTERNATES = 0x746c6173,
    DWRITE_FONT_FEATURE_TAG_DEFAULT = 0x746c6664,
    DWRITE_FONT_FEATURE_TAG_EXPERT_FORMS = 0x74707865,
    DWRITE_FONT_FEATURE_TAG_VERTICAL_WRITING = 0x74726576,
    DWRITE_FONT_FEATURE_TAG_HISTORICAL_FORMS = 0x74736968,
    DWRITE_FONT_FEATURE_TAG_RUBY_NOTATION_FORMS = 0x79627572
  DWRITE_SCRIPT_SHAPES* = enum
    DWRITE_SCRIPT_SHAPES_DEFAULT = 0, DWRITE_SCRIPT_SHAPES_NO_VISUAL = 1
  DWRITE_NUMBER_SUBSTITUTION_METHOD* = enum
    DWRITE_NUMBER_SUBSTITUTION_METHOD_FROM_CULTURE = 0,
    DWRITE_NUMBER_SUBSTITUTION_METHOD_CONTEXTUAL = 1,
    DWRITE_NUMBER_SUBSTITUTION_METHOD_NONE = 2,
    DWRITE_NUMBER_SUBSTITUTION_METHOD_NATIONAL = 3,
    DWRITE_NUMBER_SUBSTITUTION_METHOD_TRADITIONAL = 4
  DWRITE_TEXTURE_TYPE* = enum
    DWRITE_TEXTURE_ALIASED_1x1 = 0, DWRITE_TEXTURE_CLEARTYPE_3x1 = 1
  DWRITE_FONT_METRICS* {.bycopy.} = object
    designUnitsPerEm*: UINT16
    ascent*: UINT16
    descent*: UINT16
    lineGap*: INT16
    capHeight*: UINT16
    xHeight*: UINT16
    underlinePosition*: INT16
    underlineThickness*: UINT16
    strikethroughPosition*: INT16
    strikethroughThickness*: UINT16

  DWRITE_GLYPH_METRICS* {.bycopy.} = object
    leftSideBearing*: INT32
    advanceWidth*: UINT32
    rightSideBearing*: INT32
    topSideBearing*: INT32
    advanceHeight*: UINT32
    bottomSideBearing*: INT32
    verticalOriginY*: INT32

  DWRITE_GLYPH_OFFSET* {.bycopy.} = object
    advanceOffset*: FLOAT
    ascenderOffset*: FLOAT

  DWRITE_MATRIX* {.bycopy.} = object
    m11*: FLOAT
    m12*: FLOAT
    m21*: FLOAT
    m22*: FLOAT
    dx*: FLOAT
    dy*: FLOAT

  DWRITE_TRIMMING* {.bycopy.} = object
    granularity*: DWRITE_TRIMMING_GRANULARITY
    delimiter*: UINT32
    delimiterCount*: UINT32

  DWRITE_UNDERLINE* {.bycopy.} = object
    width*: FLOAT
    thickness*: FLOAT
    offset*: FLOAT
    runHeight*: FLOAT
    readingDirection*: DWRITE_READING_DIRECTION
    flowDirection*: DWRITE_FLOW_DIRECTION
    localeName*: ptr WCHAR
    measuringMode*: DWRITE_MEASURING_MODE

  DWRITE_STRIKETHROUGH* {.bycopy.} = object
    width*: FLOAT
    thickness*: FLOAT
    offset*: FLOAT
    readingDirection*: DWRITE_READING_DIRECTION
    flowDirection*: DWRITE_FLOW_DIRECTION
    localeName*: ptr WCHAR
    measuringMode*: DWRITE_MEASURING_MODE

  DWRITE_INLINE_OBJECT_METRICS* {.bycopy.} = object
    width*: FLOAT
    height*: FLOAT
    baseline*: FLOAT
    supportsSideways*: WINBOOL

  DWRITE_OVERHANG_METRICS* {.bycopy.} = object
    left*: FLOAT
    top*: FLOAT
    right*: FLOAT
    bottom*: FLOAT

  DWRITE_FONT_FEATURE* {.bycopy.} = object
    nameTag*: DWRITE_FONT_FEATURE_TAG
    parameter*: UINT32

  DWRITE_TEXT_RANGE* {.bycopy.} = object
    startPosition*: UINT32
    length*: UINT32

  DWRITE_LINE_METRICS* {.bycopy.} = object
    length*: UINT32
    trailingWhitespaceLength*: UINT32
    newlineLength*: UINT32
    height*: FLOAT
    baseline*: FLOAT
    isTrimmed*: WINBOOL

  DWRITE_TEXT_METRICS* {.bycopy.} = object
    left*: FLOAT
    top*: FLOAT
    width*: FLOAT
    widthIncludingTrailingWhitespace*: FLOAT
    height*: FLOAT
    layoutWidth*: FLOAT
    layoutHeight*: FLOAT
    maxBidiReorderingDepth*: UINT32
    lineCount*: UINT32

  DWRITE_CLUSTER_METRICS* {.bycopy.} = object
    width*: FLOAT
    length*: UINT16
    canWrapLineAfter* {.bitsize: 1.}: UINT16
    isWhitespace* {.bitsize: 1.}: UINT16
    isNewline* {.bitsize: 1.}: UINT16
    isSoftHyphen* {.bitsize: 1.}: UINT16
    isRightToLeft* {.bitsize: 1.}: UINT16
    padding* {.bitsize: 11.}: UINT16

  DWRITE_HIT_TEST_METRICS* {.bycopy.} = object
    textPosition*: UINT32
    length*: UINT32
    left*: FLOAT
    top*: FLOAT
    width*: FLOAT
    height*: FLOAT
    bidiLevel*: UINT32
    isText*: WINBOOL
    isTrimmed*: WINBOOL

  DWRITE_SCRIPT_ANALYSIS* {.bycopy.} = object
    script*: UINT16
    shapes*: DWRITE_SCRIPT_SHAPES

  DWRITE_LINE_BREAKPOINT* {.bycopy.} = object
    breakConditionBefore* {.bitsize: 2.}: UINT8
    breakConditionAfter* {.bitsize: 2.}: UINT8
    isWhitespace* {.bitsize: 1.}: UINT8
    isSoftHyphen* {.bitsize: 1.}: UINT8
    padding* {.bitsize: 2.}: UINT8

  DWRITE_TYPOGRAPHIC_FEATURES* {.bycopy.} = object
    features*: ptr DWRITE_FONT_FEATURE
    featureCount*: UINT32

  DWRITE_SHAPING_TEXT_PROPERTIES* {.bycopy.} = object
    isShapedAlone* {.bitsize: 1.}: UINT16
    reserved1* {.bitsize: 1.}: UINT16
    canBreakShapingAfter* {.bitsize: 1.}: UINT16
    reserved* {.bitsize: 13.}: UINT16

  DWRITE_SHAPING_GLYPH_PROPERTIES* {.bycopy.} = object
    justification* {.bitsize: 4.}: UINT16
    isClusterStart* {.bitsize: 1.}: UINT16
    isDiacritic* {.bitsize: 1.}: UINT16
    isZeroWidthSpace* {.bitsize: 1.}: UINT16
    reserved* {.bitsize: 9.}: UINT16



const
  DWRITE_FONT_FILE_TYPE_TRUETYPE_COLLECTION* = DWRITE_FONT_FILE_TYPE_OPENTYPE_COLLECTION

const
  DWRITE_FONT_FACE_TYPE_TRUETYPE_COLLECTION* = DWRITE_FONT_FACE_TYPE_OPENTYPE_COLLECTION

const
  DWRITE_FONT_WEIGHT_ULTRA_LIGHT = DWRITE_FONT_WEIGHT_EXTRA_LIGHT
  DWRITE_FONT_WEIGHT_REGULAR = DWRITE_FONT_WEIGHT_NORMAL
  DWRITE_FONT_WEIGHT_SEMI_BOLD = DWRITE_FONT_WEIGHT_DEMI_BOLD
  DWRITE_FONT_WEIGHT_ULTRA_BOLD = DWRITE_FONT_WEIGHT_EXTRA_BOLD
  DWRITE_FONT_WEIGHT_HEAVY = DWRITE_FONT_WEIGHT_BLACK
  DWRITE_FONT_WEIGHT_ULTRA_BLACK = DWRITE_FONT_WEIGHT_EXTRA_BLACK

const
  DWRITE_FONT_STRETCH_MEDIUM = DWRITE_FONT_STRETCH_NORMAL


const
  DWRITE_INFORMATIONAL_STRING_PREFERRED_FAMILY_NAMES* = DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_FAMILY_NAMES
  DWRITE_INFORMATIONAL_STRING_PREFERRED_SUBFAMILY_NAMES* = DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_SUBFAMILY_NAMES
  DWRITE_INFORMATIONAL_STRING_WWS_FAMILY_NAME* = DWRITE_INFORMATIONAL_STRING_WEIGHT_STRETCH_STYLE_FAMILY_NAME


const
  DWRITE_RENDERING_MODE_CLEARTYPE_GDI_CLASSIC* = DWRITE_RENDERING_MODE_GDI_CLASSIC
  DWRITE_RENDERING_MODE_CLEARTYPE_GDI_NATURAL* = DWRITE_RENDERING_MODE_GDI_NATURAL
  DWRITE_RENDERING_MODE_CLEARTYPE_NATURAL* = DWRITE_RENDERING_MODE_NATURAL
  DWRITE_RENDERING_MODE_CLEARTYPE_NATURAL_SYMMETRIC* = DWRITE_RENDERING_MODE_NATURAL_SYMMETRIC

const IID_IDWriteFontFileStream* = IID(Data1:0x6d4865fe'i32, Data2:0x0ab8, Data3:0x4d91, Data4:[0x8f'u8, 0x62, 0x5d, 0xd6, 0xbe, 0x34, 0xa3, 0xe0])
const IID_IDWriteFontFileLoader* = IID(Data1:0x727cad4e'i32, Data2:0xd6af, Data3:0x4c9e, Data4:[0x8a'u8, 0x08, 0xd6, 0x95, 0xb1, 0x1c, 0xaa, 0x49])
const IID_IDWriteLocalFontFileLoader* = IID(Data1:0xb2d9f3ec'i32, Data2:0xc9fe, Data3:0x4a11, Data4:[0xa2'u8, 0xec, 0xd8, 0x62, 0x08, 0xf7, 0xc0, 0xa2])
const IID_IDWriteFontFile* = IID(Data1:0x739d886a'i32, Data2:0xcef5, Data3:0x47dc, Data4:[0x87'u8, 0x69, 0x1a, 0x8b, 0x41, 0xbe, 0xbb, 0xb0])
const IID_IDWriteFontFileEnumerator* = IID(Data1:0x72755049'i32, Data2:0x5ff7, Data3:0x435d, Data4:[0x83'u8, 0x48, 0x4b, 0xe9, 0x7c, 0xfa, 0x6c, 0x7c])
const IID_IDWriteFontCollectionLoader* = IID(Data1:0xcca920e4'i32, Data2:0x52f0, Data3:0x492b, Data4:[0xbf'u8, 0xa8, 0x29, 0xc7, 0x2e, 0xe0, 0xa4, 0x68])
const IID_IDWriteLocalizedStrings* = IID(Data1:0x08256209'i32, Data2:0x099a, Data3:0x4b34, Data4:[0xb8'u8, 0x6d, 0xc2, 0x2b, 0x11, 0x0e, 0x77, 0x71])
const IID_IDWriteRenderingParams* = IID(Data1:0x2f0da53a'i32, Data2:0x2add, Data3:0x47cd, Data4:[0x82'u8, 0xee, 0xd9, 0xec, 0x34, 0x68, 0x8e, 0x75])
const IID_IDWriteFontFace* = IID(Data1:0x5f49804d'i32, Data2:0x7024, Data3:0x4d43, Data4:[0xbf'u8, 0xa9, 0xd2, 0x59, 0x84, 0xf5, 0x38, 0x49])
const IID_IDWriteFont* = IID(Data1:0xacd16696'i32, Data2:0x8c14, Data3:0x4f5d, Data4:[0x87'u8, 0x7e, 0xfe, 0x3f, 0xc1, 0xd3, 0x27, 0x37])
const IID_IDWriteFontList* = IID(Data1:0x1a0d8438'i32, Data2:0x1d97, Data3:0x4ec1, Data4:[0xae'u8, 0xf9, 0xa2, 0xfb, 0x86, 0xed, 0x6a, 0xcb])
const IID_IDWriteFontFamily* = IID(Data1:0xda20d8ef'i32, Data2:0x812a, Data3:0x4c43, Data4:[0x98'u8, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xdd])
const IID_IDWriteFontCollection* = IID(Data1:0xa84cee02'i32, Data2:0x3eea, Data3:0x4eee, Data4:[0xa8'u8, 0x27, 0x87, 0xc1, 0xa0, 0x2a, 0x0f, 0xcc])
const IID_IDWritePixelSnapping* = IID(Data1:0xeaf3a2da'i32, Data2:0xecf4, Data3:0x4d24, Data4:[0xb6'u8, 0x44, 0xb3, 0x4f, 0x68, 0x42, 0x02, 0x4b])
const IID_IDWriteTextRenderer* = IID(Data1:0xef8a8135'i32, Data2:0x5cc6, Data3:0x45fe, Data4:[0x88'u8, 0x25, 0xc5, 0xa0, 0x72, 0x4e, 0xb8, 0x19])
const IID_IDWriteInlineObject* = IID(Data1:0x8339fde3'i32, Data2:0x106f, Data3:0x47ab, Data4:[0x83'u8, 0x73, 0x1c, 0x62, 0x95, 0xeb, 0x10, 0xb3])
const IID_IDWriteTextFormat* = IID(Data1:0x9c906818'i32, Data2:0x31d7, Data3:0x4fd3, Data4:[0xa1'u8, 0x51, 0x7c, 0x5e, 0x22, 0x5d, 0xb5, 0x5a])
const IID_IDWriteTypography* = IID(Data1:0x55f1112b'i32, Data2:0x1dc2, Data3:0x4b3c, Data4:[0x95'u8, 0x41, 0xf4, 0x68, 0x94, 0xed, 0x85, 0xb6])
const IID_IDWriteBitmapRenderTarget* = IID(Data1:0x5e5a32a3'i32, Data2:0x8dff, Data3:0x4773, Data4:[0x9f'u8, 0xf6, 0x06, 0x96, 0xea, 0xb7, 0x72, 0x67])
const IID_IDWriteGdiInterop* = IID(Data1:0x1edd9491'i32, Data2:0x9853, Data3:0x4299, Data4:[0x89'u8, 0x8f, 0x64, 0x32, 0x98, 0x3b, 0x6f, 0x3a])
const IID_IDWriteTextLayout* = IID(Data1:0x53737037'i32, Data2:0x6d14, Data3:0x410b, Data4:[0x9b'u8, 0xfe, 0x0b, 0x18, 0x2b, 0xb7, 0x09, 0x61])
const IID_IDWriteNumberSubstitution* = IID(Data1:0x14885cc9'i32, Data2:0xbab0, Data3:0x4f90, Data4:[0xb6'u8, 0xed, 0x5c, 0x36, 0x6a, 0x2c, 0xd0, 0x3d])
const IID_IDWriteTextAnalysisSource* = IID(Data1:0x688e1a58'i32, Data2:0x5094, Data3:0x47c8, Data4:[0xad'u8, 0xc8, 0xfb, 0xce, 0xa6, 0x0a, 0xe9, 0x2b])
const IID_IDWriteTextAnalysisSink* = IID(Data1:0x5810cd44'i32, Data2:0x0ca0, Data3:0x4701, Data4:[0xb3'u8, 0xfa, 0xbe, 0xc5, 0x18, 0x2a, 0xe4, 0xf6])
const IID_IDWriteTextAnalyzer* = IID(Data1:0xb7e6163e'i32, Data2:0x7f46, Data3:0x43b4, Data4:[0x84'u8, 0xb3, 0xe4, 0xe6, 0x24, 0x9c, 0x36, 0x5d])
const IID_IDWriteGlyphRunAnalysis* = IID(Data1:0x7d97dbf7'i32, Data2:0xe085, Data3:0x42d4, Data4:[0x81'u8, 0xe3, 0x6a, 0x88, 0x3b, 0xde, 0xd1, 0x18])
const IID_IDWriteFactory* = IID(Data1:0xb859ee5a'i32, Data2:0xd838, Data3:0x4b5b, Data4:[0xa2'u8, 0xe8, 0x1a, 0xdc, 0x7d, 0x93, 0xdb, 0x48])
type
    DWRITE_GLYPH_RUN* {.bycopy.} = object
        fontFace*: ptr IDWriteFontFace
        fontEmSize*: FLOAT
        glyphCount*: UINT32
        glyphIndices*: ptr UINT16
        glyphAdvances*: ptr FLOAT
        glyphOffsets*: ptr DWRITE_GLYPH_OFFSET
        isSideways*: WINBOOL
        bidiLevel*: UINT32
    DWRITE_GLYPH_RUN_DESCRIPTION* {.bycopy.} = object
        localeName*: ptr WCHAR
        string*: ptr WCHAR
        stringLength*: UINT32
        clusterMap*: ptr UINT16
        textPosition*: UINT32
        
    IDWriteFontFileStreamVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFileStream, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFileStream): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFileStream): ULONG {.stdcall.}
        ReadFileFragment*: proc (This:ptr IDWriteFontFileStream, fragment_start:ptr pointer, offset:UINT64, fragment_size:UINT64, fragment_context:ptr pointer): HRESULT {.stdcall.}
        ReleaseFileFragment*: proc (This:ptr IDWriteFontFileStream, fragment_context:pointer) {.stdcall.}
        GetFileSize*: proc (This:ptr IDWriteFontFileStream, size:ptr UINT64): HRESULT {.stdcall.}
        GetLastWriteTime*: proc (This:ptr IDWriteFontFileStream, last_writetime:ptr UINT64): HRESULT {.stdcall.}
    IDWriteFontFileStream* = object
        lpVtbl*: ptr IDWriteFontFileStreamVtbl
    IDWriteFontFileLoaderVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFileLoader, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFileLoader): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFileLoader): ULONG {.stdcall.}
        CreateStreamFromKey*: proc (This:ptr IDWriteFontFileLoader, key:pointer, key_size:UINT32, stream:ptr ptr IDWriteFontFileStream): HRESULT {.stdcall.}
    IDWriteFontFileLoader* = object
        lpVtbl*: ptr IDWriteFontFileLoaderVtbl
    IDWriteLocalFontFileLoaderVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteLocalFontFileLoader, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteLocalFontFileLoader): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteLocalFontFileLoader): ULONG {.stdcall.}
        CreateStreamFromKey*: proc (This:ptr IDWriteLocalFontFileLoader, key:pointer, key_size:UINT32, stream:ptr ptr IDWriteFontFileStream): HRESULT {.stdcall.}
        GetFilePathLengthFromKey*: proc (This:ptr IDWriteLocalFontFileLoader, key:pointer, key_size:UINT32, length:ptr UINT32): HRESULT {.stdcall.}
        GetFilePathFromKey*: proc (This:ptr IDWriteLocalFontFileLoader, key:pointer, key_size:UINT32, path:ptr WCHAR, length:UINT32): HRESULT {.stdcall.}
        GetLastWriteTimeFromKey*: proc (This:ptr IDWriteLocalFontFileLoader, key:pointer, key_size:UINT32, writetime:ptr FILETIME): HRESULT {.stdcall.}
    IDWriteLocalFontFileLoader* = object
        lpVtbl*: ptr IDWriteLocalFontFileLoaderVtbl
    IDWriteFontFileVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFile, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFile): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFile): ULONG {.stdcall.}
        GetReferenceKey*: proc (This:ptr IDWriteFontFile, key:ptr pointer, key_size:ptr UINT32): HRESULT {.stdcall.}
        GetLoader*: proc (This:ptr IDWriteFontFile, loader:ptr ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
        Analyze*: proc (This:ptr IDWriteFontFile, is_supported_fonttype:ptr BOOL, file_type:ptr DWRITE_FONT_FILE_TYPE, face_type:ptr DWRITE_FONT_FACE_TYPE, faces_num:ptr UINT32): HRESULT {.stdcall.}
    IDWriteFontFile* = object
        lpVtbl*: ptr IDWriteFontFileVtbl
    IDWriteFontFileEnumeratorVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFileEnumerator, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFileEnumerator): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFileEnumerator): ULONG {.stdcall.}
        MoveNext*: proc (This:ptr IDWriteFontFileEnumerator, has_current_file:ptr BOOL): HRESULT {.stdcall.}
        GetCurrentFontFile*: proc (This:ptr IDWriteFontFileEnumerator, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
    IDWriteFontFileEnumerator* = object
        lpVtbl*: ptr IDWriteFontFileEnumeratorVtbl
    IDWriteFontCollectionLoaderVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontCollectionLoader, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontCollectionLoader): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontCollectionLoader): ULONG {.stdcall.}
        CreateEnumeratorFromKey*: proc (This:ptr IDWriteFontCollectionLoader, factory:ptr IDWriteFactory, key:pointer, key_size:UINT32, enumerator:ptr ptr IDWriteFontFileEnumerator): HRESULT {.stdcall.}
    IDWriteFontCollectionLoader* = object
        lpVtbl*: ptr IDWriteFontCollectionLoaderVtbl
    IDWriteLocalizedStringsVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteLocalizedStrings, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteLocalizedStrings): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteLocalizedStrings): ULONG {.stdcall.}
        GetCount*: proc (This:ptr IDWriteLocalizedStrings): UINT32 {.stdcall.}
        FindLocaleName*: proc (This:ptr IDWriteLocalizedStrings, locale_name:ptr WCHAR, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
        GetLocaleNameLength*: proc (This:ptr IDWriteLocalizedStrings, index:UINT32, length:ptr UINT32): HRESULT {.stdcall.}
        GetLocaleName*: proc (This:ptr IDWriteLocalizedStrings, index:UINT32, locale_name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        GetStringLength*: proc (This:ptr IDWriteLocalizedStrings, index:UINT32, length:ptr UINT32): HRESULT {.stdcall.}
        GetString*: proc (This:ptr IDWriteLocalizedStrings, index:UINT32, buffer:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
    IDWriteLocalizedStrings* = object
        lpVtbl*: ptr IDWriteLocalizedStringsVtbl
    IDWriteRenderingParamsVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteRenderingParams, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteRenderingParams): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteRenderingParams): ULONG {.stdcall.}
        GetGamma*: proc (This:ptr IDWriteRenderingParams): FLOAT {.stdcall.}
        GetEnhancedContrast*: proc (This:ptr IDWriteRenderingParams): FLOAT {.stdcall.}
        GetClearTypeLevel*: proc (This:ptr IDWriteRenderingParams): FLOAT {.stdcall.}
        GetPixelGeometry*: proc (This:ptr IDWriteRenderingParams): DWRITE_PIXEL_GEOMETRY {.stdcall.}
        GetRenderingMode*: proc (This:ptr IDWriteRenderingParams): DWRITE_RENDERING_MODE {.stdcall.}
    IDWriteRenderingParams* = object
        lpVtbl*: ptr IDWriteRenderingParamsVtbl
    IDWriteFontFaceVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFace, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFace): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFace): ULONG {.stdcall.}
        GetType*: proc (This:ptr IDWriteFontFace): DWRITE_FONT_FACE_TYPE {.stdcall.}
        GetFiles*: proc (This:ptr IDWriteFontFace, number_of_files:ptr UINT32, fontfiles:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
        GetIndex*: proc (This:ptr IDWriteFontFace): UINT32 {.stdcall.}
        GetSimulations*: proc (This:ptr IDWriteFontFace): DWRITE_FONT_SIMULATIONS {.stdcall.}
        IsSymbolFont*: proc (This:ptr IDWriteFontFace): BOOL {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteFontFace, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
        GetGlyphCount*: proc (This:ptr IDWriteFontFace): UINT16 {.stdcall.}
        GetDesignGlyphMetrics*: proc (This:ptr IDWriteFontFace, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
        GetGlyphIndices*: proc (This:ptr IDWriteFontFace, codepoints:ptr UINT32, count:UINT32, glyph_indices:ptr UINT16): HRESULT {.stdcall.}
        TryGetFontTable*: proc (This:ptr IDWriteFontFace, table_tag:UINT32, table_data:ptr pointer, table_size:ptr UINT32, context:ptr pointer, exists:ptr BOOL): HRESULT {.stdcall.}
        ReleaseFontTable*: proc (This:ptr IDWriteFontFace, table_context:pointer) {.stdcall.}
        GetGlyphRunOutline*: proc (This:ptr IDWriteFontFace, emSize:FLOAT, glyph_indices:ptr UINT16, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET, glyph_count:UINT32, is_sideways:BOOL, is_rtl:BOOL, geometrysink:ptr IDWriteGeometrySink): HRESULT {.stdcall.}
        GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace, emSize:FLOAT, pixels_per_dip:FLOAT, mode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
        GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS): HRESULT {.stdcall.}
        GetGdiCompatibleGlyphMetrics*: proc (This:ptr IDWriteFontFace, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
    IDWriteFontFace* = object
        lpVtbl*: ptr IDWriteFontFaceVtbl
    IDWriteFontVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFont, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFont): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFont): ULONG {.stdcall.}
        GetFontFamily*: proc (This:ptr IDWriteFont, family:ptr ptr IDWriteFontFamily): HRESULT {.stdcall.}
        GetWeight*: proc (This:ptr IDWriteFont): DWRITE_FONT_WEIGHT {.stdcall.}
        GetStretch*: proc (This:ptr IDWriteFont): DWRITE_FONT_STRETCH {.stdcall.}
        GetStyle*: proc (This:ptr IDWriteFont): DWRITE_FONT_STYLE {.stdcall.}
        IsSymbolFont*: proc (This:ptr IDWriteFont): BOOL {.stdcall.}
        GetFaceNames*: proc (This:ptr IDWriteFont, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
        GetInformationalStrings*: proc (This:ptr IDWriteFont, strid:DWRITE_INFORMATIONAL_STRING_ID, strs:ptr ptr IDWriteLocalizedStrings, exists:ptr BOOL): HRESULT {.stdcall.}
        GetSimulations*: proc (This:ptr IDWriteFont): DWRITE_FONT_SIMULATIONS {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteFont, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
        HasCharacter*: proc (This:ptr IDWriteFont, value:UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
        CreateFontFace*: proc (This:ptr IDWriteFont, face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
    IDWriteFont* = object
        lpVtbl*: ptr IDWriteFontVtbl
    IDWriteFontListVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontList, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontList): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontList): ULONG {.stdcall.}
        GetFontCollection*: proc (This:ptr IDWriteFontList, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        GetFontCount*: proc (This:ptr IDWriteFontList): UINT32 {.stdcall.}
        GetFont*: proc (This:ptr IDWriteFontList, index:UINT32, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
    IDWriteFontList* = object
        lpVtbl*: ptr IDWriteFontListVtbl
    IDWriteFontFamilyVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFamily, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFamily): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFamily): ULONG {.stdcall.}
        GetFontCollection*: proc (This:ptr IDWriteFontFamily, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        GetFontCount*: proc (This:ptr IDWriteFontFamily): UINT32 {.stdcall.}
        GetFont*: proc (This:ptr IDWriteFontFamily, index:UINT32, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
        GetFamilyNames*: proc (This:ptr IDWriteFontFamily, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
        GetFirstMatchingFont*: proc (This:ptr IDWriteFontFamily, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
        GetMatchingFonts*: proc (This:ptr IDWriteFontFamily, weight:DWRITE_FONT_WEIGHT, stretch:DWRITE_FONT_STRETCH, style:DWRITE_FONT_STYLE, fonts:ptr ptr IDWriteFontList): HRESULT {.stdcall.}
    IDWriteFontFamily* = object
        lpVtbl*: ptr IDWriteFontFamilyVtbl
    IDWriteFontCollectionVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontCollection, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontCollection): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontCollection): ULONG {.stdcall.}
        GetFontFamilyCount*: proc (This:ptr IDWriteFontCollection): UINT32 {.stdcall.}
        GetFontFamily*: proc (This:ptr IDWriteFontCollection, index:UINT32, family:ptr ptr IDWriteFontFamily): HRESULT {.stdcall.}
        FindFamilyName*: proc (This:ptr IDWriteFontCollection, name:ptr WCHAR, index:ptr UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
        GetFontFromFontFace*: proc (This:ptr IDWriteFontCollection, face:ptr IDWriteFontFace, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
    IDWriteFontCollection* = object
        lpVtbl*: ptr IDWriteFontCollectionVtbl
    IDWritePixelSnappingVtbl* = object
        QueryInterface*: proc (This:ptr IDWritePixelSnapping, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWritePixelSnapping): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWritePixelSnapping): ULONG {.stdcall.}
        IsPixelSnappingDisabled*: proc (This:ptr IDWritePixelSnapping, client_drawingcontext:pointer, disabled:ptr BOOL): HRESULT {.stdcall.}
        GetCurrentTransform*: proc (This:ptr IDWritePixelSnapping, client_drawingcontext:pointer, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        GetPixelsPerDip*: proc (This:ptr IDWritePixelSnapping, client_drawingcontext:pointer, pixels_per_dip:ptr FLOAT): HRESULT {.stdcall.}
    IDWritePixelSnapping* = object
        lpVtbl*: ptr IDWritePixelSnappingVtbl
    IDWriteTextRendererVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextRenderer, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextRenderer): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextRenderer): ULONG {.stdcall.}
        IsPixelSnappingDisabled*: proc (This:ptr IDWriteTextRenderer, client_drawingcontext:pointer, disabled:ptr BOOL): HRESULT {.stdcall.}
        GetCurrentTransform*: proc (This:ptr IDWriteTextRenderer, client_drawingcontext:pointer, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        GetPixelsPerDip*: proc (This:ptr IDWriteTextRenderer, client_drawingcontext:pointer, pixels_per_dip:ptr FLOAT): HRESULT {.stdcall.}
        DrawGlyphRun*: proc (This:ptr IDWriteTextRenderer, client_drawingcontext:pointer, baselineOriginX:FLOAT, baselineOriginY:FLOAT, mode:DWRITE_MEASURING_MODE, glyph_run:ptr DWRITE_GLYPH_RUN, run_descr:ptr DWRITE_GLYPH_RUN_DESCRIPTION, drawing_effect:pointer): HRESULT {.stdcall.}
        DrawUnderline*: proc (This:ptr IDWriteTextRenderer, client_drawingcontext:pointer, baselineOriginX:FLOAT, baselineOriginY:FLOAT, underline:ptr DWRITE_UNDERLINE, drawing_effect:pointer): HRESULT {.stdcall.}
        DrawStrikethrough*: proc (This:ptr IDWriteTextRenderer, client_drawingcontext:pointer, baselineOriginX:FLOAT, baselineOriginY:FLOAT, strikethrough:ptr DWRITE_STRIKETHROUGH, drawing_effect:pointer): HRESULT {.stdcall.}
        DrawInlineObject*: proc (This:ptr IDWriteTextRenderer, client_drawingcontext:pointer, originX:FLOAT, originY:FLOAT, object1:ptr IDWriteInlineObject, is_sideways:BOOL, is_rtl:BOOL, drawing_effect:pointer): HRESULT {.stdcall.}
    IDWriteTextRenderer* = object
        lpVtbl*: ptr IDWriteTextRendererVtbl
    IDWriteInlineObjectVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteInlineObject, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteInlineObject): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteInlineObject): ULONG {.stdcall.}
        Draw*: proc (This:ptr IDWriteInlineObject, client_drawingontext:pointer, renderer:ptr IDWriteTextRenderer, originX:FLOAT, originY:FLOAT, is_sideways:BOOL, is_rtl:BOOL, drawing_effect:pointer): HRESULT {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteInlineObject, metrics:ptr DWRITE_INLINE_OBJECT_METRICS): HRESULT {.stdcall.}
        GetOverhangMetrics*: proc (This:ptr IDWriteInlineObject, overhangs:ptr DWRITE_OVERHANG_METRICS): HRESULT {.stdcall.}
        GetBreakConditions*: proc (This:ptr IDWriteInlineObject, condition_before:ptr DWRITE_BREAK_CONDITION, condition_after:ptr DWRITE_BREAK_CONDITION): HRESULT {.stdcall.}
    IDWriteInlineObject* = object
        lpVtbl*: ptr IDWriteInlineObjectVtbl
    IDWriteTextFormatVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextFormat, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextFormat): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextFormat): ULONG {.stdcall.}
        SetTextAlignment*: proc (This:ptr IDWriteTextFormat, alignment:DWRITE_TEXT_ALIGNMENT): HRESULT {.stdcall.}
        SetParagraphAlignment*: proc (This:ptr IDWriteTextFormat, alignment:DWRITE_PARAGRAPH_ALIGNMENT): HRESULT {.stdcall.}
        SetWordWrapping*: proc (This:ptr IDWriteTextFormat, wrapping:DWRITE_WORD_WRAPPING): HRESULT {.stdcall.}
        SetReadingDirection*: proc (This:ptr IDWriteTextFormat, direction:DWRITE_READING_DIRECTION): HRESULT {.stdcall.}
        SetFlowDirection*: proc (This:ptr IDWriteTextFormat, direction:DWRITE_FLOW_DIRECTION): HRESULT {.stdcall.}
        SetIncrementalTabStop*: proc (This:ptr IDWriteTextFormat, tabstop:FLOAT): HRESULT {.stdcall.}
        SetTrimming*: proc (This:ptr IDWriteTextFormat, trimming:ptr DWRITE_TRIMMING, trimming_sign:ptr IDWriteInlineObject): HRESULT {.stdcall.}
        SetLineSpacing*: proc (This:ptr IDWriteTextFormat, spacing:DWRITE_LINE_SPACING_METHOD, line_spacing:FLOAT, baseline:FLOAT): HRESULT {.stdcall.}
        GetTextAlignment*: proc (This:ptr IDWriteTextFormat): DWRITE_TEXT_ALIGNMENT {.stdcall.}
        GetParagraphAlignment*: proc (This:ptr IDWriteTextFormat): DWRITE_PARAGRAPH_ALIGNMENT {.stdcall.}
        GetWordWrapping*: proc (This:ptr IDWriteTextFormat): DWRITE_WORD_WRAPPING {.stdcall.}
        GetReadingDirection*: proc (This:ptr IDWriteTextFormat): DWRITE_READING_DIRECTION {.stdcall.}
        GetFlowDirection*: proc (This:ptr IDWriteTextFormat): DWRITE_FLOW_DIRECTION {.stdcall.}
        GetIncrementalTabStop*: proc (This:ptr IDWriteTextFormat): FLOAT {.stdcall.}
        GetTrimming*: proc (This:ptr IDWriteTextFormat, options:ptr DWRITE_TRIMMING, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
        GetLineSpacing*: proc (This:ptr IDWriteTextFormat, method1:ptr DWRITE_LINE_SPACING_METHOD, spacing:ptr FLOAT, baseline:ptr FLOAT): HRESULT {.stdcall.}
        GetFontCollection*: proc (This:ptr IDWriteTextFormat, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        GetFontFamilyNameLength*: proc (This:ptr IDWriteTextFormat): UINT32 {.stdcall.}
        GetFontFamilyName*: proc (This:ptr IDWriteTextFormat, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        GetFontWeight*: proc (This:ptr IDWriteTextFormat): DWRITE_FONT_WEIGHT {.stdcall.}
        GetFontStyle*: proc (This:ptr IDWriteTextFormat): DWRITE_FONT_STYLE {.stdcall.}
        GetFontStretch*: proc (This:ptr IDWriteTextFormat): DWRITE_FONT_STRETCH {.stdcall.}
        GetFontSize*: proc (This:ptr IDWriteTextFormat): FLOAT {.stdcall.}
        GetLocaleNameLength*: proc (This:ptr IDWriteTextFormat): UINT32 {.stdcall.}
        GetLocaleName*: proc (This:ptr IDWriteTextFormat, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
    IDWriteTextFormat* = object
        lpVtbl*: ptr IDWriteTextFormatVtbl
    IDWriteTypographyVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTypography, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTypography): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTypography): ULONG {.stdcall.}
        AddFontFeature*: proc (This:ptr IDWriteTypography, feature:DWRITE_FONT_FEATURE): HRESULT {.stdcall.}
        GetFontFeatureCount*: proc (This:ptr IDWriteTypography): UINT32 {.stdcall.}
        GetFontFeature*: proc (This:ptr IDWriteTypography, index:UINT32, feature:ptr DWRITE_FONT_FEATURE): HRESULT {.stdcall.}
    IDWriteTypography* = object
        lpVtbl*: ptr IDWriteTypographyVtbl
    IDWriteBitmapRenderTargetVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteBitmapRenderTarget, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteBitmapRenderTarget): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteBitmapRenderTarget): ULONG {.stdcall.}
        DrawGlyphRun*: proc (This:ptr IDWriteBitmapRenderTarget, baselineOriginX:FLOAT, baselineOriginY:FLOAT, measuring_mode:DWRITE_MEASURING_MODE, glyph_run:ptr DWRITE_GLYPH_RUN, params:ptr IDWriteRenderingParams, textColor:COLORREF, blackbox_rect:ptr RECT): HRESULT {.stdcall.}
        GetMemoryDC*: proc (This:ptr IDWriteBitmapRenderTarget): HDC {.stdcall.}
        GetPixelsPerDip*: proc (This:ptr IDWriteBitmapRenderTarget): FLOAT {.stdcall.}
        SetPixelsPerDip*: proc (This:ptr IDWriteBitmapRenderTarget, pixels_per_dip:FLOAT): HRESULT {.stdcall.}
        GetCurrentTransform*: proc (This:ptr IDWriteBitmapRenderTarget, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        SetCurrentTransform*: proc (This:ptr IDWriteBitmapRenderTarget, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        GetSize*: proc (This:ptr IDWriteBitmapRenderTarget, size:ptr SIZE): HRESULT {.stdcall.}
        Resize*: proc (This:ptr IDWriteBitmapRenderTarget, width:UINT32, height:UINT32): HRESULT {.stdcall.}
    IDWriteBitmapRenderTarget* = object
        lpVtbl*: ptr IDWriteBitmapRenderTargetVtbl
    IDWriteGdiInteropVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteGdiInterop, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteGdiInterop): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteGdiInterop): ULONG {.stdcall.}
        CreateFontFromLOGFONT*: proc (This:ptr IDWriteGdiInterop, logfont:ptr LOGFONTW, font:ptr ptr IDWriteFont): HRESULT {.stdcall.}
        ConvertFontToLOGFONT*: proc (This:ptr IDWriteGdiInterop, font:ptr IDWriteFont, logfont:ptr LOGFONTW, is_systemfont:ptr BOOL): HRESULT {.stdcall.}
        ConvertFontFaceToLOGFONT*: proc (This:ptr IDWriteGdiInterop, font:ptr IDWriteFontFace, logfont:ptr LOGFONTW): HRESULT {.stdcall.}
        CreateFontFaceFromHdc*: proc (This:ptr IDWriteGdiInterop, hdc:HDC, fontface:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
        CreateBitmapRenderTarget*: proc (This:ptr IDWriteGdiInterop, hdc:HDC, width:UINT32, height:UINT32, target:ptr ptr IDWriteBitmapRenderTarget): HRESULT {.stdcall.}
    IDWriteGdiInterop* = object
        lpVtbl*: ptr IDWriteGdiInteropVtbl
    IDWriteTextLayoutVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextLayout, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextLayout): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextLayout): ULONG {.stdcall.}
        SetTextAlignment*: proc (This:ptr IDWriteTextLayout, alignment:DWRITE_TEXT_ALIGNMENT): HRESULT {.stdcall.}
        SetParagraphAlignment*: proc (This:ptr IDWriteTextLayout, alignment:DWRITE_PARAGRAPH_ALIGNMENT): HRESULT {.stdcall.}
        SetWordWrapping*: proc (This:ptr IDWriteTextLayout, wrapping:DWRITE_WORD_WRAPPING): HRESULT {.stdcall.}
        SetReadingDirection*: proc (This:ptr IDWriteTextLayout, direction:DWRITE_READING_DIRECTION): HRESULT {.stdcall.}
        SetFlowDirection*: proc (This:ptr IDWriteTextLayout, direction:DWRITE_FLOW_DIRECTION): HRESULT {.stdcall.}
        SetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout, tabstop:FLOAT): HRESULT {.stdcall.}
        SetTrimming*: proc (This:ptr IDWriteTextLayout, trimming:ptr DWRITE_TRIMMING, trimming_sign:ptr IDWriteInlineObject): HRESULT {.stdcall.}
        SetLineSpacing*: proc (This:ptr IDWriteTextLayout, spacing:DWRITE_LINE_SPACING_METHOD, line_spacing:FLOAT, baseline:FLOAT): HRESULT {.stdcall.}
        GetTextAlignment*: proc (This:ptr IDWriteTextLayout): DWRITE_TEXT_ALIGNMENT {.stdcall.}
        GetParagraphAlignment*: proc (This:ptr IDWriteTextLayout): DWRITE_PARAGRAPH_ALIGNMENT {.stdcall.}
        GetWordWrapping*: proc (This:ptr IDWriteTextLayout): DWRITE_WORD_WRAPPING {.stdcall.}
        GetReadingDirection*: proc (This:ptr IDWriteTextLayout): DWRITE_READING_DIRECTION {.stdcall.}
        GetFlowDirection*: proc (This:ptr IDWriteTextLayout): DWRITE_FLOW_DIRECTION {.stdcall.}
        GetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout): FLOAT {.stdcall.}
        GetTrimming*: proc (This:ptr IDWriteTextLayout, options:ptr DWRITE_TRIMMING, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
        GetLineSpacing*: proc (This:ptr IDWriteTextLayout, method1:ptr DWRITE_LINE_SPACING_METHOD, spacing:ptr FLOAT, baseline:ptr FLOAT): HRESULT {.stdcall.}
        GetFontCollection*: proc (This:ptr IDWriteTextLayout, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout): UINT32 {.stdcall.}
        GetFontFamilyName*: proc (This:ptr IDWriteTextLayout, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        GetFontWeight*: proc (This:ptr IDWriteTextLayout): DWRITE_FONT_WEIGHT {.stdcall.}
        GetFontStyle*: proc (This:ptr IDWriteTextLayout): DWRITE_FONT_STYLE {.stdcall.}
        GetFontStretch*: proc (This:ptr IDWriteTextLayout): DWRITE_FONT_STRETCH {.stdcall.}
        GetFontSize*: proc (This:ptr IDWriteTextLayout): FLOAT {.stdcall.}
        GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout): UINT32 {.stdcall.}
        GetLocaleName*: proc (This:ptr IDWriteTextLayout, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        SetMaxWidth*: proc (This:ptr IDWriteTextLayout, maxWidth:FLOAT): HRESULT {.stdcall.}
        SetMaxHeight*: proc (This:ptr IDWriteTextLayout, maxHeight:FLOAT): HRESULT {.stdcall.}
        SetFontCollection*: proc (This:ptr IDWriteTextLayout, collection:ptr IDWriteFontCollection, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontFamilyName*: proc (This:ptr IDWriteTextLayout, name:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontWeight*: proc (This:ptr IDWriteTextLayout, weight:DWRITE_FONT_WEIGHT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontStyle*: proc (This:ptr IDWriteTextLayout, style:DWRITE_FONT_STYLE, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontStretch*: proc (This:ptr IDWriteTextLayout, stretch:DWRITE_FONT_STRETCH, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontSize*: proc (This:ptr IDWriteTextLayout, size:FLOAT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetUnderline*: proc (This:ptr IDWriteTextLayout, underline:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetStrikethrough*: proc (This:ptr IDWriteTextLayout, strikethrough:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetDrawingEffect*: proc (This:ptr IDWriteTextLayout, effect:pointer, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetInlineObject*: proc (This:ptr IDWriteTextLayout, object1:ptr IDWriteInlineObject, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetTypography*: proc (This:ptr IDWriteTextLayout, typography:ptr IDWriteTypography, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetLocaleName*: proc (This:ptr IDWriteTextLayout, locale:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetMaxWidth*: proc (This:ptr IDWriteTextLayout): FLOAT {.stdcall.}
        GetMaxHeight*: proc (This:ptr IDWriteTextLayout): FLOAT {.stdcall.}
        IDWriteTextLayout_GetFontCollection*: proc (This:ptr IDWriteTextLayout, pos:UINT32, collection:ptr ptr IDWriteFontCollection, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout, pos:UINT32, len:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontFamilyName*: proc (This:ptr IDWriteTextLayout, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontWeight*: proc (This:ptr IDWriteTextLayout, position:UINT32, weight:ptr DWRITE_FONT_WEIGHT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontStyle*: proc (This:ptr IDWriteTextLayout, currentPosition:UINT32, style:ptr DWRITE_FONT_STYLE, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontStretch*: proc (This:ptr IDWriteTextLayout, position:UINT32, stretch:ptr DWRITE_FONT_STRETCH, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontSize*: proc (This:ptr IDWriteTextLayout, position:UINT32, size:ptr FLOAT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetUnderline*: proc (This:ptr IDWriteTextLayout, position:UINT32, has_underline:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetStrikethrough*: proc (This:ptr IDWriteTextLayout, position:UINT32, has_strikethrough:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetDrawingEffect*: proc (This:ptr IDWriteTextLayout, position:UINT32, effect:ptr pointer, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetInlineObject*: proc (This:ptr IDWriteTextLayout, position:UINT32, object1:ptr ptr IDWriteInlineObject, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetTypography*: proc (This:ptr IDWriteTextLayout, position:UINT32, typography:ptr ptr IDWriteTypography, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout, position:UINT32, length:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetLocaleName*: proc (This:ptr IDWriteTextLayout, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        Draw*: proc (This:ptr IDWriteTextLayout, context:pointer, renderer:ptr IDWriteTextRenderer, originX:FLOAT, originY:FLOAT): HRESULT {.stdcall.}
        GetLineMetrics*: proc (This:ptr IDWriteTextLayout, metrics:ptr DWRITE_LINE_METRICS, max_count:UINT32, actual_count:ptr UINT32): HRESULT {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteTextLayout, metrics:ptr DWRITE_TEXT_METRICS): HRESULT {.stdcall.}
        GetOverhangMetrics*: proc (This:ptr IDWriteTextLayout, overhangs:ptr DWRITE_OVERHANG_METRICS): HRESULT {.stdcall.}
        GetClusterMetrics*: proc (This:ptr IDWriteTextLayout, metrics:ptr DWRITE_CLUSTER_METRICS, max_count:UINT32, act_count:ptr UINT32): HRESULT {.stdcall.}
        DetermineMinWidth*: proc (This:ptr IDWriteTextLayout, min_width:ptr FLOAT): HRESULT {.stdcall.}
        HitTestPoint*: proc (This:ptr IDWriteTextLayout, pointX:FLOAT, pointY:FLOAT, is_trailinghit:ptr BOOL, is_inside:ptr BOOL, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
        HitTestTextPosition*: proc (This:ptr IDWriteTextLayout, textPosition:UINT32, is_trailinghit:BOOL, pointX:ptr FLOAT, pointY:ptr FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
        HitTestTextRange*: proc (This:ptr IDWriteTextLayout, textPosition:UINT32, textLength:UINT32, originX:FLOAT, originY:FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS, max_metricscount:UINT32, actual_metricscount:ptr UINT32): HRESULT {.stdcall.}
    IDWriteTextLayout* = object
        lpVtbl*: ptr IDWriteTextLayoutVtbl
    IDWriteNumberSubstitutionVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteNumberSubstitution, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteNumberSubstitution): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteNumberSubstitution): ULONG {.stdcall.}
    IDWriteNumberSubstitution* = object
        lpVtbl*: ptr IDWriteNumberSubstitutionVtbl
    IDWriteTextAnalysisSourceVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextAnalysisSource, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextAnalysisSource): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextAnalysisSource): ULONG {.stdcall.}
        GetTextAtPosition*: proc (This:ptr IDWriteTextAnalysisSource, position:UINT32, text:ptr ptr WCHAR, text_len:ptr UINT32): HRESULT {.stdcall.}
        GetTextBeforePosition*: proc (This:ptr IDWriteTextAnalysisSource, position:UINT32, text:ptr ptr WCHAR, text_len:ptr UINT32): HRESULT {.stdcall.}
        GetParagraphReadingDirection*: proc (This:ptr IDWriteTextAnalysisSource): DWRITE_READING_DIRECTION {.stdcall.}
        GetLocaleName*: proc (This:ptr IDWriteTextAnalysisSource, position:UINT32, text_len:ptr UINT32, locale:ptr ptr WCHAR): HRESULT {.stdcall.}
        GetNumberSubstitution*: proc (This:ptr IDWriteTextAnalysisSource, position:UINT32, text_len:ptr UINT32, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
    IDWriteTextAnalysisSource* = object
        lpVtbl*: ptr IDWriteTextAnalysisSourceVtbl
    IDWriteTextAnalysisSinkVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextAnalysisSink, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextAnalysisSink): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextAnalysisSink): ULONG {.stdcall.}
        SetScriptAnalysis*: proc (This:ptr IDWriteTextAnalysisSink, position:UINT32, length:UINT32, scriptanalysis:ptr DWRITE_SCRIPT_ANALYSIS): HRESULT {.stdcall.}
        SetLineBreakpoints*: proc (This:ptr IDWriteTextAnalysisSink, position:UINT32, length:UINT32, breakpoints:ptr DWRITE_LINE_BREAKPOINT): HRESULT {.stdcall.}
        SetBidiLevel*: proc (This:ptr IDWriteTextAnalysisSink, position:UINT32, length:UINT32, explicitLevel:UINT8, resolvedLevel:UINT8): HRESULT {.stdcall.}
        SetNumberSubstitution*: proc (This:ptr IDWriteTextAnalysisSink, position:UINT32, length:UINT32, substitution:ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
    IDWriteTextAnalysisSink* = object
        lpVtbl*: ptr IDWriteTextAnalysisSinkVtbl
    IDWriteTextAnalyzerVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextAnalyzer, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextAnalyzer): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextAnalyzer): ULONG {.stdcall.}
        AnalyzeScript*: proc (This:ptr IDWriteTextAnalyzer, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        AnalyzeBidi*: proc (This:ptr IDWriteTextAnalyzer, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        AnalyzeNumberSubstitution*: proc (This:ptr IDWriteTextAnalyzer, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        AnalyzeLineBreakpoints*: proc (This:ptr IDWriteTextAnalyzer, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        GetGlyphs*: proc (This:ptr IDWriteTextAnalyzer, text:ptr WCHAR, length:UINT32, font_face:ptr IDWriteFontFace, is_sideways:BOOL, is_rtl:BOOL, analysis:ptr DWRITE_SCRIPT_ANALYSIS, locale:ptr WCHAR, substitution:ptr IDWriteNumberSubstitution, features:ptr ptr DWRITE_TYPOGRAPHIC_FEATURES, feature_range_len:ptr UINT32, feature_ranges:UINT32, max_glyph_count:UINT32, clustermap:ptr UINT16, text_props:ptr DWRITE_SHAPING_TEXT_PROPERTIES, glyph_indices:ptr UINT16, glyph_props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, actual_glyph_count:ptr UINT32): HRESULT {.stdcall.}
        GetGlyphPlacements*: proc (This:ptr IDWriteTextAnalyzer, text:ptr WCHAR, clustermap:ptr UINT16, props:ptr DWRITE_SHAPING_TEXT_PROPERTIES, text_len:UINT32, glyph_indices:ptr UINT16, glyph_props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, glyph_count:UINT32, font_face:ptr IDWriteFontFace, fontEmSize:FLOAT, is_sideways:BOOL, is_rtl:BOOL, analysis:ptr DWRITE_SCRIPT_ANALYSIS, locale:ptr WCHAR, features:ptr ptr DWRITE_TYPOGRAPHIC_FEATURES, feature_range_len:ptr UINT32, feature_ranges:UINT32, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        GetGdiCompatibleGlyphPlacements*: proc (This:ptr IDWriteTextAnalyzer, text:ptr WCHAR, clustermap:ptr UINT16, props:ptr DWRITE_SHAPING_TEXT_PROPERTIES, text_len:UINT32, glyph_indices:ptr UINT16, glyph_props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, glyph_count:UINT32, font_face:ptr IDWriteFontFace, fontEmSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, is_sideways:BOOL, is_rtl:BOOL, analysis:ptr DWRITE_SCRIPT_ANALYSIS, locale:ptr WCHAR, features:ptr ptr DWRITE_TYPOGRAPHIC_FEATURES, feature_range_lengths:ptr UINT32, feature_ranges:UINT32, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
    IDWriteTextAnalyzer* = object
        lpVtbl*: ptr IDWriteTextAnalyzerVtbl
    IDWriteGlyphRunAnalysisVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteGlyphRunAnalysis, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteGlyphRunAnalysis): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteGlyphRunAnalysis): ULONG {.stdcall.}
        GetAlphaTextureBounds*: proc (This:ptr IDWriteGlyphRunAnalysis, type1:DWRITE_TEXTURE_TYPE, bounds:ptr RECT): HRESULT {.stdcall.}
        CreateAlphaTexture*: proc (This:ptr IDWriteGlyphRunAnalysis, type1:DWRITE_TEXTURE_TYPE, bounds:ptr RECT, alphaValues:ptr BYTE, bufferSize:UINT32): HRESULT {.stdcall.}
        GetAlphaBlendParams*: proc (This:ptr IDWriteGlyphRunAnalysis, renderingParams:ptr IDWriteRenderingParams, blendGamma:ptr FLOAT, blendEnhancedContrast:ptr FLOAT, blendClearTypeLevel:ptr FLOAT): HRESULT {.stdcall.}
    IDWriteGlyphRunAnalysis* = object
        lpVtbl*: ptr IDWriteGlyphRunAnalysisVtbl
    IDWriteFactoryVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFactory, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFactory): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFactory): ULONG {.stdcall.}
        GetSystemFontCollection*: proc (This:ptr IDWriteFactory, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
        CreateCustomFontCollection*: proc (This:ptr IDWriteFactory, loader:ptr IDWriteFontCollectionLoader, key:pointer, key_size:UINT32, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        RegisterFontCollectionLoader*: proc (This:ptr IDWriteFactory, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
        UnregisterFontCollectionLoader*: proc (This:ptr IDWriteFactory, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
        CreateFontFileReference*: proc (This:ptr IDWriteFactory, path:ptr WCHAR, writetime:ptr FILETIME, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
        CreateCustomFontFileReference*: proc (This:ptr IDWriteFactory, ref1erence_key:pointer, key_size:UINT32, loader:ptr IDWriteFontFileLoader, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
        CreateFontFace*: proc (This:ptr IDWriteFactory, facetype:DWRITE_FONT_FACE_TYPE, files_number:UINT32, font_files:ptr ptr IDWriteFontFile, index:UINT32, sim_flags:DWRITE_FONT_SIMULATIONS, font_face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
        CreateRenderingParams*: proc (This:ptr IDWriteFactory, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        CreateMonitorRenderingParams*: proc (This:ptr IDWriteFactory, monitor:HMONITOR, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory, gamma:FLOAT, enhancedContrast:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        RegisterFontFileLoader*: proc (This:ptr IDWriteFactory, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
        UnregisterFontFileLoader*: proc (This:ptr IDWriteFactory, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
        CreateTextFormat*: proc (This:ptr IDWriteFactory, family_name:ptr WCHAR, collection:ptr IDWriteFontCollection, weight:DWRITE_FONT_WEIGHT, style:DWRITE_FONT_STYLE, stretch:DWRITE_FONT_STRETCH, size:FLOAT, locale:ptr WCHAR, format:ptr ptr IDWriteTextFormat): HRESULT {.stdcall.}
        CreateTypography*: proc (This:ptr IDWriteFactory, typography:ptr ptr IDWriteTypography): HRESULT {.stdcall.}
        GetGdiInterop*: proc (This:ptr IDWriteFactory, gdi_interop:ptr ptr IDWriteGdiInterop): HRESULT {.stdcall.}
        CreateTextLayout*: proc (This:ptr IDWriteFactory, str:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, max_width:FLOAT, max_height:FLOAT, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
        CreateGdiCompatibleTextLayout*: proc (This:ptr IDWriteFactory, str:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, layout_width:FLOAT, layout_height:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
        CreateEllipsisTrimmingSign*: proc (This:ptr IDWriteFactory, format:ptr IDWriteTextFormat, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
        CreateTextAnalyzer*: proc (This:ptr IDWriteFactory, analyzer:ptr ptr IDWriteTextAnalyzer): HRESULT {.stdcall.}
        CreateNumberSubstitution*: proc (This:ptr IDWriteFactory, method1:DWRITE_NUMBER_SUBSTITUTION_METHOD, locale:ptr WCHAR, ignore_user_override:BOOL, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
        CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory, glyph_run:ptr DWRITE_GLYPH_RUN, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE, measuring_mode:DWRITE_MEASURING_MODE, baseline_x:FLOAT, baseline_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
    IDWriteFactory* = object
        lpVtbl*: ptr IDWriteFactoryVtbl

proc DWriteCreateFactory*(factoryType:DWRITE_FACTORY_TYPE, iid: REFIID, factory: ptr ptr IDWriteFactory): HRESULT {.stdcall, importc.}
