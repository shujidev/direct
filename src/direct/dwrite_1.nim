import winim/lean
import dcommon, dwrite
type
  INNER_C_STRUCT_headers_4* {.bycopy.} = object
    familyKind*: UINT8
    serifStyle*: UINT8
    weight*: UINT8
    proportion*: UINT8
    contrast*: UINT8
    strokeVariation*: UINT8
    armStyle*: UINT8
    letterform*: UINT8
    midline*: UINT8
    xHeight*: UINT8

  INNER_C_STRUCT_headers_5* {.bycopy.} = object
    familyKind*: UINT8
    toolKind*: UINT8
    weight*: UINT8
    spacing*: UINT8
    aspectRatio*: UINT8
    contrast*: UINT8
    scriptTopology*: UINT8
    scriptForm*: UINT8
    finials*: UINT8
    xAscent*: UINT8

  INNER_C_STRUCT_headers_6* {.bycopy.} = object
    familyKind*: UINT8
    decorativeClass*: UINT8
    weight*: UINT8
    aspect*: UINT8
    contrast*: UINT8
    serifVariant*: UINT8
    fill*: UINT8
    lining*: UINT8
    decorativeTopology*: UINT8
    characterRange*: UINT8

  INNER_C_STRUCT_headers_7* {.bycopy.} = object
    familyKind*: UINT8
    symbolKind*: UINT8
    weight*: UINT8
    spacing*: UINT8
    aspectRatioAndContrast*: UINT8
    aspectRatio94*: UINT8
    aspectRatio119*: UINT8
    aspectRatio157*: UINT8
    aspectRatio163*: UINT8
    aspectRatio211*: UINT8
    
