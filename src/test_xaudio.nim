
import window_winim
import winim/lean, winim/com
if CoInitializeEx(nil, COINIT_MULTITHREADED)!=S_OK: echo "CoInitializeEx error "

import direct/xaudio2

#Initialization
var pXAudio2: ptr IXAudio2
var pMaster: ptr IXAudio2MasteringVoice
var hr = XAudio2Create(addr pXAudio2, flags=0, XAUDIO2_ANY_PROCESSOR)
if hr!=S_OK: echo "XAudio2Create error ", hr.toHex

#just to test if it works
var perf:XAUDIO2_PERFORMANCE_DATA
pXAudio2.lpVtbl.GetPerformanceData(pXAudio2, addr perf)
echo perf

#~ var chain = XAUDIO2_EFFECT_CHAIN(EffectCount:0, pEffectDescriptors:nil)
#~ var cat = AudioCategory_GameEffects
hr = pXAudio2.lpVtbl.CreateMasteringVoice(pXAudio2, addr pMaster)
if hr!=S_OK: echo "CreateMasteringVoice error ", hr.toHex

#Loading file
when not defined(XBOX): # //Little-Endian (multichar UINT32)
    var
        fourccRIFF = cast[UINT32](('R','I','F','F'))
        fourccDATA = cast[UINT32](('d','a','t','a'))
        fourccFMT = cast[UINT32](('f','m','t',' '))
        fourccWAVE = cast[UINT32](('W','A','V','E'))
        fourccXWMA = cast[UINT32](('X','W','M','A'))
        fourccDPDS = cast[UINT32](('d','p','d','s'))
    
proc FindChunk(hFile:HANDLE, fourcc:UINT32, dwChunkSize, dwChunkDataPosition: var UINT32): HRESULT =
    var hr = S_OK;
    if INVALID_SET_FILE_POINTER == SetFilePointer(hFile, 0, NULL, FILE_BEGIN):
        return HRESULT_FROM_WIN32 GetLastError()

    var dwChunkType, dwChunkDataSize, dwRIFFDataSize, dwFileType, bytesRead, dwOffset: UINT32

    while hr == S_OK:
        var dwRead:DWORD
        if 0 == ReadFile( hFile, &dwChunkType, sizeof(DWORD).DWORD, &dwRead, NULL ):
            hr = HRESULT_FROM_WIN32 GetLastError()

        if 0 == ReadFile( hFile, &dwChunkDataSize, sizeof(DWORD).DWORD, &dwRead, NULL ):
            hr = HRESULT_FROM_WIN32 GetLastError()

        if dwChunkType==fourccRIFF:
            dwRIFFDataSize = dwChunkDataSize;
            dwChunkDataSize = 4;
            if 0 == ReadFile( hFile, &dwFileType, sizeof(DWORD).DWORD, &dwRead, NULL ):
                hr = HRESULT_FROM_WIN32 GetLastError()

        else:
            if INVALID_SET_FILE_POINTER == SetFilePointer( hFile, dwChunkDataSize.LONG, NULL, FILE_CURRENT):
                return HRESULT_FROM_WIN32 GetLastError()
                
        dwOffset += sizeof(DWORD) * 2

        if dwChunkType == fourcc:
            dwChunkSize = dwChunkDataSize
            dwChunkDataPosition = dwOffset
            return S_OK
        dwOffset += dwChunkDataSize;
        
        if bytesRead >= dwRIFFDataSize: return S_FALSE
    return S_OK


proc ReadChunkData(hFile:HANDLE, buffer:pointer, buffersize:UINT32, bufferoffset:UINT32): HRESULT = 
    var hr = S_OK
    if INVALID_SET_FILE_POINTER == SetFilePointer( hFile, bufferoffset.LONG, NULL, FILE_BEGIN):
        return HRESULT_FROM_WIN32 GetLastError()
    var dwRead:DWORD
    if 0 == ReadFile( hFile, buffer, buffersize.LONG, &dwRead, NULL):
        hr = HRESULT_FROM_WIN32 GetLastError()
    return hr


