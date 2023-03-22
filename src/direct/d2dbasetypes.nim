## directX bindings by Charlie Barto
import winim
import dxgitype
import dcommon

type 
  D2D_POINT_2U* = object 
    x*: UINT32
    y*: UINT32

type 
  D2D_POINT_2F* = object 
    x*: FLOAT
    y*: FLOAT

  D2D_POINT_2L* = POINT

type 
  D2D_VECTOR_2F* = object 
    x*: FLOAT
    y*: FLOAT

type 
  D2D_VECTOR_3F* = object 
    x*: FLOAT
    y*: FLOAT
    z*: FLOAT

type 
  D2D_VECTOR_4F* = object 
    x*: FLOAT
    y*: FLOAT
    z*: FLOAT
    w*: FLOAT

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

  D2D_COLOR_F* = D3DCOLORVALUE


