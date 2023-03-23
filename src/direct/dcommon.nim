
import winim/lean
import dxgiformat
import dxgitype

type IDXGISurface = object

type
  #~ POINT* {.bycopy.} = object
    #~ x*: LONG
    #~ y*: LONG

  #~ RECT* {.bycopy.} = object
    #~ left*: LONG
    #~ top*: LONG
    #~ right*: LONG
    #~ bottom*: LONG

  DWRITE_MEASURING_MODE* = enum
    DWRITE_MEASURING_MODE_NATURAL = 0, DWRITE_MEASURING_MODE_GDI_CLASSIC = 1,
    DWRITE_MEASURING_MODE_GDI_NATURAL = 2
  DWRITE_GLYPH_IMAGE_FORMATS* = enum
    DWRITE_GLYPH_IMAGE_FORMATS_NONE = 0,
    DWRITE_GLYPH_IMAGE_FORMATS_TRUETYPE = 1 shl 0,
    DWRITE_GLYPH_IMAGE_FORMATS_CFF = 1 shl 1,
    DWRITE_GLYPH_IMAGE_FORMATS_COLR = 1 shl 2,
    DWRITE_GLYPH_IMAGE_FORMATS_SVG = 1 shl 3,
    DWRITE_GLYPH_IMAGE_FORMATS_PNG = 1 shl 4,
    DWRITE_GLYPH_IMAGE_FORMATS_JPEG = 1 shl 5,
    DWRITE_GLYPH_IMAGE_FORMATS_TIFF = 1 shl 6,
    DWRITE_GLYPH_IMAGE_FORMATS_PREMULTIPLIED_B8G8R8A8 = 1 shl 7
  D2D1_ALPHA_MODE* = enum
    D2D1_ALPHA_MODE_UNKNOWN = 0, D2D1_ALPHA_MODE_PREMULTIPLIED = 1,
    D2D1_ALPHA_MODE_STRAIGHT = 2, D2D1_ALPHA_MODE_IGNORE = 3,
    D2D1_ALPHA_MODE_FORCE_DWORD = 0xffffffff
  D2D1_PIXEL_FORMAT* {.bycopy.} = object
    format*: DXGI_FORMAT
    alphaMode*: D2D1_ALPHA_MODE


type 
  D2D_POINT_2U* = object 
    x*: UINT32
    y*: UINT32
    
type 
  D2D_POINT_2F* = object 
    x*: FLOAT
    y*: FLOAT

  D2D_POINT_2L* = POINT
    
  D2D_VECTOR_2F* {.bycopy.} = object
    x*: cfloat
    y*: cfloat

  D2D_VECTOR_3F* {.bycopy.} = object
    x*: cfloat
    y*: cfloat
    z*: cfloat

  D2D_VECTOR_4F* {.bycopy.} = object
    x*: cfloat
    y*: cfloat
    z*: cfloat
    w*: cfloat

type 
  D2D_RECT_F* = object 
    left*: FLOAT
    top*: FLOAT
    right*: FLOAT
    bottom*: FLOAT

type 
  D2D_RECT_U* = object 
    left*: UINT32
    top*: UINT32
    right*: UINT32
    bottom*: UINT32

  D2D_RECT_L* = RECT
  
type 
  D2D_SIZE_F* = object 
    width*: FLOAT
    height*: FLOAT
    
type 
  D2D_SIZE_U* = object 
    width*: UINT32
    height*: UINT32
    

type
  #~ D3DCOLORVALUE* = object 
    #~ r,g,b,a: FLOAT
  
  D2D_COLOR_F* = D3DCOLORVALUE
  
  D2D_MATRIX_3X2_F* {.bycopy.} = array[6,FLOAT]

  D2D_MATRIX_4X3_F* {.bycopy.} = array[12,FLOAT]

  D2D_MATRIX_4X4_F* {.bycopy.} = array[16,FLOAT]

  D2D_MATRIX_5X4_F* {.bycopy.} = array[20,FLOAT]
