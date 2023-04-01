import winim/lean
import direct/dsound

var DSEnumProc = proc(guid:ptr GUID,str:ptr CHAR, str2:ptr CHAR, p:pointer)=
    echo "enumerating"

let hr = DirectSoundCaptureEnumerateA(cast[ptr DSENUMCALLBACKA](addr DSEnumProc), nil)
if hr!=S_OK: echo "DirectSoundCaptureEnumerate error", hr.toHex