proc loadAudioData(filename="Ensoniq-SQ-1-Open-Hi-Hat.wav"): (XAUDIO2_BUFFER,WAVEFORMATEXTENSIBLE) =
    var hFile = CreateFile(filename,GENERIC_READ,FILE_SHARE_READ,nil,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL,nil)

    if INVALID_HANDLE_VALUE == hFile:
        echo HRESULT_FROM_WIN32 GetLastError()
        return

    if INVALID_SET_FILE_POINTER == SetFilePointer( hFile, 0, nil, FILE_BEGIN ):
        echo HRESULT_FROM_WIN32 GetLastError()
        return
        
    var filetype: UINT32
    var wfx: WAVEFORMATEXTENSIBLE
    var dwChunkSize, dwChunkPosition: UINT32
    #check the file type, should be 'WAVE' or 'XWMA'
    #Locate the 'RIFF' chunk in file
    hr = FindChunk(hFile, fourccRIFF, dwChunkSize, dwChunkPosition)
    if hr!=S_OK: echo "FindChunk error fourccRIFF ",hr.toHex
    hr = ReadChunkData(hFile, &filetype, UINT32 sizeof(DWORD), dwChunkPosition)
    if hr!=S_OK: echo "ReadChunkData error ",hr.toHex
    if filetype != fourccWAVE:
        echo "file is not WAVE format ",(filetype:filetype)
        CloseHandle(hFile)
        return
    
    #Locate the 'fmt ' chunk (and copy its contents into a WAVEFORMATEXTENSIBLE)
    hr = FindChunk(hFile,fourccFMT, dwChunkSize, dwChunkPosition)
    if hr!=S_OK: echo "FindChunk error fourccFMT ",hr.toHex
    hr = ReadChunkData(hFile, &wfx, dwChunkSize, dwChunkPosition)
    if hr!=S_OK: echo "ReadChunkData error ",hr.toHex
    
    #Locate the 'data' chunk (and read its contents into a buffer)
    hr = FindChunk(hFile,fourccDATA,dwChunkSize, dwChunkPosition)
    if hr!=S_OK: echo "FindChunk error fourccDATA ",hr.toHex
    var dataBuffer = newSeq[BYTE](dwChunkSize)
    hr = ReadChunkData(hFile, addr dataBuffer[0], dwChunkSize, dwChunkPosition)
    if hr!=S_OK: echo "ReadChunkData error ",hr.toHex
    
    #Populate XAudio2 buffer structure
    var buffer: XAUDIO2_BUFFER
    buffer.AudioBytes = dwChunkSize;  #size of the audio buffer in bytes
    buffer.pAudioData = addr dataBuffer[0]  #buffer containing audio data
    buffer.Flags = XAUDIO2_END_OF_STREAM # tell the source voice not to expect any data after this buffer
    #~ buffer.LoopCount = 2 # number of loops after first play
    #~ buffer.PlayBegin = 10000 #not sure how it works
    return (buffer,wfx)


#TEST WITHOUT CALLBACKS
#Play audio file
#~ let (buffer, waveFormat) = loadAudioData()
#~ var pSourceVoice:ptr IXAudio2SourceVoice
#~ hr = pXAudio2.lpVtbl.CreateSourceVoice(pXAudio2, &pSourceVoice, cast[ptr WAVEFORMATEX](&waveFormat))
#~ if hr!=S_OK: echo "CreateSourceVoice error ",hr.toHex
#~ hr = pSourceVoice.lpVtbl.SubmitSourceBuffer(pSourceVoice, &buffer)
#~ if hr!=S_OK: echo "SubmitSourceBuffer error ",hr.toHex
#~ hr = pSourceVoice.lpVtbl.Start(pSourceVoice, 0)
#~ if hr!=S_OK: echo "Start error ",hr.toHex

#~ start_window()


#TEST WITH CALLBACKS
var audioBusy = false

proc playSound(xaudioSourceVoice:ptr IXAudio2SourceVoice, xaudioBuffer:XAUDIO2_BUFFER) =
    if not audioBusy:
        var hr = xaudioSourceVoice.lpVtbl.SubmitSourceBuffer(xaudioSourceVoice, &xaudioBuffer, NULL)
        if hr!=S_OK: echo "SubmitSourceBuffer error ",hr.toHex
        audioBusy = true

proc OnVoiceProcessingPassStart(This:ptr IXAudio2VoiceCallback, BytesRequired:UINT32){.stdcall.}=discard
proc OnVoiceProcessingPassEnd(This:ptr IXAudio2VoiceCallback){.stdcall.}=discard
proc OnStreamEnd(This:ptr IXAudio2VoiceCallback){.stdcall.}=discard
proc OnBufferStart(This:ptr IXAudio2VoiceCallback, pBufferContext:pointer){.stdcall.}=discard
proc OnBufferEnd(This:ptr IXAudio2VoiceCallback, pBufferContext:pointer){.stdcall.} = audioBusy = false; echo "end callback"
proc OnLoopEnd(This:ptr IXAudio2VoiceCallback, pBufferContext:pointer){.stdcall.}=discard
proc OnVoiceError(This:ptr IXAudio2VoiceCallback, pBuffercontext:pointer, Error:HRESULT){.stdcall.}=discard

var audioCallbackVtbl = IXAudio2VoiceCallbackVtbl(
                        OnStreamEnd : OnStreamEnd,
                        OnVoiceProcessingPassEnd : OnVoiceProcessingPassEnd,
                        OnVoiceProcessingPassStart : OnVoiceProcessingPassStart,
                        OnBufferEnd : OnBufferEnd,
                        OnBufferStart : OnBufferStart,
                        OnLoopEnd : OnLoopEnd,
                        OnVoiceError : OnVoiceError)
var audioCallback = IXAudio2VoiceCallback(lpVtbl: addr audioCallbackVtbl)

#Play audio file
let (buffer, waveFormat) = loadAudioData()
var pSourceVoice:ptr IXAudio2SourceVoice
hr = pXAudio2.lpVtbl.CreateSourceVoice(pXAudio2, &pSourceVoice, cast[ptr WAVEFORMATEX](&waveFormat), 0, XAUDIO2_DEFAULT_FREQ_RATIO, addr audioCallback)
if hr!=S_OK: echo "CreateSourceVoice error ",hr.toHex
hr = pSourceVoice.lpVtbl.Start(pSourceVoice, 0)
if hr!=S_OK: echo "Start error ",hr.toHex
hr = pSourceVoice.lpVtbl.SubmitSourceBuffer(pSourceVoice, &buffer)
if hr!=S_OK: echo "SubmitSourceBuffer error ",hr.toHex

#press a key to play a sound when audio is not busy
keydown = proc(hwnd:HWND) = 
    echo "keydown ",(audioBusy:audioBusy)
    pSourceVoice.playSound(buffer)
    
start_window()
