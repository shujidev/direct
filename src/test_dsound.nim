import winim/lean
import direct/dsound

var DSEnumProc:DSENUMCALLBACKW = proc(guid:ptr GUID,str:ptr WCHAR, str2:ptr WCHAR, p:pointer): BOOL {.cdecl.} =
    echo "enumerating", (str,str2)
    discard
    
let hr = DirectSoundCaptureEnumerateW(DSEnumProc, nil)
if hr!=S_OK: echo "DirectSoundCaptureEnumerate error", hr.toHex