type
  DWRITE_PANOSE_FAMILY* = enum
    DWRITE_PANOSE_FAMILY_ANY = 0, DWRITE_PANOSE_FAMILY_NO_FIT = 1,
    DWRITE_PANOSE_FAMILY_TEXT_DISPLAY = 2, DWRITE_PANOSE_FAMILY_SCRIPT = 3,
    DWRITE_PANOSE_FAMILY_DECORATIVE = 4, DWRITE_PANOSE_FAMILY_SYMBOL = 5
  DWRITE_PANOSE_SERIF_STYLE* = enum
    DWRITE_PANOSE_SERIF_STYLE_ANY = 0, DWRITE_PANOSE_SERIF_STYLE_NO_FIT = 1,
    DWRITE_PANOSE_SERIF_STYLE_COVE = 2, DWRITE_PANOSE_SERIF_STYLE_OBTUSE_COVE = 3,
    DWRITE_PANOSE_SERIF_STYLE_SQUARE_COVE = 4,
    DWRITE_PANOSE_SERIF_STYLE_OBTUSE_SQUARE_COVE = 5,
    DWRITE_PANOSE_SERIF_STYLE_SQUARE = 6, DWRITE_PANOSE_SERIF_STYLE_THIN = 7,
    DWRITE_PANOSE_SERIF_STYLE_OVAL = 8, DWRITE_PANOSE_SERIF_STYLE_EXAGGERATED = 9,
    DWRITE_PANOSE_SERIF_STYLE_TRIANGLE = 10,
    DWRITE_PANOSE_SERIF_STYLE_NORMAL_SANS = 11,
    DWRITE_PANOSE_SERIF_STYLE_OBTUSE_SANS = 12,
    DWRITE_PANOSE_SERIF_STYLE_PERPENDICULAR_SANS = 13,
    DWRITE_PANOSE_SERIF_STYLE_FLARED = 14, DWRITE_PANOSE_SERIF_STYLE_ROUNDED = 15,
    DWRITE_PANOSE_SERIF_STYLE_SCRIPT = 16
  DWRITE_PANOSE_WEIGHT* = enum
    DWRITE_PANOSE_WEIGHT_ANY = 0, DWRITE_PANOSE_WEIGHT_NO_FIT = 1,
    DWRITE_PANOSE_WEIGHT_VERY_LIGHT = 2, DWRITE_PANOSE_WEIGHT_LIGHT = 3,
    DWRITE_PANOSE_WEIGHT_THIN = 4, DWRITE_PANOSE_WEIGHT_BOOK = 5,
    DWRITE_PANOSE_WEIGHT_MEDIUM = 6, DWRITE_PANOSE_WEIGHT_DEMI = 7,
    DWRITE_PANOSE_WEIGHT_BOLD = 8, DWRITE_PANOSE_WEIGHT_HEAVY = 9,
    DWRITE_PANOSE_WEIGHT_BLACK = 10, DWRITE_PANOSE_WEIGHT_EXTRA_BLACK = 11
  DWRITE_PANOSE_PROPORTION* = enum
    DWRITE_PANOSE_PROPORTION_ANY = 0, DWRITE_PANOSE_PROPORTION_NO_FIT = 1,
    DWRITE_PANOSE_PROPORTION_OLD_STYLE = 2, DWRITE_PANOSE_PROPORTION_MODERN = 3,
    DWRITE_PANOSE_PROPORTION_EVEN_WIDTH = 4, DWRITE_PANOSE_PROPORTION_EXPANDED = 5,
    DWRITE_PANOSE_PROPORTION_CONDENSED = 6,
    DWRITE_PANOSE_PROPORTION_VERY_EXPANDED = 7,
    DWRITE_PANOSE_PROPORTION_VERY_CONDENSED = 8,
    DWRITE_PANOSE_PROPORTION_MONOSPACED = 9
  DWRITE_PANOSE_CONTRAST* = enum
    DWRITE_PANOSE_CONTRAST_ANY = 0, DWRITE_PANOSE_CONTRAST_NO_FIT = 1,
    DWRITE_PANOSE_CONTRAST_NONE = 2, DWRITE_PANOSE_CONTRAST_VERY_LOW = 3,
    DWRITE_PANOSE_CONTRAST_LOW = 4, DWRITE_PANOSE_CONTRAST_MEDIUM_LOW = 5,
    DWRITE_PANOSE_CONTRAST_MEDIUM = 6, DWRITE_PANOSE_CONTRAST_MEDIUM_HIGH = 7,
    DWRITE_PANOSE_CONTRAST_HIGH = 8, DWRITE_PANOSE_CONTRAST_VERY_HIGH = 9,
    DWRITE_PANOSE_CONTRAST_HORIZONTAL_LOW = 10,
    DWRITE_PANOSE_CONTRAST_HORIZONTAL_MEDIUM = 11,
    DWRITE_PANOSE_CONTRAST_HORIZONTAL_HIGH = 12, DWRITE_PANOSE_CONTRAST_BROKEN = 13
  DWRITE_PANOSE_STROKE_VARIATION* = enum
    DWRITE_PANOSE_STROKE_VARIATION_ANY = 0,
    DWRITE_PANOSE_STROKE_VARIATION_NO_FIT = 1,
    DWRITE_PANOSE_STROKE_VARIATION_NO_VARIATION = 2,
    DWRITE_PANOSE_STROKE_VARIATION_GRADUAL_DIAGONAL = 3,
    DWRITE_PANOSE_STROKE_VARIATION_GRADUAL_TRANSITIONAL = 4,
    DWRITE_PANOSE_STROKE_VARIATION_GRADUAL_VERTICAL = 5,
    DWRITE_PANOSE_STROKE_VARIATION_GRADUAL_HORIZONTAL = 6,
    DWRITE_PANOSE_STROKE_VARIATION_RAPID_VERTICAL = 7,
    DWRITE_PANOSE_STROKE_VARIATION_RAPID_HORIZONTAL = 8,
    DWRITE_PANOSE_STROKE_VARIATION_INSTANT_VERTICAL = 9,
    DWRITE_PANOSE_STROKE_VARIATION_INSTANT_HORIZONTAL = 10
  DWRITE_PANOSE_ARM_STYLE* = enum
    DWRITE_PANOSE_ARM_STYLE_ANY = 0, DWRITE_PANOSE_ARM_STYLE_NO_FIT = 1,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_HORIZONTAL = 2,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_WEDGE = 3,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_VERTICAL = 4,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_SINGLE_SERIF = 5,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_DOUBLE_SERIF = 6,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_HORIZONTAL = 7,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_WEDGE = 8,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_VERTICAL = 9,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_SINGLE_SERIF = 10,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_DOUBLE_SERIF = 11
  DWRITE_PANOSE_LETTERFORM* = enum
    DWRITE_PANOSE_LETTERFORM_ANY = 0, DWRITE_PANOSE_LETTERFORM_NO_FIT = 1,
    DWRITE_PANOSE_LETTERFORM_NORMAL_CONTACT = 2,
    DWRITE_PANOSE_LETTERFORM_NORMAL_WEIGHTED = 3,
    DWRITE_PANOSE_LETTERFORM_NORMAL_BOXED = 4,
    DWRITE_PANOSE_LETTERFORM_NORMAL_FLATTENED = 5,
    DWRITE_PANOSE_LETTERFORM_NORMAL_ROUNDED = 6,
    DWRITE_PANOSE_LETTERFORM_NORMAL_OFF_CENTER = 7,
    DWRITE_PANOSE_LETTERFORM_NORMAL_SQUARE = 8,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_CONTACT = 9,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_WEIGHTED = 10,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_BOXED = 11,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_FLATTENED = 12,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_ROUNDED = 13,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_OFF_CENTER = 14,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_SQUARE = 15
  DWRITE_PANOSE_MIDLINE* = enum
    DWRITE_PANOSE_MIDLINE_ANY = 0, DWRITE_PANOSE_MIDLINE_NO_FIT = 1,
    DWRITE_PANOSE_MIDLINE_STANDARD_TRIMMED = 2,
    DWRITE_PANOSE_MIDLINE_STANDARD_POINTED = 3,
    DWRITE_PANOSE_MIDLINE_STANDARD_SERIFED = 4,
    DWRITE_PANOSE_MIDLINE_HIGH_TRIMMED = 5, DWRITE_PANOSE_MIDLINE_HIGH_POINTED = 6,
    DWRITE_PANOSE_MIDLINE_HIGH_SERIFED = 7,
    DWRITE_PANOSE_MIDLINE_CONSTANT_TRIMMED = 8,
    DWRITE_PANOSE_MIDLINE_CONSTANT_POINTED = 9,
    DWRITE_PANOSE_MIDLINE_CONSTANT_SERIFED = 10,
    DWRITE_PANOSE_MIDLINE_LOW_TRIMMED = 11, DWRITE_PANOSE_MIDLINE_LOW_POINTED = 12,
    DWRITE_PANOSE_MIDLINE_LOW_SERIFED = 13
  DWRITE_PANOSE_XHEIGHT* = enum
    DWRITE_PANOSE_XHEIGHT_ANY = 0, DWRITE_PANOSE_XHEIGHT_NO_FIT = 1,
    DWRITE_PANOSE_XHEIGHT_CONSTANT_SMALL = 2,
    DWRITE_PANOSE_XHEIGHT_CONSTANT_STANDARD = 3,
    DWRITE_PANOSE_XHEIGHT_CONSTANT_LARGE = 4,
    DWRITE_PANOSE_XHEIGHT_DUCKING_SMALL = 5,
    DWRITE_PANOSE_XHEIGHT_DUCKING_STANDARD = 6,
    DWRITE_PANOSE_XHEIGHT_DUCKING_LARGE = 7
  DWRITE_PANOSE_TOOL_KIND* = enum
    DWRITE_PANOSE_TOOL_KIND_ANY = 0, DWRITE_PANOSE_TOOL_KIND_NO_FIT = 1,
    DWRITE_PANOSE_TOOL_KIND_FLAT_NIB = 2,
    DWRITE_PANOSE_TOOL_KIND_PRESSURE_POINT = 3,
    DWRITE_PANOSE_TOOL_KIND_ENGRAVED = 4, DWRITE_PANOSE_TOOL_KIND_BALL = 5,
    DWRITE_PANOSE_TOOL_KIND_BRUSH = 6, DWRITE_PANOSE_TOOL_KIND_ROUGH = 7,
    DWRITE_PANOSE_TOOL_KIND_FELT_PEN_BRUSH_TIP = 8,
    DWRITE_PANOSE_TOOL_KIND_WILD_BRUSH = 9
  DWRITE_PANOSE_SPACING* = enum
    DWRITE_PANOSE_SPACING_ANY = 0, DWRITE_PANOSE_SPACING_NO_FIT = 1,
    DWRITE_PANOSE_SPACING_PROPORTIONAL_SPACED = 2,
    DWRITE_PANOSE_SPACING_MONOSPACED = 3
  DWRITE_PANOSE_ASPECT_RATIO* = enum
    DWRITE_PANOSE_ASPECT_RATIO_ANY = 0, DWRITE_PANOSE_ASPECT_RATIO_NO_FIT = 1,
    DWRITE_PANOSE_ASPECT_RATIO_VERY_CONDENSED = 2,
    DWRITE_PANOSE_ASPECT_RATIO_CONDENSED = 3,
    DWRITE_PANOSE_ASPECT_RATIO_NORMAL = 4, DWRITE_PANOSE_ASPECT_RATIO_EXPANDED = 5,
    DWRITE_PANOSE_ASPECT_RATIO_VERY_EXPANDED = 6
  DWRITE_PANOSE_SCRIPT_TOPOLOGY* = enum
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_ANY = 0,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_NO_FIT = 1,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_ROMAN_DISCONNECTED = 2,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_ROMAN_TRAILING = 3,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_ROMAN_CONNECTED = 4,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_CURSIVE_DISCONNECTED = 5,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_CURSIVE_TRAILING = 6,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_CURSIVE_CONNECTED = 7,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_BLACKLETTER_DISCONNECTED = 8,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_BLACKLETTER_TRAILING = 9,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_BLACKLETTER_CONNECTED = 10
  DWRITE_PANOSE_SCRIPT_FORM* = enum
    DWRITE_PANOSE_SCRIPT_FORM_ANY = 0, DWRITE_PANOSE_SCRIPT_FORM_NO_FIT = 1,
    DWRITE_PANOSE_SCRIPT_FORM_UPRIGHT_NO_WRAPPING = 2,
    DWRITE_PANOSE_SCRIPT_FORM_UPRIGHT_SOME_WRAPPING = 3,
    DWRITE_PANOSE_SCRIPT_FORM_UPRIGHT_MORE_WRAPPING = 4,
    DWRITE_PANOSE_SCRIPT_FORM_UPRIGHT_EXTREME_WRAPPING = 5,
    DWRITE_PANOSE_SCRIPT_FORM_OBLIQUE_NO_WRAPPING = 6,
    DWRITE_PANOSE_SCRIPT_FORM_OBLIQUE_SOME_WRAPPING = 7,
    DWRITE_PANOSE_SCRIPT_FORM_OBLIQUE_MORE_WRAPPING = 8,
    DWRITE_PANOSE_SCRIPT_FORM_OBLIQUE_EXTREME_WRAPPING = 9,
    DWRITE_PANOSE_SCRIPT_FORM_EXAGGERATED_NO_WRAPPING = 10,
    DWRITE_PANOSE_SCRIPT_FORM_EXAGGERATED_SOME_WRAPPING = 11,
    DWRITE_PANOSE_SCRIPT_FORM_EXAGGERATED_MORE_WRAPPING = 12,
    DWRITE_PANOSE_SCRIPT_FORM_EXAGGERATED_EXTREME_WRAPPING = 13
  DWRITE_PANOSE_FINIALS* = enum
    DWRITE_PANOSE_FINIALS_ANY = 0, DWRITE_PANOSE_FINIALS_NO_FIT = 1,
    DWRITE_PANOSE_FINIALS_NONE_NO_LOOPS = 2,
    DWRITE_PANOSE_FINIALS_NONE_CLOSED_LOOPS = 3,
    DWRITE_PANOSE_FINIALS_NONE_OPEN_LOOPS = 4,
    DWRITE_PANOSE_FINIALS_SHARP_NO_LOOPS = 5,
    DWRITE_PANOSE_FINIALS_SHARP_CLOSED_LOOPS = 6,
    DWRITE_PANOSE_FINIALS_SHARP_OPEN_LOOPS = 7,
    DWRITE_PANOSE_FINIALS_TAPERED_NO_LOOPS = 8,
    DWRITE_PANOSE_FINIALS_TAPERED_CLOSED_LOOPS = 9,
    DWRITE_PANOSE_FINIALS_TAPERED_OPEN_LOOPS = 10,
    DWRITE_PANOSE_FINIALS_ROUND_NO_LOOPS = 11,
    DWRITE_PANOSE_FINIALS_ROUND_CLOSED_LOOPS = 12,
    DWRITE_PANOSE_FINIALS_ROUND_OPEN_LOOPS = 13
  DWRITE_PANOSE_XASCENT* = enum
    DWRITE_PANOSE_XASCENT_ANY = 0, DWRITE_PANOSE_XASCENT_NO_FIT = 1,
    DWRITE_PANOSE_XASCENT_VERY_LOW = 2, DWRITE_PANOSE_XASCENT_LOW = 3,
    DWRITE_PANOSE_XASCENT_MEDIUM = 4, DWRITE_PANOSE_XASCENT_HIGH = 5,
    DWRITE_PANOSE_XASCENT_VERY_HIGH = 6
  DWRITE_PANOSE_DECORATIVE_CLASS* = enum
    DWRITE_PANOSE_DECORATIVE_CLASS_ANY = 0,
    DWRITE_PANOSE_DECORATIVE_CLASS_NO_FIT = 1,
    DWRITE_PANOSE_DECORATIVE_CLASS_DERIVATIVE = 2,
    DWRITE_PANOSE_DECORATIVE_CLASS_NONSTANDARD_TOPOLOGY = 3,
    DWRITE_PANOSE_DECORATIVE_CLASS_NONSTANDARD_ELEMENTS = 4,
    DWRITE_PANOSE_DECORATIVE_CLASS_NONSTANDARD_ASPECT = 5,
    DWRITE_PANOSE_DECORATIVE_CLASS_INITIALS = 6,
    DWRITE_PANOSE_DECORATIVE_CLASS_CARTOON = 7,
    DWRITE_PANOSE_DECORATIVE_CLASS_PICTURE_STEMS = 8,
    DWRITE_PANOSE_DECORATIVE_CLASS_ORNAMENTED = 9,
    DWRITE_PANOSE_DECORATIVE_CLASS_TEXT_AND_BACKGROUND = 10,
    DWRITE_PANOSE_DECORATIVE_CLASS_COLLAGE = 11,
    DWRITE_PANOSE_DECORATIVE_CLASS_MONTAGE = 12
  DWRITE_PANOSE_ASPECT* = enum
    DWRITE_PANOSE_ASPECT_ANY = 0, DWRITE_PANOSE_ASPECT_NO_FIT = 1,
    DWRITE_PANOSE_ASPECT_SUPER_CONDENSED = 2,
    DWRITE_PANOSE_ASPECT_VERY_CONDENSED = 3, DWRITE_PANOSE_ASPECT_CONDENSED = 4,
    DWRITE_PANOSE_ASPECT_NORMAL = 5, DWRITE_PANOSE_ASPECT_EXTENDED = 6,
    DWRITE_PANOSE_ASPECT_VERY_EXTENDED = 7,
    DWRITE_PANOSE_ASPECT_SUPER_EXTENDED = 8, DWRITE_PANOSE_ASPECT_MONOSPACED = 9
  DWRITE_PANOSE_FILL* = enum
    DWRITE_PANOSE_FILL_ANY = 0, DWRITE_PANOSE_FILL_NO_FIT = 1,
    DWRITE_PANOSE_FILL_STANDARD_SOLID_FILL = 2, DWRITE_PANOSE_FILL_NO_FILL = 3,
    DWRITE_PANOSE_FILL_PATTERNED_FILL = 4, DWRITE_PANOSE_FILL_COMPLEX_FILL = 5,
    DWRITE_PANOSE_FILL_SHAPED_FILL = 6, DWRITE_PANOSE_FILL_DRAWN_DISTRESSED = 7
  DWRITE_PANOSE_LINING* = enum
    DWRITE_PANOSE_LINING_ANY = 0, DWRITE_PANOSE_LINING_NO_FIT = 1,
    DWRITE_PANOSE_LINING_NONE = 2, DWRITE_PANOSE_LINING_INLINE = 3,
    DWRITE_PANOSE_LINING_OUTLINE = 4, DWRITE_PANOSE_LINING_ENGRAVED = 5,
    DWRITE_PANOSE_LINING_SHADOW = 6, DWRITE_PANOSE_LINING_RELIEF = 7,
    DWRITE_PANOSE_LINING_BACKDROP = 8
  DWRITE_PANOSE_DECORATIVE_TOPOLOGY* = enum
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_ANY = 0,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_NO_FIT = 1,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_STANDARD = 2,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_SQUARE = 3,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_MULTIPLE_SEGMENT = 4,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_ART_DECO = 5,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_UNEVEN_WEIGHTING = 6,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_DIVERSE_ARMS = 7,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_DIVERSE_FORMS = 8,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_LOMBARDIC_FORMS = 9,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_UPPER_CASE_IN_LOWER_CASE = 10,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_IMPLIED_TOPOLOGY = 11,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_HORSESHOE_E_AND_A = 12,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_CURSIVE = 13,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_BLACKLETTER = 14,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_SWASH_VARIANCE = 15
  DWRITE_PANOSE_CHARACTER_RANGES* = enum
    DWRITE_PANOSE_CHARACTER_RANGES_ANY = 0,
    DWRITE_PANOSE_CHARACTER_RANGES_NO_FIT = 1,
    DWRITE_PANOSE_CHARACTER_RANGES_EXTENDED_COLLECTION = 2,
    DWRITE_PANOSE_CHARACTER_RANGES_LITERALS = 3,
    DWRITE_PANOSE_CHARACTER_RANGES_NO_LOWER_CASE = 4,
    DWRITE_PANOSE_CHARACTER_RANGES_SMALL_CAPS = 5
  DWRITE_PANOSE_SYMBOL_KIND* = enum
    DWRITE_PANOSE_SYMBOL_KIND_ANY = 0, DWRITE_PANOSE_SYMBOL_KIND_NO_FIT = 1,
    DWRITE_PANOSE_SYMBOL_KIND_MONTAGES = 2, DWRITE_PANOSE_SYMBOL_KIND_PICTURES = 3,
    DWRITE_PANOSE_SYMBOL_KIND_SHAPES = 4, DWRITE_PANOSE_SYMBOL_KIND_SCIENTIFIC = 5,
    DWRITE_PANOSE_SYMBOL_KIND_MUSIC = 6, DWRITE_PANOSE_SYMBOL_KIND_EXPERT = 7,
    DWRITE_PANOSE_SYMBOL_KIND_PATTERNS = 8, DWRITE_PANOSE_SYMBOL_KIND_BOARDERS = 9,
    DWRITE_PANOSE_SYMBOL_KIND_ICONS = 10, DWRITE_PANOSE_SYMBOL_KIND_LOGOS = 11,
    DWRITE_PANOSE_SYMBOL_KIND_INDUSTRY_SPECIFIC = 12
  DWRITE_PANOSE_SYMBOL_ASPECT_RATIO* = enum
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_ANY = 0,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_NO_FIT = 1,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_NO_WIDTH = 2,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_EXCEPTIONALLY_WIDE = 3,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_SUPER_WIDE = 4,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_VERY_WIDE = 5,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_WIDE = 6,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_NORMAL = 7,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_NARROW = 8,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_VERY_NARROW = 9
  DWRITE_OUTLINE_THRESHOLD* = enum
    DWRITE_OUTLINE_THRESHOLD_ANTIALIASED = 0, DWRITE_OUTLINE_THRESHOLD_ALIASED = 1
  DWRITE_BASELINE* = enum
    DWRITE_BASELINE_DEFAULT = 0, DWRITE_BASELINE_ROMAN = 1,
    DWRITE_BASELINE_CENTRAL = 2, DWRITE_BASELINE_MATH = 3,
    DWRITE_BASELINE_HANGING = 4, DWRITE_BASELINE_IDEOGRAPHIC_BOTTOM = 5,
    DWRITE_BASELINE_IDEOGRAPHIC_TOP = 6, DWRITE_BASELINE_MINIMUM = 7,
    DWRITE_BASELINE_MAXIMUM = 8
  DWRITE_VERTICAL_GLYPH_ORIENTATION* = enum
    DWRITE_VERTICAL_GLYPH_ORIENTATION_DEFAULT = 0,
    DWRITE_VERTICAL_GLYPH_ORIENTATION_STACKED = 1
  DWRITE_GLYPH_ORIENTATION_ANGLE* = enum
    DWRITE_GLYPH_ORIENTATION_ANGLE_0_DEGREES = 0,
    DWRITE_GLYPH_ORIENTATION_ANGLE_90_DEGREES = 1,
    DWRITE_GLYPH_ORIENTATION_ANGLE_180_DEGREES = 2,
    DWRITE_GLYPH_ORIENTATION_ANGLE_270_DEGREES = 3
  DWRITE_TEXT_ANTIALIAS_MODE* = enum
    DWRITE_TEXT_ANTIALIAS_MODE_CLEARTYPE = 0,
    DWRITE_TEXT_ANTIALIAS_MODE_GRAYSCALE = 1
  DWRITE_FONT_METRICS1* {.bycopy.} = object
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
    glyphBoxLeft*: INT16
    glyphBoxTop*: INT16
    glyphBoxRight*: INT16
    glyphBoxBottom*: INT16
    subscriptPositionX*: INT16
    subscriptPositionY*: INT16
    subscriptSizeX*: INT16
    subscriptSizeY*: INT16
    superscriptPositionX*: INT16
    superscriptPositionY*: INT16
    superscriptSizeX*: INT16
    superscriptSizeY*: INT16
    hasTypographicMetrics*: WINBOOL

  DWRITE_CARET_METRICS* {.bycopy.} = object
    slopeRise*: INT16
    slopeRun*: INT16
    offset*: INT16

  DWRITE_UNICODE_RANGE* {.bycopy.} = object
    first*: UINT32
    last*: UINT32

  DWRITE_SCRIPT_PROPERTIES* {.bycopy.} = object
    isoScriptCode*: UINT32
    isoScriptNumber*: UINT32
    clusterLookahead*: UINT32
    justificationCharacter*: UINT32
    restrictCaretToClusters* {.bitsize: 1.}: UINT32
    usesWordDividers* {.bitsize: 1.}: UINT32
    isDiscreteWriting* {.bitsize: 1.}: UINT32
    isBlockWriting* {.bitsize: 1.}: UINT32
    isDistributedWithinCluster* {.bitsize: 1.}: UINT32
    isConnectedWriting* {.bitsize: 1.}: UINT32
    isCursiveWriting* {.bitsize: 1.}: UINT32
    reserved* {.bitsize: 25.}: UINT32

  DWRITE_JUSTIFICATION_OPPORTUNITY* {.bycopy.} = object
    expansionMinimum*: FLOAT
    expansionMaximum*: FLOAT
    compressionMaximum*: FLOAT
    expansionPriority* {.bitsize: 8.}: UINT32
    compressionPriority* {.bitsize: 8.}: UINT32
    allowResidualExpansion* {.bitsize: 1.}: UINT32
    allowResidualCompression* {.bitsize: 1.}: UINT32
    applyToLeadingEdge* {.bitsize: 1.}: UINT32
    applyToTrailingEdge* {.bitsize: 1.}: UINT32
    reserved* {.bitsize: 12.}: UINT32

  DWRITE_PANOSE* {.bycopy, union.} = object
    values*: array[10, UINT8]
    familyKind*: UINT8
    text*: INNER_C_STRUCT_headers_4
    script*: INNER_C_STRUCT_headers_5
    decorative*: INNER_C_STRUCT_headers_6
    symbol*: INNER_C_STRUCT_headers_7

