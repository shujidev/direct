import winim/lean
import dcommon, dwrite, dwrite_1
type
  DWRITE_OPTICAL_ALIGNMENT* = enum
    DWRITE_OPTICAL_ALIGNMENT_NONE = 0,
    DWRITE_OPTICAL_ALIGNMENT_NO_SIDE_BEARINGS = 1
  DWRITE_GRID_FIT_MODE* = enum
    DWRITE_GRID_FIT_MODE_DEFAULT = 0, DWRITE_GRID_FIT_MODE_DISABLED = 1,
    DWRITE_GRID_FIT_MODE_ENABLED = 2
  DWRITE_TEXT_METRICS1* {.bycopy.} = object
    left*: FLOAT
    top*: FLOAT
    width*: FLOAT
    widthIncludingTrailingWhitespace*: FLOAT
    height*: FLOAT
    layoutWidth*: FLOAT
    layoutHeight*: FLOAT
    maxBidiReorderingDepth*: UINT32
    lineCount*: UINT32
    heightIncludingTrailingWhitespace*: FLOAT

type D3DCOLORVALUE* {.bycopy.} = object
    r,g,b,a:FLOAT

type
  DWRITE_COLOR_F* = D3DCOLORVALUE
  DWRITE_COLOR_GLYPH_RUN* {.bycopy.} = object
    glyphRun*: DWRITE_GLYPH_RUN
    glyphRunDescription*: ptr DWRITE_GLYPH_RUN_DESCRIPTION
    baselineOriginX*: FLOAT
    baselineOriginY*: FLOAT
    runColor*: DWRITE_COLOR_F
    paletteIndex*: UINT16

