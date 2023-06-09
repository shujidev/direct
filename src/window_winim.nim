import winim/lean


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
    #~ wcex.hbrBackground = cast[HBRUSH](COLOR_WINDOW+3) #black
    #~ wcex.hbrBackground = cast[HBRUSH](COLOR_WINDOW+2) #dark gray
    #~ wcex.hbrBackground = cast[HBRUSH](COLOR_WINDOW+1) #white
    #~ wcex.hbrBackground = cast[HBRUSH](COLOR_WINDOW) #light gray
    #~ wcex.hbrBackground = GetStockObject(BLACK_BRUSH)
    #~ wcex.hbrBackground = 0
    wcex.lpszMenuName = nil
    wcex.lpszClassName = "Window"
    wcex.hIconSm = 0
    var class = RegisterClassEx(addr wcex)
    if class == 0:
        quit("could not create win class " & $GetLastError())
    
    hwnd = CreateWindow("Window", "Window", WS_OVERLAPPEDWINDOW,
                        CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, 0,
                        0, GetModuleHandle(nil), nil)
    if hwnd==0: quit("failed to make hwnd")
    
    if init!=nil: init(hwnd)


proc start_window*() =
    discard ShowWindow(hwnd, 10)
    discard UpdateWindow(hwnd)
    var message: MSG
    while(message.message != WM_QUIT):
        if PeekMessage(addr message, cast[HWND](nil), 0, 0, PM_REMOVE) > 0:
            discard TranslateMessage(addr message)
            discard DispatchMessage(addr message)
    programResult = cast[int](message.wparam)
  
#~ create_window()
#~ start_window()