const
  DWRITE_PANOSE_FAMILY_PICTORIAL* = DWRITE_PANOSE_FAMILY_SYMBOL

const
  DWRITE_PANOSE_SERIF_STYLE_PERP_SANS* = DWRITE_PANOSE_SERIF_STYLE_PERPENDICULAR_SANS
  DWRITE_PANOSE_SERIF_STYLE_BONE* = DWRITE_PANOSE_SERIF_STYLE_OVAL

const
  DWRITE_PANOSE_WEIGHT_NORD* = DWRITE_PANOSE_WEIGHT_EXTRA_BLACK

const
  DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_HORZ* = DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_HORIZONTAL
  DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_VERT* = DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_VERTICAL
  DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_HORZ* = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_HORIZONTAL
  DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_WEDGE* = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_WEDGE
  DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_VERT* = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_VERTICAL
  DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_SINGLE_SERIF* = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_SINGLE_SERIF
  DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_DOUBLE_SERIF* = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_DOUBLE_SERIF

const
  DWRITE_PANOSE_XHEIGHT_CONSTANT_STD* = DWRITE_PANOSE_XHEIGHT_CONSTANT_STANDARD
  DWRITE_PANOSE_XHEIGHT_DUCKING_STD* = DWRITE_PANOSE_XHEIGHT_DUCKING_STANDARD

