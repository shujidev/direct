import winim/lean
import winim/inc/dwmapi

type WindowCompositionAttribute {.size:sizeof(cint).} = enum
    WCA_ACCENT_POLICY = 19
type AccentState {.size:sizeof(cint).} = enum
    ACCENT_DISABLED = 0,
    ACCENT_ENABLE_GRADIENT = 1,
    ACCENT_ENABLE_TRANSPARENTGRADIENT = 2,
    ACCENT_ENABLE_BLURBEHIND = 3,
    ACCENT_ENABLE_ACRYLICBLURBEHIND = 4,
    ACCENT_INVALID_STATE = 5
type ACCENTPOLICY = object
    AccentState:AccentState
    AccentFlags, GradientColor, AnimationId:cint
type WINCOMPATTRDATA = object
    attribute:WindowCompositionAttribute
    pData:PVOID
    dataSize:ULONG
proc SetWindowCompositionAttribute(hwnd:HWND, attrData:ptr WINCOMPATTRDATA):BOOL{.stdcall, dynlib: "user32", importc.}

var init*:proc(hwnd:HWND)
var draw*:proc(hwnd:HWND)
var keydown*:proc(hwnd:HWND)

proc WndProc(hwnd: HWND, message: int32, wp: WPARAM, lp: LPARAM): LRESULT {.stdcall.} =
    case message:
    of WM_LBUTTONDOWN, WM_KEYDOWN:
        if keydown!=nil: keydown(hwnd)
    of WM_SIZE:
        var width = LOWORD(lp)
        var height = HIWORD(lp)
    of WM_PAINT:
        if draw!=nil: draw(hwnd)
    of WM_DESTROY:
        PostQuitMessage(0)
    else:
        return DefWindowProc(hwnd, message, wp, lp)
    return 0.LRESULT



var hwnd*:HWND
proc create_window*() =
    var wcex: WNDCLASSEX
    wcex.cbSize = sizeof(WNDCLASSEX).int32
    wcex.lpfnWndProc = WndProc
    wcex.style = CS_HREDRAW or CS_VREDRAW
    wcex.cbClsExtra = 0
    wcex.cbWndExtra = 0
    wcex.hinstance = GetModuleHandle(nil)
    wcex.hIcon = LoadIcon(0, IDI_APPLICATION)
    wcex.hCursor = LoadCursor(0, IDC_ARROW)
    #~ wcex.hbrBackground = cast[HBRUSH](COLOR_WINDOW+2) #dark gray
    #~ wcex.hbrBackground = cast[HBRUSH](COLOR_WINDOW+1) #white
    #~ wcex.hbrBackground = cast[HBRUSH](COLOR_WINDOW) #light gray
    #~ wcex.hbrBackground = GetStockObject(BLACK_BRUSH)
    wcex.hbrBackground = 0
    wcex.lpszMenuName = nil
    wcex.lpszClassName = "Window"
    wcex.hIconSm = 0
    var class = RegisterClassEx(addr wcex)
    if class == 0:
        quit("could not create win class " & $GetLastError())
    
    #WS_EX_LAYERED blur 
    #WS_EX_TRANSPARENT window receives no events
    hwnd = CreateWindowEx(WS_EX_LAYERED, "Window", "Window", WS_OVERLAPPEDWINDOW or WS_CLIPCHILDREN,
                        CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, 0,
                        0, GetModuleHandle(nil), nil)
    if hwnd==0: quit("failed to make hwnd")
    #~ SetLayeredWindowAttributes(hwnd, RGB(0,0,0), 155, LWA_COLORKEY or LWA_ALPHA)
    
    var accent = ACCENTPOLICY(AccentState:ACCENT_ENABLE_ACRYLICBLURBEHIND, GradientColor:0x33990000i32)
    var data = WINCOMPATTRDATA(attribute:WCA_ACCENT_POLICY, pData:addr accent, dataSize:ULONG sizeof(ACCENTPOLICY))
    echo SetWindowCompositionAttribute(hwnd, addr data)
    
    if init!=nil: init(hwnd)


proc start_window*() =
    create_window()
    discard ShowWindow(hwnd, 10)
    discard UpdateWindow(hwnd)
    var message: MSG
    while(message.message != WM_QUIT):
        if PeekMessage(addr message, cast[HWND](nil), 0, 0, PM_REMOVE) > 0:
            discard TranslateMessage(addr message)
            discard DispatchMessage(addr message)
    programResult = cast[int](message.wparam)
  
start_window()