const IID_IDWriteTextRenderer1* = IID(Data1:0xd3e0e934'i32, Data2:0x22a0, Data3:0x427e, Data4:[0xaa'u8, 0xe4, 0x7d, 0x95, 0x74, 0xb5, 0x9d, 0xb1])
const IID_IDWriteFontFallback* = IID(Data1:0xefa008f9'i32, Data2:0xf7a1, Data3:0x48bf, Data4:[0xb0'u8, 0x5c, 0xf2, 0x24, 0x71, 0x3c, 0xc0, 0xff])
const IID_IDWriteTextFormat1* = IID(Data1:0x5f174b49'i32, Data2:0x0d8b, Data3:0x4cfb, Data4:[0x8b'u8, 0xca, 0xf1, 0xcc, 0xe9, 0xd0, 0x6c, 0x67])
const IID_IDWriteTextLayout2* = IID(Data1:0x1093c18f'i32, Data2:0x8d5e, Data3:0x43f0, Data4:[0xb0'u8, 0x64, 0x09, 0x17, 0x31, 0x1b, 0x52, 0x5e])
const IID_IDWriteTextAnalyzer2* = IID(Data1:0x553a9ff3'i32, Data2:0x5693, Data3:0x4df7, Data4:[0xb5'u8, 0x2b, 0x74, 0x80, 0x6f, 0x7f, 0x2e, 0xb9])
const IID_IDWriteFontFallbackBuilder* = IID(Data1:0xfd882d06'i32, Data2:0x8aba, Data3:0x4fb8, Data4:[0xb8'u8, 0x49, 0x8b, 0xe8, 0xb7, 0x3e, 0x14, 0xde])
const IID_IDWriteFont2* = IID(Data1:0x29748ed6'i32, Data2:0x8c9c, Data3:0x4a6a, Data4:[0xbe'u8, 0x0b, 0xd9, 0x12, 0xe8, 0x53, 0x89, 0x44])
const IID_IDWriteFontFace2* = IID(Data1:0xd8b768ff'i32, Data2:0x64bc, Data3:0x4e66, Data4:[0x98'u8, 0x2b, 0xec, 0x8e, 0x87, 0xf6, 0x93, 0xf7])
const IID_IDWriteColorGlyphRunEnumerator* = IID(Data1:0xd31fbe17'i32, Data2:0xf157, Data3:0x41a2, Data4:[0x8d'u8, 0x24, 0xcb, 0x77, 0x9e, 0x05, 0x60, 0xe8])
const IID_IDWriteRenderingParams2* = IID(Data1:0xf9d711c3'i32, Data2:0x9777, Data3:0x40ae, Data4:[0x87'u8, 0xe8, 0x3e, 0x5a, 0xf9, 0xbf, 0x09, 0x48])
const IID_IDWriteFactory2* = IID(Data1:0x0439fc60'i32, Data2:0xca44, Data3:0x4994, Data4:[0x8d'u8, 0xee, 0x3a, 0x9a, 0xf7, 0xb7, 0x32, 0xec])
type
    IDWriteTextRenderer1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextRenderer1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextRenderer1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextRenderer1): ULONG {.stdcall.}
        IsPixelSnappingDisabled*: proc (This:ptr IDWriteTextRenderer1, client_drawingcontext:pointer, disabled:ptr BOOL): HRESULT {.stdcall.}
        GetCurrentTransform*: proc (This:ptr IDWriteTextRenderer1, client_drawingcontext:pointer, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        GetPixelsPerDip*: proc (This:ptr IDWriteTextRenderer1, client_drawingcontext:pointer, pixels_per_dip:ptr FLOAT): HRESULT {.stdcall.}
        DrawGlyphRun*: proc (This:ptr IDWriteTextRenderer1, client_drawingcontext:pointer, baselineOriginX:FLOAT, baselineOriginY:FLOAT, mode:DWRITE_MEASURING_MODE, glyph_run:ptr DWRITE_GLYPH_RUN, run_descr:ptr DWRITE_GLYPH_RUN_DESCRIPTION, drawing_effect:pointer): HRESULT {.stdcall.}
        DrawUnderline*: proc (This:ptr IDWriteTextRenderer1, client_drawingcontext:pointer, baselineOriginX:FLOAT, baselineOriginY:FLOAT, underline:ptr DWRITE_UNDERLINE, drawing_effect:pointer): HRESULT {.stdcall.}
        DrawStrikethrough*: proc (This:ptr IDWriteTextRenderer1, client_drawingcontext:pointer, baselineOriginX:FLOAT, baselineOriginY:FLOAT, strikethrough:ptr DWRITE_STRIKETHROUGH, drawing_effect:pointer): HRESULT {.stdcall.}
        DrawInlineObject*: proc (This:ptr IDWriteTextRenderer1, client_drawingcontext:pointer, originX:FLOAT, originY:FLOAT, object1:ptr IDWriteInlineObject, is_sideways:BOOL, is_rtl:BOOL, drawing_effect:pointer): HRESULT {.stdcall.}
        IDWriteTextRenderer1_DrawGlyphRun*: proc (This:ptr IDWriteTextRenderer1, context:pointer, originX:FLOAT, originY:FLOAT, angle:DWRITE_GLYPH_ORIENTATION_ANGLE, mode:DWRITE_MEASURING_MODE, run:ptr DWRITE_GLYPH_RUN, rundescr:ptr DWRITE_GLYPH_RUN_DESCRIPTION, effect:pointer): HRESULT {.stdcall.}
        IDWriteTextRenderer1_DrawUnderline*: proc (This:ptr IDWriteTextRenderer1, context:pointer, originX:FLOAT, originY:FLOAT, angle:DWRITE_GLYPH_ORIENTATION_ANGLE, underline:ptr DWRITE_UNDERLINE, effect:pointer): HRESULT {.stdcall.}
        IDWriteTextRenderer1_DrawStrikethrough*: proc (This:ptr IDWriteTextRenderer1, context:pointer, originX:FLOAT, originY:FLOAT, angle:DWRITE_GLYPH_ORIENTATION_ANGLE, strikethrough:ptr DWRITE_STRIKETHROUGH, effect:pointer): HRESULT {.stdcall.}
        IDWriteTextRenderer1_DrawInlineObject*: proc (This:ptr IDWriteTextRenderer1, context:pointer, originX:FLOAT, originY:FLOAT, angle:DWRITE_GLYPH_ORIENTATION_ANGLE, inlineObject:ptr IDWriteInlineObject, is_sideways:BOOL, is_rtl:BOOL, effect:pointer): HRESULT {.stdcall.}
    IDWriteTextRenderer1* = object
        lpVtbl*: ptr IDWriteTextRenderer1Vtbl
    IDWriteFontFallbackVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFallback, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFallback): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFallback): ULONG {.stdcall.}
        MapCharacters*: proc (This:ptr IDWriteFontFallback, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, basecollection:ptr IDWriteFontCollection, baseFamilyName:ptr WCHAR, baseWeight:DWRITE_FONT_WEIGHT, baseStyle:DWRITE_FONT_STYLE, baseStretch:DWRITE_FONT_STRETCH, mappedLength:ptr UINT32, mappedFont:ptr ptr IDWriteFont, scale:ptr FLOAT): HRESULT {.stdcall.}
    IDWriteFontFallback* = object
        lpVtbl*: ptr IDWriteFontFallbackVtbl
    IDWriteTextFormat1Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextFormat1, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextFormat1): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextFormat1): ULONG {.stdcall.}
        SetTextAlignment*: proc (This:ptr IDWriteTextFormat1, alignment:DWRITE_TEXT_ALIGNMENT): HRESULT {.stdcall.}
        SetParagraphAlignment*: proc (This:ptr IDWriteTextFormat1, alignment:DWRITE_PARAGRAPH_ALIGNMENT): HRESULT {.stdcall.}
        SetWordWrapping*: proc (This:ptr IDWriteTextFormat1, wrapping:DWRITE_WORD_WRAPPING): HRESULT {.stdcall.}
        SetReadingDirection*: proc (This:ptr IDWriteTextFormat1, direction:DWRITE_READING_DIRECTION): HRESULT {.stdcall.}
        SetFlowDirection*: proc (This:ptr IDWriteTextFormat1, direction:DWRITE_FLOW_DIRECTION): HRESULT {.stdcall.}
        SetIncrementalTabStop*: proc (This:ptr IDWriteTextFormat1, tabstop:FLOAT): HRESULT {.stdcall.}
        SetTrimming*: proc (This:ptr IDWriteTextFormat1, trimming:ptr DWRITE_TRIMMING, trimming_sign:ptr IDWriteInlineObject): HRESULT {.stdcall.}
        SetLineSpacing*: proc (This:ptr IDWriteTextFormat1, spacing:DWRITE_LINE_SPACING_METHOD, line_spacing:FLOAT, baseline:FLOAT): HRESULT {.stdcall.}
        GetTextAlignment*: proc (This:ptr IDWriteTextFormat1): DWRITE_TEXT_ALIGNMENT {.stdcall.}
        GetParagraphAlignment*: proc (This:ptr IDWriteTextFormat1): DWRITE_PARAGRAPH_ALIGNMENT {.stdcall.}
        GetWordWrapping*: proc (This:ptr IDWriteTextFormat1): DWRITE_WORD_WRAPPING {.stdcall.}
        GetReadingDirection*: proc (This:ptr IDWriteTextFormat1): DWRITE_READING_DIRECTION {.stdcall.}
        GetFlowDirection*: proc (This:ptr IDWriteTextFormat1): DWRITE_FLOW_DIRECTION {.stdcall.}
        GetIncrementalTabStop*: proc (This:ptr IDWriteTextFormat1): FLOAT {.stdcall.}
        GetTrimming*: proc (This:ptr IDWriteTextFormat1, options:ptr DWRITE_TRIMMING, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
        GetLineSpacing*: proc (This:ptr IDWriteTextFormat1, method1:ptr DWRITE_LINE_SPACING_METHOD, spacing:ptr FLOAT, baseline:ptr FLOAT): HRESULT {.stdcall.}
        GetFontCollection*: proc (This:ptr IDWriteTextFormat1, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        GetFontFamilyNameLength*: proc (This:ptr IDWriteTextFormat1): UINT32 {.stdcall.}
        GetFontFamilyName*: proc (This:ptr IDWriteTextFormat1, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        GetFontWeight*: proc (This:ptr IDWriteTextFormat1): DWRITE_FONT_WEIGHT {.stdcall.}
        GetFontStyle*: proc (This:ptr IDWriteTextFormat1): DWRITE_FONT_STYLE {.stdcall.}
        GetFontStretch*: proc (This:ptr IDWriteTextFormat1): DWRITE_FONT_STRETCH {.stdcall.}
        GetFontSize*: proc (This:ptr IDWriteTextFormat1): FLOAT {.stdcall.}
        GetLocaleNameLength*: proc (This:ptr IDWriteTextFormat1): UINT32 {.stdcall.}
        GetLocaleName*: proc (This:ptr IDWriteTextFormat1, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        SetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextFormat1, orientation:DWRITE_VERTICAL_GLYPH_ORIENTATION): HRESULT {.stdcall.}
        GetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextFormat1): DWRITE_VERTICAL_GLYPH_ORIENTATION {.stdcall.}
        SetLastLineWrapping*: proc (This:ptr IDWriteTextFormat1, lastline_wrapping_enabled:BOOL): HRESULT {.stdcall.}
        GetLastLineWrapping*: proc (This:ptr IDWriteTextFormat1): BOOL {.stdcall.}
        SetOpticalAlignment*: proc (This:ptr IDWriteTextFormat1, alignment:DWRITE_OPTICAL_ALIGNMENT): HRESULT {.stdcall.}
        GetOpticalAlignment*: proc (This:ptr IDWriteTextFormat1): DWRITE_OPTICAL_ALIGNMENT {.stdcall.}
        SetFontFallback*: proc (This:ptr IDWriteTextFormat1, fallback:ptr IDWriteFontFallback): HRESULT {.stdcall.}
        GetFontFallback*: proc (This:ptr IDWriteTextFormat1, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
    IDWriteTextFormat1* = object
        lpVtbl*: ptr IDWriteTextFormat1Vtbl
    IDWriteTextLayout2Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextLayout2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextLayout2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextLayout2): ULONG {.stdcall.}
        SetTextAlignment*: proc (This:ptr IDWriteTextLayout2, alignment:DWRITE_TEXT_ALIGNMENT): HRESULT {.stdcall.}
        SetParagraphAlignment*: proc (This:ptr IDWriteTextLayout2, alignment:DWRITE_PARAGRAPH_ALIGNMENT): HRESULT {.stdcall.}
        SetWordWrapping*: proc (This:ptr IDWriteTextLayout2, wrapping:DWRITE_WORD_WRAPPING): HRESULT {.stdcall.}
        SetReadingDirection*: proc (This:ptr IDWriteTextLayout2, direction:DWRITE_READING_DIRECTION): HRESULT {.stdcall.}
        SetFlowDirection*: proc (This:ptr IDWriteTextLayout2, direction:DWRITE_FLOW_DIRECTION): HRESULT {.stdcall.}
        SetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout2, tabstop:FLOAT): HRESULT {.stdcall.}
        SetTrimming*: proc (This:ptr IDWriteTextLayout2, trimming:ptr DWRITE_TRIMMING, trimming_sign:ptr IDWriteInlineObject): HRESULT {.stdcall.}
        SetLineSpacing*: proc (This:ptr IDWriteTextLayout2, spacing:DWRITE_LINE_SPACING_METHOD, line_spacing:FLOAT, baseline:FLOAT): HRESULT {.stdcall.}
        GetTextAlignment*: proc (This:ptr IDWriteTextLayout2): DWRITE_TEXT_ALIGNMENT {.stdcall.}
        GetParagraphAlignment*: proc (This:ptr IDWriteTextLayout2): DWRITE_PARAGRAPH_ALIGNMENT {.stdcall.}
        GetWordWrapping*: proc (This:ptr IDWriteTextLayout2): DWRITE_WORD_WRAPPING {.stdcall.}
        GetReadingDirection*: proc (This:ptr IDWriteTextLayout2): DWRITE_READING_DIRECTION {.stdcall.}
        GetFlowDirection*: proc (This:ptr IDWriteTextLayout2): DWRITE_FLOW_DIRECTION {.stdcall.}
        GetIncrementalTabStop*: proc (This:ptr IDWriteTextLayout2): FLOAT {.stdcall.}
        GetTrimming*: proc (This:ptr IDWriteTextLayout2, options:ptr DWRITE_TRIMMING, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
        GetLineSpacing*: proc (This:ptr IDWriteTextLayout2, method1:ptr DWRITE_LINE_SPACING_METHOD, spacing:ptr FLOAT, baseline:ptr FLOAT): HRESULT {.stdcall.}
        GetFontCollection*: proc (This:ptr IDWriteTextLayout2, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout2): UINT32 {.stdcall.}
        GetFontFamilyName*: proc (This:ptr IDWriteTextLayout2, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        GetFontWeight*: proc (This:ptr IDWriteTextLayout2): DWRITE_FONT_WEIGHT {.stdcall.}
        GetFontStyle*: proc (This:ptr IDWriteTextLayout2): DWRITE_FONT_STYLE {.stdcall.}
        GetFontStretch*: proc (This:ptr IDWriteTextLayout2): DWRITE_FONT_STRETCH {.stdcall.}
        GetFontSize*: proc (This:ptr IDWriteTextLayout2): FLOAT {.stdcall.}
        GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout2): UINT32 {.stdcall.}
        GetLocaleName*: proc (This:ptr IDWriteTextLayout2, name:ptr WCHAR, size:UINT32): HRESULT {.stdcall.}
        SetMaxWidth*: proc (This:ptr IDWriteTextLayout2, maxWidth:FLOAT): HRESULT {.stdcall.}
        SetMaxHeight*: proc (This:ptr IDWriteTextLayout2, maxHeight:FLOAT): HRESULT {.stdcall.}
        SetFontCollection*: proc (This:ptr IDWriteTextLayout2, collection:ptr IDWriteFontCollection, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontFamilyName*: proc (This:ptr IDWriteTextLayout2, name:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontWeight*: proc (This:ptr IDWriteTextLayout2, weight:DWRITE_FONT_WEIGHT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontStyle*: proc (This:ptr IDWriteTextLayout2, style:DWRITE_FONT_STYLE, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontStretch*: proc (This:ptr IDWriteTextLayout2, stretch:DWRITE_FONT_STRETCH, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetFontSize*: proc (This:ptr IDWriteTextLayout2, size:FLOAT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetUnderline*: proc (This:ptr IDWriteTextLayout2, underline:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetStrikethrough*: proc (This:ptr IDWriteTextLayout2, strikethrough:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetDrawingEffect*: proc (This:ptr IDWriteTextLayout2, effect:pointer, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetInlineObject*: proc (This:ptr IDWriteTextLayout2, object1:ptr IDWriteInlineObject, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetTypography*: proc (This:ptr IDWriteTextLayout2, typography:ptr IDWriteTypography, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetLocaleName*: proc (This:ptr IDWriteTextLayout2, locale:ptr WCHAR, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetMaxWidth*: proc (This:ptr IDWriteTextLayout2): FLOAT {.stdcall.}
        GetMaxHeight*: proc (This:ptr IDWriteTextLayout2): FLOAT {.stdcall.}
        IDWriteTextLayout_GetFontCollection*: proc (This:ptr IDWriteTextLayout2, pos:UINT32, collection:ptr ptr IDWriteFontCollection, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontFamilyNameLength*: proc (This:ptr IDWriteTextLayout2, pos:UINT32, len:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontFamilyName*: proc (This:ptr IDWriteTextLayout2, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontWeight*: proc (This:ptr IDWriteTextLayout2, position:UINT32, weight:ptr DWRITE_FONT_WEIGHT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontStyle*: proc (This:ptr IDWriteTextLayout2, currentPosition:UINT32, style:ptr DWRITE_FONT_STYLE, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontStretch*: proc (This:ptr IDWriteTextLayout2, position:UINT32, stretch:ptr DWRITE_FONT_STRETCH, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetFontSize*: proc (This:ptr IDWriteTextLayout2, position:UINT32, size:ptr FLOAT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetUnderline*: proc (This:ptr IDWriteTextLayout2, position:UINT32, has_underline:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetStrikethrough*: proc (This:ptr IDWriteTextLayout2, position:UINT32, has_strikethrough:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetDrawingEffect*: proc (This:ptr IDWriteTextLayout2, position:UINT32, effect:ptr pointer, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetInlineObject*: proc (This:ptr IDWriteTextLayout2, position:UINT32, object1:ptr ptr IDWriteInlineObject, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetTypography*: proc (This:ptr IDWriteTextLayout2, position:UINT32, typography:ptr ptr IDWriteTypography, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetLocaleNameLength*: proc (This:ptr IDWriteTextLayout2, position:UINT32, length:ptr UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout_GetLocaleName*: proc (This:ptr IDWriteTextLayout2, position:UINT32, name:ptr WCHAR, name_size:UINT32, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        Draw*: proc (This:ptr IDWriteTextLayout2, context:pointer, renderer:ptr IDWriteTextRenderer, originX:FLOAT, originY:FLOAT): HRESULT {.stdcall.}
        GetLineMetrics*: proc (This:ptr IDWriteTextLayout2, metrics:ptr DWRITE_LINE_METRICS, max_count:UINT32, actual_count:ptr UINT32): HRESULT {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteTextLayout2, metrics:ptr DWRITE_TEXT_METRICS): HRESULT {.stdcall.}
        GetOverhangMetrics*: proc (This:ptr IDWriteTextLayout2, overhangs:ptr DWRITE_OVERHANG_METRICS): HRESULT {.stdcall.}
        GetClusterMetrics*: proc (This:ptr IDWriteTextLayout2, metrics:ptr DWRITE_CLUSTER_METRICS, max_count:UINT32, act_count:ptr UINT32): HRESULT {.stdcall.}
        DetermineMinWidth*: proc (This:ptr IDWriteTextLayout2, min_width:ptr FLOAT): HRESULT {.stdcall.}
        HitTestPoint*: proc (This:ptr IDWriteTextLayout2, pointX:FLOAT, pointY:FLOAT, is_trailinghit:ptr BOOL, is_inside:ptr BOOL, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
        HitTestTextPosition*: proc (This:ptr IDWriteTextLayout2, textPosition:UINT32, is_trailinghit:BOOL, pointX:ptr FLOAT, pointY:ptr FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS): HRESULT {.stdcall.}
        HitTestTextRange*: proc (This:ptr IDWriteTextLayout2, textPosition:UINT32, textLength:UINT32, originX:FLOAT, originY:FLOAT, metrics:ptr DWRITE_HIT_TEST_METRICS, max_metricscount:UINT32, actual_metricscount:ptr UINT32): HRESULT {.stdcall.}
        SetPairKerning*: proc (This:ptr IDWriteTextLayout2, is_pairkerning_enabled:BOOL, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetPairKerning*: proc (This:ptr IDWriteTextLayout2, position:UINT32, is_pairkerning_enabled:ptr BOOL, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        SetCharacterSpacing*: proc (This:ptr IDWriteTextLayout2, leading_spacing:FLOAT, trailing_spacing:FLOAT, minimum_advance_width:FLOAT, range:DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        GetCharacterSpacing*: proc (This:ptr IDWriteTextLayout2, position:UINT32, leading_spacing:ptr FLOAT, trailing_spacing:ptr FLOAT, minimum_advance_width:ptr FLOAT, range:ptr DWRITE_TEXT_RANGE): HRESULT {.stdcall.}
        IDWriteTextLayout2_GetMetrics*: proc (This:ptr IDWriteTextLayout2, metrics:ptr DWRITE_TEXT_METRICS1): HRESULT {.stdcall.}
        SetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextLayout2, orientation:DWRITE_VERTICAL_GLYPH_ORIENTATION): HRESULT {.stdcall.}
        GetVerticalGlyphOrientation*: proc (This:ptr IDWriteTextLayout2): DWRITE_VERTICAL_GLYPH_ORIENTATION {.stdcall.}
        SetLastLineWrapping*: proc (This:ptr IDWriteTextLayout2, lastline_wrapping_enabled:BOOL): HRESULT {.stdcall.}
        GetLastLineWrapping*: proc (This:ptr IDWriteTextLayout2): BOOL {.stdcall.}
        SetOpticalAlignment*: proc (This:ptr IDWriteTextLayout2, alignment:DWRITE_OPTICAL_ALIGNMENT): HRESULT {.stdcall.}
        GetOpticalAlignment*: proc (This:ptr IDWriteTextLayout2): DWRITE_OPTICAL_ALIGNMENT {.stdcall.}
        SetFontFallback*: proc (This:ptr IDWriteTextLayout2, fallback:ptr IDWriteFontFallback): HRESULT {.stdcall.}
        GetFontFallback*: proc (This:ptr IDWriteTextLayout2, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
    IDWriteTextLayout2* = object
        lpVtbl*: ptr IDWriteTextLayout2Vtbl
    IDWriteTextAnalyzer2Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteTextAnalyzer2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteTextAnalyzer2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteTextAnalyzer2): ULONG {.stdcall.}
        AnalyzeScript*: proc (This:ptr IDWriteTextAnalyzer2, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        AnalyzeBidi*: proc (This:ptr IDWriteTextAnalyzer2, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        AnalyzeNumberSubstitution*: proc (This:ptr IDWriteTextAnalyzer2, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        AnalyzeLineBreakpoints*: proc (This:ptr IDWriteTextAnalyzer2, source:ptr IDWriteTextAnalysisSource, position:UINT32, length:UINT32, sink:ptr IDWriteTextAnalysisSink): HRESULT {.stdcall.}
        GetGlyphs*: proc (This:ptr IDWriteTextAnalyzer2, text:ptr WCHAR, length:UINT32, font_face:ptr IDWriteFontFace, is_sideways:BOOL, is_rtl:BOOL, analysis:ptr DWRITE_SCRIPT_ANALYSIS, locale:ptr WCHAR, substitution:ptr IDWriteNumberSubstitution, features:ptr ptr DWRITE_TYPOGRAPHIC_FEATURES, feature_range_len:ptr UINT32, feature_ranges:UINT32, max_glyph_count:UINT32, clustermap:ptr UINT16, text_props:ptr DWRITE_SHAPING_TEXT_PROPERTIES, glyph_indices:ptr UINT16, glyph_props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, actual_glyph_count:ptr UINT32): HRESULT {.stdcall.}
        GetGlyphPlacements*: proc (This:ptr IDWriteTextAnalyzer2, text:ptr WCHAR, clustermap:ptr UINT16, props:ptr DWRITE_SHAPING_TEXT_PROPERTIES, text_len:UINT32, glyph_indices:ptr UINT16, glyph_props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, glyph_count:UINT32, font_face:ptr IDWriteFontFace, fontEmSize:FLOAT, is_sideways:BOOL, is_rtl:BOOL, analysis:ptr DWRITE_SCRIPT_ANALYSIS, locale:ptr WCHAR, features:ptr ptr DWRITE_TYPOGRAPHIC_FEATURES, feature_range_len:ptr UINT32, feature_ranges:UINT32, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        GetGdiCompatibleGlyphPlacements*: proc (This:ptr IDWriteTextAnalyzer2, text:ptr WCHAR, clustermap:ptr UINT16, props:ptr DWRITE_SHAPING_TEXT_PROPERTIES, text_len:UINT32, glyph_indices:ptr UINT16, glyph_props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, glyph_count:UINT32, font_face:ptr IDWriteFontFace, fontEmSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, is_sideways:BOOL, is_rtl:BOOL, analysis:ptr DWRITE_SCRIPT_ANALYSIS, locale:ptr WCHAR, features:ptr ptr DWRITE_TYPOGRAPHIC_FEATURES, feature_range_lengths:ptr UINT32, feature_ranges:UINT32, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        ApplyCharacterSpacing*: proc (This:ptr IDWriteTextAnalyzer2, leading_spacing:FLOAT, trailing_spacing:FLOAT, min_advance_width:FLOAT, len:UINT32, glyph_count:UINT32, clustermap:ptr UINT16, advances:ptr FLOAT, offsets:ptr DWRITE_GLYPH_OFFSET, props:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, modified_advances:ptr FLOAT, modified_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        GetBaseline*: proc (This:ptr IDWriteTextAnalyzer2, face:ptr IDWriteFontFace, baseline:DWRITE_BASELINE, vertical:BOOL, is_simulation_allowed:BOOL, sa:DWRITE_SCRIPT_ANALYSIS, localeName:ptr WCHAR, baseline_coord:ptr INT32, exists:ptr BOOL): HRESULT {.stdcall.}
        AnalyzeVerticalGlyphOrientation*: proc (This:ptr IDWriteTextAnalyzer2, source:ptr IDWriteTextAnalysisSource1, text_pos:UINT32, len:UINT32, sink:ptr IDWriteTextAnalysisSink1): HRESULT {.stdcall.}
        GetGlyphOrientationTransform*: proc (This:ptr IDWriteTextAnalyzer2, angle:DWRITE_GLYPH_ORIENTATION_ANGLE, is_sideways:BOOL, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        GetScriptProperties*: proc (This:ptr IDWriteTextAnalyzer2, sa:DWRITE_SCRIPT_ANALYSIS, props:ptr DWRITE_SCRIPT_PROPERTIES): HRESULT {.stdcall.}
        GetTextComplexity*: proc (This:ptr IDWriteTextAnalyzer2, text:ptr WCHAR, len:UINT32, face:ptr IDWriteFontFace, is_simple:ptr BOOL, len_read:ptr UINT32, indices:ptr UINT16): HRESULT {.stdcall.}
        GetJustificationOpportunities*: proc (This:ptr IDWriteTextAnalyzer2, face:ptr IDWriteFontFace, font_em_size:FLOAT, sa:DWRITE_SCRIPT_ANALYSIS, length:UINT32, glyph_count:UINT32, text:ptr WCHAR, clustermap:ptr UINT16, prop:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, jo:ptr DWRITE_JUSTIFICATION_OPPORTUNITY): HRESULT {.stdcall.}
        JustifyGlyphAdvances*: proc (This:ptr IDWriteTextAnalyzer2, width:FLOAT, glyph_count:UINT32, jo:ptr DWRITE_JUSTIFICATION_OPPORTUNITY, advances:ptr FLOAT, offsets:ptr DWRITE_GLYPH_OFFSET, justifiedadvances:ptr FLOAT, justifiedoffsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        GetJustifiedGlyphs*: proc (This:ptr IDWriteTextAnalyzer2, face:ptr IDWriteFontFace, font_em_size:FLOAT, sa:DWRITE_SCRIPT_ANALYSIS, length:UINT32, glyph_count:UINT32, max_glyphcount:UINT32, clustermap:ptr UINT16, indices:ptr UINT16, advances:ptr FLOAT, justifiedadvances:ptr FLOAT, justifiedoffsets:ptr DWRITE_GLYPH_OFFSET, prop:ptr DWRITE_SHAPING_GLYPH_PROPERTIES, actual_count:ptr UINT32, modified_clustermap:ptr UINT16, modified_indices:ptr UINT16, modified_advances:ptr FLOAT, modified_offsets:ptr DWRITE_GLYPH_OFFSET): HRESULT {.stdcall.}
        IDWriteTextAnalyzer2_GetGlyphOrientationTransform*: proc (This:ptr IDWriteTextAnalyzer2, angle:DWRITE_GLYPH_ORIENTATION_ANGLE, is_sideways:BOOL, originX:FLOAT, originY:FLOAT, transform:ptr DWRITE_MATRIX): HRESULT {.stdcall.}
        GetTypographicFeatures*: proc (This:ptr IDWriteTextAnalyzer2, fontface:ptr IDWriteFontFace, analysis:DWRITE_SCRIPT_ANALYSIS, localeName:ptr WCHAR, max_tagcount:UINT32, actual_tagcount:ptr UINT32, tags:ptr DWRITE_FONT_FEATURE_TAG): HRESULT {.stdcall.}
        CheckTypographicFeature*: proc (This:ptr IDWriteTextAnalyzer2, fontface:ptr IDWriteFontFace, analysis:DWRITE_SCRIPT_ANALYSIS, localeName:ptr WCHAR, feature:DWRITE_FONT_FEATURE_TAG, glyph_count:UINT32, indices:ptr UINT16, feature_applies:ptr UINT8): HRESULT {.stdcall.}
    IDWriteTextAnalyzer2* = object
        lpVtbl*: ptr IDWriteTextAnalyzer2Vtbl
    IDWriteFontFallbackBuilderVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFallbackBuilder, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFallbackBuilder): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFallbackBuilder): ULONG {.stdcall.}
        AddMapping*: proc (This:ptr IDWriteFontFallbackBuilder, ranges:ptr DWRITE_UNICODE_RANGE, rangesCount:UINT32, targetFamilyNames:ptr ptr WCHAR, targetFamilyNamesCount:UINT32, collection:ptr IDWriteFontCollection, localeName:ptr WCHAR, baseFamilyName:ptr WCHAR, scale:FLOAT): HRESULT {.stdcall.}
        AddMappings*: proc (This:ptr IDWriteFontFallbackBuilder, fallback:ptr IDWriteFontFallback): HRESULT {.stdcall.}
        CreateFontFallback*: proc (This:ptr IDWriteFontFallbackBuilder, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
    IDWriteFontFallbackBuilder* = object
        lpVtbl*: ptr IDWriteFontFallbackBuilderVtbl
    IDWriteFont2Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFont2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFont2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFont2): ULONG {.stdcall.}
        GetFontFamily*: proc (This:ptr IDWriteFont2, family:ptr ptr IDWriteFontFamily): HRESULT {.stdcall.}
        GetWeight*: proc (This:ptr IDWriteFont2): DWRITE_FONT_WEIGHT {.stdcall.}
        GetStretch*: proc (This:ptr IDWriteFont2): DWRITE_FONT_STRETCH {.stdcall.}
        GetStyle*: proc (This:ptr IDWriteFont2): DWRITE_FONT_STYLE {.stdcall.}
        IsSymbolFont*: proc (This:ptr IDWriteFont2): BOOL {.stdcall.}
        GetFaceNames*: proc (This:ptr IDWriteFont2, names:ptr ptr IDWriteLocalizedStrings): HRESULT {.stdcall.}
        GetInformationalStrings*: proc (This:ptr IDWriteFont2, strid:DWRITE_INFORMATIONAL_STRING_ID, strs:ptr ptr IDWriteLocalizedStrings, exists:ptr BOOL): HRESULT {.stdcall.}
        GetSimulations*: proc (This:ptr IDWriteFont2): DWRITE_FONT_SIMULATIONS {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteFont2, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
        HasCharacter*: proc (This:ptr IDWriteFont2, value:UINT32, exists:ptr BOOL): HRESULT {.stdcall.}
        CreateFontFace*: proc (This:ptr IDWriteFont2, face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
        IDWriteFont1_GetMetrics*: proc (This:ptr IDWriteFont2, metrics:ptr DWRITE_FONT_METRICS1) {.stdcall.}
        GetPanose*: proc (This:ptr IDWriteFont2, panose:ptr DWRITE_PANOSE) {.stdcall.}
        GetUnicodeRanges*: proc (This:ptr IDWriteFont2, max_count:UINT32, ranges:ptr DWRITE_UNICODE_RANGE, count:ptr UINT32): HRESULT {.stdcall.}
        IsMonospacedFont*: proc (This:ptr IDWriteFont2): BOOL {.stdcall.}
        IsColorFont*: proc (This:ptr IDWriteFont2): BOOL {.stdcall.}
    IDWriteFont2* = object
        lpVtbl*: ptr IDWriteFont2Vtbl
    IDWriteFontFace2Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFontFace2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFontFace2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFontFace2): ULONG {.stdcall.}
        GetType*: proc (This:ptr IDWriteFontFace2): DWRITE_FONT_FACE_TYPE {.stdcall.}
        GetFiles*: proc (This:ptr IDWriteFontFace2, number_of_files:ptr UINT32, fontfiles:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
        GetIndex*: proc (This:ptr IDWriteFontFace2): UINT32 {.stdcall.}
        GetSimulations*: proc (This:ptr IDWriteFontFace2): DWRITE_FONT_SIMULATIONS {.stdcall.}
        IsSymbolFont*: proc (This:ptr IDWriteFontFace2): BOOL {.stdcall.}
        GetMetrics*: proc (This:ptr IDWriteFontFace2, metrics:ptr DWRITE_FONT_METRICS) {.stdcall.}
        GetGlyphCount*: proc (This:ptr IDWriteFontFace2): UINT16 {.stdcall.}
        GetDesignGlyphMetrics*: proc (This:ptr IDWriteFontFace2, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
        GetGlyphIndices*: proc (This:ptr IDWriteFontFace2, codepoints:ptr UINT32, count:UINT32, glyph_indices:ptr UINT16): HRESULT {.stdcall.}
        TryGetFontTable*: proc (This:ptr IDWriteFontFace2, table_tag:UINT32, table_data:ptr pointer, table_size:ptr UINT32, context:ptr pointer, exists:ptr BOOL): HRESULT {.stdcall.}
        ReleaseFontTable*: proc (This:ptr IDWriteFontFace2, table_context:pointer) {.stdcall.}
        GetGlyphRunOutline*: proc (This:ptr IDWriteFontFace2, emSize:FLOAT, glyph_indices:ptr UINT16, glyph_advances:ptr FLOAT, glyph_offsets:ptr DWRITE_GLYPH_OFFSET, glyph_count:UINT32, is_sideways:BOOL, is_rtl:BOOL, geometrysink:ptr IDWriteGeometrySink): HRESULT {.stdcall.}
        GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace2, emSize:FLOAT, pixels_per_dip:FLOAT, mode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
        GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace2, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS): HRESULT {.stdcall.}
        GetGdiCompatibleGlyphMetrics*: proc (This:ptr IDWriteFontFace2, emSize:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, glyph_indices:ptr UINT16, glyph_count:UINT32, metrics:ptr DWRITE_GLYPH_METRICS, is_sideways:BOOL): HRESULT {.stdcall.}
        IDWriteFontFace1_GetMetrics*: proc (This:ptr IDWriteFontFace2, metrics:ptr DWRITE_FONT_METRICS1) {.stdcall.}
        IDWriteFontFace1_GetGdiCompatibleMetrics*: proc (This:ptr IDWriteFontFace2, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, metrics:ptr DWRITE_FONT_METRICS1): HRESULT {.stdcall.}
        GetCaretMetrics*: proc (This:ptr IDWriteFontFace2, metrics:ptr DWRITE_CARET_METRICS) {.stdcall.}
        GetUnicodeRanges*: proc (This:ptr IDWriteFontFace2, max_count:UINT32, ranges:ptr DWRITE_UNICODE_RANGE, count:ptr UINT32): HRESULT {.stdcall.}
        IsMonospacedFont*: proc (This:ptr IDWriteFontFace2): BOOL {.stdcall.}
        GetDesignGlyphAdvances*: proc (This:ptr IDWriteFontFace2, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32, is_sideways:BOOL): HRESULT {.stdcall.}
        GetGdiCompatibleGlyphAdvances*: proc (This:ptr IDWriteFontFace2, em_size:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, is_sideways:BOOL, glyph_count:UINT32, indices:ptr UINT16, advances:ptr INT32): HRESULT {.stdcall.}
        GetKerningPairAdjustments*: proc (This:ptr IDWriteFontFace2, glyph_count:UINT32, indices:ptr UINT16, adjustments:ptr INT32): HRESULT {.stdcall.}
        HasKerningPairs*: proc (This:ptr IDWriteFontFace2): BOOL {.stdcall.}
        IDWriteFontFace1_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace2, font_emsize:FLOAT, dpiX:FLOAT, dpiY:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuring_mode:DWRITE_MEASURING_MODE, rendering_mode:ptr DWRITE_RENDERING_MODE): HRESULT {.stdcall.}
        GetVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace2, glyph_count:UINT32, nominal_indices:ptr UINT16, vertical_indices:ptr UINT16): HRESULT {.stdcall.}
        HasVerticalGlyphVariants*: proc (This:ptr IDWriteFontFace2): BOOL {.stdcall.}
        IsColorFont*: proc (This:ptr IDWriteFontFace2): BOOL {.stdcall.}
        GetColorPaletteCount*: proc (This:ptr IDWriteFontFace2): UINT32 {.stdcall.}
        GetPaletteEntryCount*: proc (This:ptr IDWriteFontFace2): UINT32 {.stdcall.}
        GetPaletteEntries*: proc (This:ptr IDWriteFontFace2, palette_index:UINT32, first_entry_index:UINT32, entry_count:UINT32, entries:ptr DWRITE_COLOR_F): HRESULT {.stdcall.}
        IDWriteFontFace2_GetRecommendedRenderingMode*: proc (This:ptr IDWriteFontFace2, fontEmSize:FLOAT, dpiX:FLOAT, dpiY:FLOAT, transform:ptr DWRITE_MATRIX, is_sideways:BOOL, threshold:DWRITE_OUTLINE_THRESHOLD, measuringmode:DWRITE_MEASURING_MODE, params:ptr IDWriteRenderingParams, renderingmode:ptr DWRITE_RENDERING_MODE, gridfitmode:ptr DWRITE_GRID_FIT_MODE): HRESULT {.stdcall.}
    IDWriteFontFace2* = object
        lpVtbl*: ptr IDWriteFontFace2Vtbl
    IDWriteColorGlyphRunEnumeratorVtbl* = object
        QueryInterface*: proc (This:ptr IDWriteColorGlyphRunEnumerator, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteColorGlyphRunEnumerator): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteColorGlyphRunEnumerator): ULONG {.stdcall.}
        MoveNext*: proc (This:ptr IDWriteColorGlyphRunEnumerator, hasRun:ptr BOOL): HRESULT {.stdcall.}
        GetCurrentRun*: proc (This:ptr IDWriteColorGlyphRunEnumerator, run:ptr ptr DWRITE_COLOR_GLYPH_RUN): HRESULT {.stdcall.}
    IDWriteColorGlyphRunEnumerator* = object
        lpVtbl*: ptr IDWriteColorGlyphRunEnumeratorVtbl
    IDWriteRenderingParams2Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteRenderingParams2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteRenderingParams2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteRenderingParams2): ULONG {.stdcall.}
        GetGamma*: proc (This:ptr IDWriteRenderingParams2): FLOAT {.stdcall.}
        GetEnhancedContrast*: proc (This:ptr IDWriteRenderingParams2): FLOAT {.stdcall.}
        GetClearTypeLevel*: proc (This:ptr IDWriteRenderingParams2): FLOAT {.stdcall.}
        GetPixelGeometry*: proc (This:ptr IDWriteRenderingParams2): DWRITE_PIXEL_GEOMETRY {.stdcall.}
        GetRenderingMode*: proc (This:ptr IDWriteRenderingParams2): DWRITE_RENDERING_MODE {.stdcall.}
        GetGrayscaleEnhancedContrast*: proc (This:ptr IDWriteRenderingParams2): FLOAT {.stdcall.}
        GetGridFitMode*: proc (This:ptr IDWriteRenderingParams2): DWRITE_GRID_FIT_MODE {.stdcall.}
    IDWriteRenderingParams2* = object
        lpVtbl*: ptr IDWriteRenderingParams2Vtbl
    IDWriteFactory2Vtbl* = object
        QueryInterface*: proc (This:ptr IDWriteFactory2, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (This:ptr IDWriteFactory2): ULONG {.stdcall.}
        Release*: proc (This:ptr IDWriteFactory2): ULONG {.stdcall.}
        GetSystemFontCollection*: proc (This:ptr IDWriteFactory2, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
        CreateCustomFontCollection*: proc (This:ptr IDWriteFactory2, loader:ptr IDWriteFontCollectionLoader, key:pointer, key_size:UINT32, collection:ptr ptr IDWriteFontCollection): HRESULT {.stdcall.}
        RegisterFontCollectionLoader*: proc (This:ptr IDWriteFactory2, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
        UnregisterFontCollectionLoader*: proc (This:ptr IDWriteFactory2, loader:ptr IDWriteFontCollectionLoader): HRESULT {.stdcall.}
        CreateFontFileReference*: proc (This:ptr IDWriteFactory2, path:ptr WCHAR, writetime:ptr FILETIME, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
        CreateCustomFontFileReference*: proc (This:ptr IDWriteFactory2, ref1erence_key:pointer, key_size:UINT32, loader:ptr IDWriteFontFileLoader, font_file:ptr ptr IDWriteFontFile): HRESULT {.stdcall.}
        CreateFontFace*: proc (This:ptr IDWriteFactory2, facetype:DWRITE_FONT_FACE_TYPE, files_number:UINT32, font_files:ptr ptr IDWriteFontFile, index:UINT32, sim_flags:DWRITE_FONT_SIMULATIONS, font_face:ptr ptr IDWriteFontFace): HRESULT {.stdcall.}
        CreateRenderingParams*: proc (This:ptr IDWriteFactory2, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        CreateMonitorRenderingParams*: proc (This:ptr IDWriteFactory2, monitor:HMONITOR, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory2, gamma:FLOAT, enhancedContrast:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams): HRESULT {.stdcall.}
        RegisterFontFileLoader*: proc (This:ptr IDWriteFactory2, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
        UnregisterFontFileLoader*: proc (This:ptr IDWriteFactory2, loader:ptr IDWriteFontFileLoader): HRESULT {.stdcall.}
        CreateTextFormat*: proc (This:ptr IDWriteFactory2, family_name:ptr WCHAR, collection:ptr IDWriteFontCollection, weight:DWRITE_FONT_WEIGHT, style:DWRITE_FONT_STYLE, stretch:DWRITE_FONT_STRETCH, size:FLOAT, locale:ptr WCHAR, format:ptr ptr IDWriteTextFormat): HRESULT {.stdcall.}
        CreateTypography*: proc (This:ptr IDWriteFactory2, typography:ptr ptr IDWriteTypography): HRESULT {.stdcall.}
        GetGdiInterop*: proc (This:ptr IDWriteFactory2, gdi_interop:ptr ptr IDWriteGdiInterop): HRESULT {.stdcall.}
        CreateTextLayout*: proc (This:ptr IDWriteFactory2, str:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, max_width:FLOAT, max_height:FLOAT, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
        CreateGdiCompatibleTextLayout*: proc (This:ptr IDWriteFactory2, str:ptr WCHAR, len:UINT32, format:ptr IDWriteTextFormat, layout_width:FLOAT, layout_height:FLOAT, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, use_gdi_natural:BOOL, layout:ptr ptr IDWriteTextLayout): HRESULT {.stdcall.}
        CreateEllipsisTrimmingSign*: proc (This:ptr IDWriteFactory2, format:ptr IDWriteTextFormat, trimming_sign:ptr ptr IDWriteInlineObject): HRESULT {.stdcall.}
        CreateTextAnalyzer*: proc (This:ptr IDWriteFactory2, analyzer:ptr ptr IDWriteTextAnalyzer): HRESULT {.stdcall.}
        CreateNumberSubstitution*: proc (This:ptr IDWriteFactory2, method1:DWRITE_NUMBER_SUBSTITUTION_METHOD, locale:ptr WCHAR, ignore_user_override:BOOL, substitution:ptr ptr IDWriteNumberSubstitution): HRESULT {.stdcall.}
        CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory2, glyph_run:ptr DWRITE_GLYPH_RUN, pixels_per_dip:FLOAT, transform:ptr DWRITE_MATRIX, rendering_mode:DWRITE_RENDERING_MODE, measuring_mode:DWRITE_MEASURING_MODE, baseline_x:FLOAT, baseline_y:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
        GetEudcFontCollection*: proc (This:ptr IDWriteFactory2, collection:ptr ptr IDWriteFontCollection, check_for_updates:BOOL): HRESULT {.stdcall.}
        IDWriteFactory1_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory2, gamma:FLOAT, enhcontrast:FLOAT, enhcontrast_grayscale:FLOAT, cleartype_level:FLOAT, geometry:DWRITE_PIXEL_GEOMETRY, mode:DWRITE_RENDERING_MODE, params:ptr ptr IDWriteRenderingParams1): HRESULT {.stdcall.}
        GetSystemFontFallback*: proc (This:ptr IDWriteFactory2, fallback:ptr ptr IDWriteFontFallback): HRESULT {.stdcall.}
        CreateFontFallbackBuilder*: proc (This:ptr IDWriteFactory2, fallbackbuilder:ptr ptr IDWriteFontFallbackBuilder): HRESULT {.stdcall.}
        TranslateColorGlyphRun*: proc (This:ptr IDWriteFactory2, originX:FLOAT, originY:FLOAT, run:ptr DWRITE_GLYPH_RUN, rundescr:ptr DWRITE_GLYPH_RUN_DESCRIPTION, mode:DWRITE_MEASURING_MODE, transform:ptr DWRITE_MATRIX, palette_index:UINT32, colorlayers:ptr ptr IDWriteColorGlyphRunEnumerator): HRESULT {.stdcall.}
        IDWriteFactory2_CreateCustomRenderingParams*: proc (This:ptr IDWriteFactory2, gamma:FLOAT, contrast:FLOAT, grayscalecontrast:FLOAT, cleartypeLevel:FLOAT, pixelGeometry:DWRITE_PIXEL_GEOMETRY, renderingMode:DWRITE_RENDERING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, params:ptr ptr IDWriteRenderingParams2): HRESULT {.stdcall.}
        IDWriteFactory2_CreateGlyphRunAnalysis*: proc (This:ptr IDWriteFactory2, run:ptr DWRITE_GLYPH_RUN, transform:ptr DWRITE_MATRIX, renderingMode:DWRITE_RENDERING_MODE, measuringMode:DWRITE_MEASURING_MODE, gridFitMode:DWRITE_GRID_FIT_MODE, antialiasMode:DWRITE_TEXT_ANTIALIAS_MODE, originX:FLOAT, originY:FLOAT, analysis:ptr ptr IDWriteGlyphRunAnalysis): HRESULT {.stdcall.}
    IDWriteFactory2* = object
        lpVtbl*: ptr IDWriteFactory2Vtbl