const IID_IDWriteFactory1* = IID(Data1:0x30572f99'i32, Data2:0xdac6, Data3:0x41db, Data4:[0xa1'u8, 0x6e, 0x04, 0x86, 0x30, 0x7e, 0x60, 0x6a])
const IID_IDWriteFontFace1* = IID(Data1:0xa71efdb4'i32, Data2:0x9fdb, Data3:0x4838, Data4:[0xad'u8, 0x90, 0xcf, 0xc3, 0xbe, 0x8c, 0x3d, 0xaf])
const IID_IDWriteFont1* = IID(Data1:0xacd16696'i32, Data2:0x8c14, Data3:0x4f5d, Data4:[0x87'u8, 0x7e, 0xfe, 0x3f, 0xc1, 0xd3, 0x27, 0x38])
const IID_IDWriteRenderingParams1* = IID(Data1:0x94413cf4'i32, Data2:0xa6fc, Data3:0x4248, Data4:[0x8b'u8, 0x50, 0x66, 0x74, 0x34, 0x8f, 0xca, 0xd3])
const IID_IDWriteTextAnalyzer1* = IID(Data1:0x80dad800'i32, Data2:0xe21f, Data3:0x4e83, Data4:[0x96'u8, 0xce, 0xbf, 0xcc, 0xe5, 0x00, 0xdb, 0x7c])
const IID_IDWriteTextAnalysisSource1* = IID(Data1:0x639cfad8'i32, Data2:0x0fb4, Data3:0x4b21, Data4:[0xa5'u8, 0x8a, 0x06, 0x79, 0x20, 0x12, 0x00, 0x09])
const IID_IDWriteTextAnalysisSink1* = IID(Data1:0xb0d941a0'i32, Data2:0x85e7, Data3:0x4d8b, Data4:[0x9f'u8, 0xd3, 0x5c, 0xed, 0x99, 0x34, 0x48, 0x2a])
const IID_IDWriteTextLayout1* = IID(Data1:0x9064d822'i32, Data2:0x80a7, Data3:0x465c, Data4:[0xa9'u8, 0x86, 0xdf, 0x65, 0xf7, 0x8b, 0x8f, 0xeb])
const IID_IDWriteBitmapRenderTarget1* = IID(Data1:0x791e8298'i32, Data2:0x3ef3, Data3:0x4230, Data4:[0x98'u8, 0x80, 0xc9, 0xbd, 0xec, 0xc4, 0x20, 0x64])
type
    IDWriteFactory1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFactory1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFactory1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFactory1): ULONG {.stdcall.}
        GetSystemFontCollection*: proc (This:ptr IDWriteFactory1, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
        CreateCustomFontCollection*: proc (This:ptr IDWriteFactory1, loader:ptr IDWriteFontCollectionLoader, key:pointer, key_size:UINT32, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        RegisterFontCollectionLoader*: proc (This:ptr IDWriteFactory1, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
        UnregisterFontCollectionLoader*: proc (This:ptr IDWriteFactory1, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
        CreateFontFileReference*: proc (This:ptr IDWriteFactory1, path:ptr WCHAR, writetime:ptr FILETIME, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
        CreateCustomFontFileReference*: proc (This:ptr IDWriteFactory1, ref1erence_key:pointer, key_size:UINT32, loader:ptr IDWriteFontFileLoader, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
        CreateFontFace*: proc (This:ptr IDWriteFactory1, facetype:DWRITE_FONT_FACE_TYPE, files_number:UINT32, font_files:ptr ptr IDWriteFontFile, index:UINT32, sim_flags:DWRITE_FONT_SIMULATIONS, font_face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
        CreateRenderingParams*: proc (This:ptr IDWriteFactory1, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        CreateMonitorRenderingParams*: proc (This:ptr IDWriteFactory1, monitor:HMONITOR, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory1, gamma:FLOAT, enhancedContrast:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        RegisterFontFileLoader*: proc (This:ptr IDWriteFactory1, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
        UnregisterFontFileLoader*: proc (This:ptr IDWriteFactory1, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
        CreateTextFormat*: proc (This:ptr IDWriteFactory1, family_name:ptr WCHAR, collection:ptr IDWriteFontCollection, weight:DWRITE_FONT_WEIGHT, style:DWRITE_FONT_STYLE, stretch:DWRITE_FONT_STRETCH, size:FLOAT, locale:ptr WCHAR, format:ptr ptr IDWriteTextFormat): HRESULT {.stdcall.}
        CreateTypography*: proc (This:ptr IDWriteFactory1, typography:ptr ptr IDWriteTypography): HRESULT {.stdcall.}
        GetGdiInterop*: proc (This:ptr IDWriteFactory1, gdi_interop:ptr ptr IDWriteGdiInterop): HRESULT {.stdcall.}
        CreateTextLayout*: proc (This:ptr IDWriteFactory1, str:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, max_width:FLOAT, max_height:FLOAT, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
        CreateGdiCompatibleTextLayout*: proc (This:ptr IDWriteFactory1, str:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, layout_width:FLOAT, layout_height:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
        CreateEllipsisTrimmingSign*: proc (This:ptr IDWriteFactory1, format:ptr IDWriteTextFormat, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
        CreateTextAnalyzer*: proc (This:ptr IDWriteFactory1, analyzer:ptr ptr IDWriteTextAnalyzer): HRESULT {.stdcall.}
        CreateNumberSubstitution*: proc (This:ptr IDWriteFactory1, method1:DWRITE_NUMBER_SUBSTITUTION_METHOD, locale:ptr WCHAR, ignore_user_override:BOOL, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
        CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory1, glyph_run:ptr DWRITE_GLYPH_RUN, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE, measuring_mode:DWRITE_MEASURING_MODE, baseline_x:FLOAT, baseline_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
        GetEudcFontCollection*: proc (This:ptr IDWriteFactory1, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
        IDWriteFactory1_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory1, gamma:FLOAT, enhcontrast:FLOAT, enhcontrast_grayscale:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams1): HRESULT {.stdcall.}
    IDWriteFactory1* = object
        lpVtbl*: ptr IDWriteFactory1Vtbl
    IDWriteFontFace1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFace1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFace1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFace1): ULONG {.stdcall.}
        GetType*: proc (This:ptr IDWriteFontFace1): DWRITE_FONT_FACE_TYPE {.stdcall.}
        GetFiles*: proc (This:ptr IDWriteFontFace1, number_of_files:ptr UINT32, fontfiles:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
        GetIndex*: proc (This:ptr IDWriteFontFace1): UINT32 {.stdcall.}
        GetSimulations*: proc (This:ptr IDWriteFontFace1): DWRITE_FONT_SIMULATIONS {.stdcall.}
        IsSymbolFont*: proc (This:ptr IDWriteFontFace1): BOOL {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteFontFace1, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
        GetGlyphCount*: proc (This:ptr IDWriteFontFace1): UINT16 {.stdcall.}
        GetDesignGlyphMetrics*: proc (This:ptr IDWriteFontFace1, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
        GetGlyphIndices*: proc (This:ptr IDWriteFontFace1, codepoints:ptr UINT32, count:UINT32, glyph_indices:ptr UINT16): HRESULT {.stdcall.}
        TryGetFontTable*: proc (This:ptr IDWriteFontFace1, table_tag:UINT32, table_data:ptr pointer, table_size:ptr UINT32, context:ptr pointer, exists:ptr BOOL): HRESULT {.stdcall.}
        ReleaseFontTable*: proc (This:ptr IDWriteFontFace1, table_context:pointer) {.stdcall.}
        GetGlyphRunOutline*: proc (This:ptr IDWriteFontFace1, emSize:FLOAT, glyph_indices:ptr UINT16, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET, glyph_count:UINT32, is_sideways:BOOL, is_rtl:BOOL, geometrysink:ptr IDWriteGeometrySink): HRESULT {.stdcall.}
        GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace1, emSize:FLOAT, pixels_per_dip:FLOAT, mode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
        GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace1, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS): HRESULT {.stdcall.}
        GetGdiCompatibleGlyphMetrics*: proc (This:ptr IDWriteFontFace1, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
        IDWriteFontFace1_GetMetrics*: proc (This:ptr IDWriteFontFace1, metrics:ptr DWRITE_FONT_METRICS1) {.stdcall.}
        IDWriteFontFace1_GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace1, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS1): HRESULT {.stdcall.}
        GetCaretMetrics*: proc (This:ptr IDWriteFontFace1, metrics:ptr DWRITE_CARET_METRICS) {.stdcall.}
        GetUnicodeRanges*: proc (This:ptr IDWriteFontFace1, max_count:UINT32, ranges:ptr DWRITE_UNICODE_RANGE, count:ptr UINT32): HRESULT {.stdcall.}
        IsMonospacedFont*: proc (This:ptr IDWriteFontFace1): BOOL {.stdcall.}
        GetDesignGlyphAdvances*: proc (This:ptr IDWriteFontFace1, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32, is_sideways:BOOL): HRESULT {.stdcall.}
        GetGdiCompatibleGlyphAdvances*: proc (This:ptr IDWriteFontFace1, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, is_sideways:BOOL, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32): HRESULT {.stdcall.}
        GetKerningPairAdjustments*: proc (This:ptr IDWriteFontFace1, glyph_count:UINT32, indices:ptr UINT16, adjustments:ptr INT32): HRESULT {.stdcall.}
        HasKerningPairs*: proc (This:ptr IDWriteFontFace1): BOOL {.stdcall.}
        IDWriteFontFace1_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace1, font_emsize:FLOAT, dpiX:FLOAT, dpiY:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuring_mode:DWRITE_MEASURING_MODE, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
        GetVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace1, glyph_count:UINT32, nominal_indices:ptr UINT16, vertical_indices:ptr UINT16): HRESULT {.stdcall.}
        HasVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace1): BOOL {.stdcall.}
    IDWriteFontFace1* = object
        lpVtbl*: ptr IDWriteFontFace1Vtbl
    IDWriteFont1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFont1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFont1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFont1): ULONG {.stdcall.}
        GetFontFamily*: proc (This:ptr IDWriteFont1, family:ptr ptr IDWriteFontFamily): HRESULT {.stdcall.}
        GetWeight*: proc (This:ptr IDWriteFont1): DWRITE_FONT_WEIGHT {.stdcall.}
        GetStretch*: proc (This:ptr IDWriteFont1): DWRITE_FONT_STRETCH {.stdcall.}
        GetStyle*: proc (This:ptr IDWriteFont1): DWRITE_FONT_STYLE {.stdcall.}
        IsSymbolFont*: proc (This:ptr IDWriteFont1): BOOL {.stdcall.}
        GetFaceNames*: proc (This:ptr IDWriteFont1, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
        GetInformationalStrings*: proc (This:ptr IDWriteFont1, strid:DWRITE_INFORMATIONAL_STRING_ID, strs:ptr ptr IDWriteLocalizedStrings, exists:ptr BOOL): HRESULT {.stdcall.}
        GetSimulations*: proc (This:ptr IDWriteFont1): DWRITE_FONT_SIMULATIONS {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteFont1, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
        HasCharacter*: proc (This:ptr IDWriteFont1, value:UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
        CreateFontFace*: proc (This:ptr IDWriteFont1, face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
        IDWriteFont1_GetMetrics*: proc (This:ptr IDWriteFont1, metrics:ptr DWRITE_FONT_METRICS1) {.stdcall.}
        GetPanose*: proc (This:ptr IDWriteFont1, panose:ptr DWRITE_PANOSE) {.stdcall.}
        GetUnicodeRanges*: proc (This:ptr IDWriteFont1, max_count:UINT32, ranges:ptr DWRITE_UNICODE_RANGE, count:ptr UINT32): HRESULT {.stdcall.}
        IsMonospacedFont*: proc (This:ptr IDWriteFont1): BOOL {.stdcall.}
    IDWriteFont1* = object
        lpVtbl*: ptr IDWriteFont1Vtbl
    IDWriteRenderingParams1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteRenderingParams1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteRenderingParams1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteRenderingParams1): ULONG {.stdcall.}
        GetGamma*: proc (This:ptr IDWriteRenderingParams1): FLOAT {.stdcall.}
        GetEnhancedContrast*: proc (This:ptr IDWriteRenderingParams1): FLOAT {.stdcall.}
        GetClearTypeLevel*: proc (This:ptr IDWriteRenderingParams1): FLOAT {.stdcall.}
        GetPixelGeometry*: proc (This:ptr IDWriteRenderingParams1): DWRITE_PIXEL_GEOMETRY {.stdcall.}
        GetRenderingMode*: proc (This:ptr IDWriteRenderingParams1): DWRITE_RENDERING_MODE {.stdcall.}
        GetGrayscaleEnhancedContrast*: proc (This:ptr IDWriteRenderingParams1): FLOAT {.stdcall.}
    IDWriteRenderingParams1* = object
        lpVtbl*: ptr IDWriteRenderingParams1Vtbl
    IDWriteTextAnalyzer1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextAnalyzer1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextAnalyzer1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextAnalyzer1): ULONG {.stdcall.}
        AnalyzeScript*: proc (This:ptr IDWriteTextAnalyzer1, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        AnalyzeBidi*: proc (This:ptr IDWriteTextAnalyzer1, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        AnalyzeNumberSubstitution*: proc (This:ptr IDWriteTextAnalyzer1, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        AnalyzeLineBreakpoints*: proc (This:ptr IDWriteTextAnalyzer1, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        GetGlyphs*: proc (This:ptr IDWriteTextAnalyzer1, text:ptr WCHAR, length:UINT32, font_face:ptr IDWriteFontFace, is_sideways:BOOL, is_rtl:BOOL, analysis:ptr DWRITE_SCRIPT_ANALYSIS, locale:ptr WCHAR, substitution:ptr IDWriteNumberSubstitution, features:ptr ptr DWRITE_TYPOGRAPHIC_FEATURES, feature_range_len:ptr UINT32, feature_ranges:UINT32, max_glyph_count:UINT32, clustermap:ptr UINT16, text_props:ptr DWRITE_SHAPING_TEXT_PROPERTIES, glyph_indices:ptr UINT16, glyph_props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, actual_glyph_count:ptr UINT32): HRESULT {.stdcall.}
        GetGlyphPlacements*: proc (This:ptr IDWriteTextAnalyzer1, text:ptr WCHAR, clustermap:ptr UINT16, props:ptr DWRITE_SHAPING_TEXT_PROPERTIES, text_len:UINT32, glyph_indices:ptr UINT16, glyph_props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, glyph_count:UINT32, font_face:ptr IDWriteFontFace, fontEmSize:FLOAT, is_sideways:BOOL, is_rtl:BOOL, analysis:ptr DWRITE_SCRIPT_ANALYSIS, locale:ptr WCHAR, features:ptr ptr DWRITE_TYPOGRAPHIC_FEATURES, feature_range_len:ptr UINT32, feature_ranges:UINT32, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        GetGdiCompatibleGlyphPlacements*: proc (This:ptr IDWriteTextAnalyzer1, text:ptr WCHAR, clustermap:ptr UINT16, props:ptr DWRITE_SHAPING_TEXT_PROPERTIES, text_len:UINT32, glyph_indices:ptr UINT16, glyph_props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, glyph_count:UINT32, font_face:ptr IDWriteFontFace, fontEmSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, is_sideways:BOOL, is_rtl:BOOL, analysis:ptr DWRITE_SCRIPT_ANALYSIS, locale:ptr WCHAR, features:ptr ptr DWRITE_TYPOGRAPHIC_FEATURES, feature_range_lengths:ptr UINT32, feature_ranges:UINT32, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        ApplyCharacterSpacing*: proc (This:ptr IDWriteTextAnalyzer1, leading_spacing:FLOAT, trailing_spacing:FLOAT, min_advance_width:FLOAT, len:UINT32, glyph_count:UINT32, clustermap:ptr UINT16, advances:ptr FLOAT, offsets:ptr DWRITE_GLYPH_OFFSET, props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, modified_advances:ptr FLOAT, modified_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        GetBaseline*: proc (This:ptr IDWriteTextAnalyzer1, face:ptr IDWriteFontFace, baseline:DWRITE_BASELINE, vertical:BOOL, is_simulation_allowed:BOOL, sa:DWRITE_SCRIPT_ANALYSIS, localeName:ptr WCHAR, baseline_coord:ptr INT32, exists:ptr BOOL): HRESULT {.stdcall.}
        AnalyzeVerticalGlyphOrientation*: proc (This:ptr IDWriteTextAnalyzer1, source:ptr IDWriteTextAnalysisSource1, text_pos:UINT32, len:UINT32, sink:ptr IDWriteTextAnalysisSink1): HRESULT {.stdcall.}
        GetGlyphOrientationTransform*: proc (This:ptr IDWriteTextAnalyzer1, angle:DWRITE_GLYPH_ORIENTATION_ANGLE, is_sideways:BOOL, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        GetScriptProperties*: proc (This:ptr IDWriteTextAnalyzer1, sa:DWRITE_SCRIPT_ANALYSIS, props:ptr DWRITE_SCRIPT_PROPERTIES): HRESULT {.stdcall.}
        GetTextComplexity*: proc (This:ptr IDWriteTextAnalyzer1, text:ptr WCHAR, len:UINT32, face:ptr IDWriteFontFace, is_simple:ptr BOOL, len_read:ptr UINT32, indices:ptr UINT16): HRESULT {.stdcall.}
        GetJustificationOpportunities*: proc (This:ptr IDWriteTextAnalyzer1, face:ptr IDWriteFontFace, font_em_size:FLOAT, sa:DWRITE_SCRIPT_ANALYSIS, length:UINT32, glyph_count:UINT32, text:ptr WCHAR, clustermap:ptr UINT16, prop:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, jo:ptr DWRITE_JUSTIFICATION_OPPORTUNITY): HRESULT {.stdcall.}
        JustifyGlyphAdvances*: proc (This:ptr IDWriteTextAnalyzer1, width:FLOAT, glyph_count:UINT32, jo:ptr DWRITE_JUSTIFICATION_OPPORTUNITY, advances:ptr FLOAT, offsets:ptr DWRITE_GLYPH_OFFSET, justifiedadvances:ptr FLOAT, justifiedoffsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        GetJustifiedGlyphs*: proc (This:ptr IDWriteTextAnalyzer1, face:ptr IDWriteFontFace, font_em_size:FLOAT, sa:DWRITE_SCRIPT_ANALYSIS, length:UINT32, glyph_count:UINT32, max_glyphcount:UINT32, clustermap:ptr UINT16, indices:ptr UINT16, advances:ptr FLOAT, justifiedadvances:ptr FLOAT, justifiedoffsets:ptr DWRITE_GLYPH_OFFSET, prop:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, actual_count:ptr UINT32, modified_clustermap:ptr UINT16, modified_indices:ptr UINT16, modified_advances:ptr FLOAT, modified_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
    IDWriteTextAnalyzer1* = object
        lpVtbl*: ptr IDWriteTextAnalyzer1Vtbl
    IDWriteTextAnalysisSource1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextAnalysisSource1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextAnalysisSource1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextAnalysisSource1): ULONG {.stdcall.}
        GetTextAtPosition*: proc (This:ptr IDWriteTextAnalysisSource1, position:UINT32, text:ptr ptr WCHAR, text_len:ptr UINT32): HRESULT {.stdcall.}
        GetTextBeforePosition*: proc (This:ptr IDWriteTextAnalysisSource1, position:UINT32, text:ptr ptr WCHAR, text_len:ptr UINT32): HRESULT {.stdcall.}
        GetParagraphReadingDirection*: proc (This:ptr IDWriteTextAnalysisSource1): DWRITE_READING_DIRECTION {.stdcall.}
        GetLocaleName*: proc (This:ptr IDWriteTextAnalysisSource1, position:UINT32, text_len:ptr UINT32, locale:ptr ptr WCHAR): HRESULT {.stdcall.}
        GetNumberSubstitution*: proc (This:ptr IDWriteTextAnalysisSource1, position:UINT32, text_len:ptr UINT32, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
        GetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextAnalysisSource1, pos:UINT32, length:ptr UINT32, orientation:ptr DWRITE_VERTICAL_GLYPH_ORIENTATION, bidi_level:ptr UINT8): HRESULT {.stdcall.}
    IDWriteTextAnalysisSource1* = object
        lpVtbl*: ptr IDWriteTextAnalysisSource1Vtbl
    IDWriteTextAnalysisSink1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextAnalysisSink1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextAnalysisSink1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextAnalysisSink1): ULONG {.stdcall.}
        SetScriptAnalysis*: proc (This:ptr IDWriteTextAnalysisSink1, position:UINT32, length:UINT32, scriptanalysis:ptr DWRITE_SCRIPT_ANALYSIS): HRESULT {.stdcall.}
        SetLineBreakpoints*: proc (This:ptr IDWriteTextAnalysisSink1, position:UINT32, length:UINT32, breakpoints:ptr DWRITE_LINE_BREAKPOINT): HRESULT {.stdcall.}
        SetBidiLevel*: proc (This:ptr IDWriteTextAnalysisSink1, position:UINT32, length:UINT32, explicitLevel:UINT8, resolvedLevel:UINT8): HRESULT {.stdcall.}
        SetNumberSubstitution*: proc (This:ptr IDWriteTextAnalysisSink1, position:UINT32, length:UINT32, substitution:ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
        SetGlyphOrientation*: proc (This:ptr IDWriteTextAnalysisSink1, pos:UINT32, length:UINT32, angle:DWRITE_GLYPH_ORIENTATION_ANGLE, adjusted_bidilevel:UINT8, is_sideways:BOOL, is_rtl:BOOL): HRESULT {.stdcall.}
    IDWriteTextAnalysisSink1* = object
        lpVtbl*: ptr IDWriteTextAnalysisSink1Vtbl
    IDWriteTextLayout1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextLayout1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextLayout1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextLayout1): ULONG {.stdcall.}
        SetTextAlignment*: proc (This:ptr IDWriteTextLayout1, alignment:DWRITE_TEXT_ALIGNMENT): HRESULT {.stdcall.}
        SetParagraphAlignment*: proc (This:ptr IDWriteTextLayout1, alignment:DWRITE_PARAGRAPH_ALIGNMENT): HRESULT {.stdcall.}
        SetWordWrapping*: proc (This:ptr IDWriteTextLayout1, wrapping:DWRITE_WORD_WRAPPING): HRESULT {.stdcall.}
        SetReadingDirection*: proc (This:ptr IDWriteTextLayout1, direction:DWRITE_READING_DIRECTION): HRESULT {.stdcall.}
        SetFlowDirection*: proc (This:ptr IDWriteTextLayout1, direction:DWRITE_FLOW_DIRECTION): HRESULT {.stdcall.}
        SetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout1, tabstop:FLOAT): HRESULT {.stdcall.}
        SetTrimming*: proc (This:ptr IDWriteTextLayout1, trimming:ptr DWRITE_TRIMMING, trimming_sign:ptr IDWriteInlineObject): HRESULT {.stdcall.}
        SetLineSpacing*: proc (This:ptr IDWriteTextLayout1, spacing:DWRITE_LINE_SPACING_METHOD, line_spacing:FLOAT, baseline:FLOAT): HRESULT {.stdcall.}
        GetTextAlignment*: proc (This:ptr IDWriteTextLayout1): DWRITE_TEXT_ALIGNMENT {.stdcall.}
        GetParagraphAlignment*: proc (This:ptr IDWriteTextLayout1): DWRITE_PARAGRAPH_ALIGNMENT {.stdcall.}
        GetWordWrapping*: proc (This:ptr IDWriteTextLayout1): DWRITE_WORD_WRAPPING {.stdcall.}
        GetReadingDirection*: proc (This:ptr IDWriteTextLayout1): DWRITE_READING_DIRECTION {.stdcall.}
        GetFlowDirection*: proc (This:ptr IDWriteTextLayout1): DWRITE_FLOW_DIRECTION {.stdcall.}
        GetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout1): FLOAT {.stdcall.}
        GetTrimming*: proc (This:ptr IDWriteTextLayout1, options:ptr DWRITE_TRIMMING, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
        GetLineSpacing*: proc (This:ptr IDWriteTextLayout1, method1:ptr DWRITE_LINE_SPACING_METHOD, spacing:ptr FLOAT, baseline:ptr FLOAT): HRESULT {.stdcall.}
        GetFontCollection*: proc (This:ptr IDWriteTextLayout1, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout1): UINT32 {.stdcall.}
        GetFontFamilyName*: proc (This:ptr IDWriteTextLayout1, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        GetFontWeight*: proc (This:ptr IDWriteTextLayout1): DWRITE_FONT_WEIGHT {.stdcall.}
        GetFontStyle*: proc (This:ptr IDWriteTextLayout1): DWRITE_FONT_STYLE {.stdcall.}
        GetFontStretch*: proc (This:ptr IDWriteTextLayout1): DWRITE_FONT_STRETCH {.stdcall.}
        GetFontSize*: proc (This:ptr IDWriteTextLayout1): FLOAT {.stdcall.}
        GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout1): UINT32 {.stdcall.}
        GetLocaleName*: proc (This:ptr IDWriteTextLayout1, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        SetMaxWidth*: proc (This:ptr IDWriteTextLayout1, maxWidth:FLOAT): HRESULT {.stdcall.}
        SetMaxHeight*: proc (This:ptr IDWriteTextLayout1, maxHeight:FLOAT): HRESULT {.stdcall.}
        SetFontCollection*: proc (This:ptr IDWriteTextLayout1, collection:ptr IDWriteFontCollection, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontFamilyName*: proc (This:ptr IDWriteTextLayout1, name:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontWeight*: proc (This:ptr IDWriteTextLayout1, weight:DWRITE_FONT_WEIGHT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontStyle*: proc (This:ptr IDWriteTextLayout1, style:DWRITE_FONT_STYLE, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontStretch*: proc (This:ptr IDWriteTextLayout1, stretch:DWRITE_FONT_STRETCH, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontSize*: proc (This:ptr IDWriteTextLayout1, size:FLOAT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetUnderline*: proc (This:ptr IDWriteTextLayout1, underline:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetStrikethrough*: proc (This:ptr IDWriteTextLayout1, strikethrough:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetDrawingEffect*: proc (This:ptr IDWriteTextLayout1, effect:pointer, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetInlineObject*: proc (This:ptr IDWriteTextLayout1, object1:ptr IDWriteInlineObject, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetTypography*: proc (This:ptr IDWriteTextLayout1, typography:ptr IDWriteTypography, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetLocaleName*: proc (This:ptr IDWriteTextLayout1, locale:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetMaxWidth*: proc (This:ptr IDWriteTextLayout1): FLOAT {.stdcall.}
        GetMaxHeight*: proc (This:ptr IDWriteTextLayout1): FLOAT {.stdcall.}
        IDWriteTextLayout_GetFontCollection*: proc (This:ptr IDWriteTextLayout1, pos:UINT32, collection:ptr ptr IDWriteFontCollection, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout1, pos:UINT32, len:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontFamilyName*: proc (This:ptr IDWriteTextLayout1, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontWeight*: proc (This:ptr IDWriteTextLayout1, position:UINT32, weight:ptr DWRITE_FONT_WEIGHT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontStyle*: proc (This:ptr IDWriteTextLayout1, currentPosition:UINT32, style:ptr DWRITE_FONT_STYLE, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontStretch*: proc (This:ptr IDWriteTextLayout1, position:UINT32, stretch:ptr DWRITE_FONT_STRETCH, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontSize*: proc (This:ptr IDWriteTextLayout1, position:UINT32, size:ptr FLOAT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetUnderline*: proc (This:ptr IDWriteTextLayout1, position:UINT32, has_underline:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetStrikethrough*: proc (This:ptr IDWriteTextLayout1, position:UINT32, has_strikethrough:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetDrawingEffect*: proc (This:ptr IDWriteTextLayout1, position:UINT32, effect:ptr pointer, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetInlineObject*: proc (This:ptr IDWriteTextLayout1, position:UINT32, object1:ptr ptr IDWriteInlineObject, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetTypography*: proc (This:ptr IDWriteTextLayout1, position:UINT32, typography:ptr ptr IDWriteTypography, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout1, position:UINT32, length:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetLocaleName*: proc (This:ptr IDWriteTextLayout1, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        Draw*: proc (This:ptr IDWriteTextLayout1, context:pointer, renderer:ptr IDWriteTextRenderer, originX:FLOAT, originY:FLOAT): HRESULT {.stdcall.}
        GetLineMetrics*: proc (This:ptr IDWriteTextLayout1, metrics:ptr DWRITE_LINE_METRICS, max_count:UINT32, actual_count:ptr UINT32): HRESULT {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteTextLayout1, metrics:ptr DWRITE_TEXT_METRICS): HRESULT {.stdcall.}
        GetOverhangMetrics*: proc (This:ptr IDWriteTextLayout1, overhangs:ptr DWRITE_OVERHANG_METRICS): HRESULT {.stdcall.}
        GetClusterMetrics*: proc (This:ptr IDWriteTextLayout1, metrics:ptr DWRITE_CLUSTER_METRICS, max_count:UINT32, act_count:ptr UINT32): HRESULT {.stdcall.}
        DetermineMinWidth*: proc (This:ptr IDWriteTextLayout1, min_width:ptr FLOAT): HRESULT {.stdcall.}
        HitTestPoint*: proc (This:ptr IDWriteTextLayout1, pointX:FLOAT, pointY:FLOAT, is_trailinghit:ptr BOOL, is_inside:ptr BOOL, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
        HitTestTextPosition*: proc (This:ptr IDWriteTextLayout1, textPosition:UINT32, is_trailinghit:BOOL, pointX:ptr FLOAT, pointY:ptr FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
        HitTestTextRange*: proc (This:ptr IDWriteTextLayout1, textPosition:UINT32, textLength:UINT32, originX:FLOAT, originY:FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS, max_metricscount:UINT32, actual_metricscount:ptr UINT32): HRESULT {.stdcall.}
        SetPairKerning*: proc (This:ptr IDWriteTextLayout1, is_pairkerning_enabled:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetPairKerning*: proc (This:ptr IDWriteTextLayout1, position:UINT32, is_pairkerning_enabled:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetCharacterSpacing*: proc (This:ptr IDWriteTextLayout1, leading_spacing:FLOAT, trailing_spacing:FLOAT, minimum_advance_width:FLOAT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetCharacterSpacing*: proc (This:ptr IDWriteTextLayout1, position:UINT32, leading_spacing:ptr FLOAT, trailing_spacing:ptr FLOAT, minimum_advance_width:ptr FLOAT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
    IDWriteTextLayout1* = object
        lpVtbl*: ptr IDWriteTextLayout1Vtbl
    IDWriteBitmapRenderTarget1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteBitmapRenderTarget1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteBitmapRenderTarget1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteBitmapRenderTarget1): ULONG {.stdcall.}
        DrawGlyphRun*: proc (This:ptr IDWriteBitmapRenderTarget1, baselineOriginX:FLOAT, baselineOriginY:FLOAT, measuring_mode:DWRITE_MEASURING_MODE, glyph_run:ptr DWRITE_GLYPH_RUN, params:ptr IDWriteRenderingParams, textColor:COLORREF, blackbox_rect:ptr RECT): HRESULT {.stdcall.}
        GetMemoryDC*: proc (This:ptr IDWriteBitmapRenderTarget1): HDC {.stdcall.}
        GetPixelsPerDip*: proc (This:ptr IDWriteBitmapRenderTarget1): FLOAT {.stdcall.}
        SetPixelsPerDip*: proc (This:ptr IDWriteBitmapRenderTarget1, pixels_per_dip:FLOAT): HRESULT {.stdcall.}
        GetCurrentTransform*: proc (This:ptr IDWriteBitmapRenderTarget1, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        SetCurrentTransform*: proc (This:ptr IDWriteBitmapRenderTarget1, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        GetSize*: proc (This:ptr IDWriteBitmapRenderTarget1, size:ptr SIZE): HRESULT {.stdcall.}
        Resize*: proc (This:ptr IDWriteBitmapRenderTarget1, width:UINT32, height:UINT32): HRESULT {.stdcall.}
        GetTextAntialiasMode*: proc (This:ptr IDWriteBitmapRenderTarget1): DWRITE_TEXT_ANTIALIAS_MODE {.stdcall.}
        SetTextAntialiasMode*: proc (This:ptr IDWriteBitmapRenderTarget1, mode:DWRITE_TEXT_ANTIALIAS_MODE): HRESULT {.stdcall.}
    IDWriteBitmapRenderTarget1* = object
        lpVtbl*: ptr IDWriteBitmapRenderTarget1Vtbl
