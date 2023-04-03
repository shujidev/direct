
import window_winim
import winim/lean, winim/clr
if CoInitializeEx(nil, COINIT_MULTITHREADED)!=S_OK: echo "CoInitializeEx error "

import direct/xaudio2

#Initialization
var pXAudio2: ptr IXAudio2
var pMaster: ptr IXAudio2MasteringVoice
var format:WAVEFORMATEX
format.cbSize = 24932
format.wFormatTag = 1
format.nChannels = 2
format.nSamplesPerSec = 44100
format.nAvgBytesPerSec = 176400
format.nBlockAlign = 4
format.wBitsPerSample = 16
var hr = XAudio2Create(addr pXAudio2, flags=0, XAUDIO2_PROCESSOR XAUDIO2_DEFAULT_PROCESSOR)
if hr!=S_OK: echo "XAudio2Create error ", hr.toHex

var perf:XAUDIO2_PERFORMANCE_DATA
pXAudio2.lpVtbl.GetPerformanceData(pXAudio2, addr perf)
echo perf

var chain = XAUDIO2_EFFECT_CHAIN(EffectCount:0, pEffectDescriptors:nil)
var cat = AudioCategory_GameEffects
hr = pXAudio2.lpVtbl.CreateMasteringVoice(pXAudio2, addr pMaster)
if hr!=S_OK: echo "CreateMasteringVoice error ", hr.toHex

#Loading file
#~ when not defined(XBOX): # //Little-Endian
var
    fourccRIFF = cast[UINT32](('R','I','F','F'))
    fourccDATA = cast[UINT32](('d','a','t','a'))
    fourccFMT = cast[UINT32](('f','m','t',' '))
    fourccWAVE = cast[UINT32](('W','A','V','E'))
    fourccXWMA = "AMWX"
    fourccDPDS = "sdpd"
    
proc FindChunk(hFile:HANDLE, fourcc:UINT32, dwChunkSize, dwChunkDataPosition: var UINT32): HRESULT =
    var hr = S_OK;
    if INVALID_SET_FILE_POINTER == SetFilePointer( hFile, 0, NULL, FILE_BEGIN ):
        echo "SetFilePointer error"
        return HRESULT_FROM_WIN32 GetLastError()

    var dwChunkType, dwChunkDataSize, dwRIFFDataSize, dwFileType, bytesRead, dwOffset: UINT32

    while hr == S_OK:
        #~ echo "looping"
        var dwRead:DWORD
        if 0 == ReadFile( hFile, &dwChunkType, sizeof(DWORD).DWORD, &dwRead, NULL ):
            echo "ReadFile 1 error"
            hr = HRESULT_FROM_WIN32 GetLastError()

        if 0 == ReadFile( hFile, &dwChunkDataSize, sizeof(DWORD).DWORD, &dwRead, NULL ):
            echo "ReadFile 2 error"
            hr = HRESULT_FROM_WIN32 GetLastError()

        if dwChunkType==fourccRIFF:
            #~ echo "found fourccRIFF"
            dwRIFFDataSize = dwChunkDataSize;
            dwChunkDataSize = 4;
            if 0 == ReadFile( hFile, &dwFileType, sizeof(DWORD).DWORD, &dwRead, NULL ):
                hr = HRESULT_FROM_WIN32 GetLastError()

        else:
            if INVALID_SET_FILE_POINTER == SetFilePointer( hFile, dwChunkDataSize.LONG, NULL, FILE_CURRENT):
                echo "SetFilePointer 2 error"
                return HRESULT_FROM_WIN32 GetLastError()
                
        dwOffset += sizeof(DWORD) * 2
        #~ echo "offseting",sizeof(DWORD)

        if dwChunkType == fourcc:
            dwChunkSize = dwChunkDataSize
            dwChunkDataPosition = dwOffset
            #~ echo "returning",(dwChunkDataSize,dwOffset)
            return S_OK
        dwOffset += dwChunkDataSize;
        #~ echo "offseting by chunk",(dwChunkDataSize:dwChunkDataSize,bytesRead:bytesRead,dwRIFFDataSize:dwRIFFDataSize)

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
    
var strFileName = "Ensoniq-SQ-1-Open-Hi-Hat.wav"
var hFile = CreateFile(strFileName,GENERIC_READ,FILE_SHARE_READ,nil,OPEN_EXISTING,0,nil)

if INVALID_HANDLE_VALUE == hFile:
    echo HRESULT_FROM_WIN32 GetLastError()

if INVALID_SET_FILE_POINTER == SetFilePointer( hFile, 0, nil, FILE_BEGIN ):
    echo HRESULT_FROM_WIN32 GetLastError()
    
var wfx: WAVEFORMATEXTENSIBLE
var dwChunkSize, dwChunkPosition: UINT32
#check the file type, should be fourccWAVE or 'XWMA'
#Locate the 'RIFF' chunk in file
hr = FindChunk(hFile,fourccRIFF,dwChunkSize, dwChunkPosition)
if hr!=S_OK: echo "FindChunk error ",hr.toHex
echo "RIFF multi character constant",(size:dwChunkSize, position:dwChunkPosition)
var filetype: UINT32
hr = ReadChunkData(hFile,&filetype,UINT32 sizeof(DWORD),dwChunkPosition)
if hr!=S_OK: echo "ReadChunkData error ",hr.toHex
echo (filetype:filetype,fourccWAVE:fourccWAVE)
if filetype != fourccWAVE: echo "file is not WAVE format"
#Locate the 'fmt ' chunk, and copy its contents into a WAVEFORMATEXTENSIBLE
hr = FindChunk(hFile,fourccFMT, dwChunkSize, dwChunkPosition)
if hr!=S_OK: echo "FindChunk error ",hr.toHex
hr = ReadChunkData(hFile, &wfx, dwChunkSize, dwChunkPosition)
if hr!=S_OK: echo "ReadChunkData error ",hr.toHex
#Locate the 'data' chunk, and read its contents into a buffer.
hr = FindChunk(hFile,fourccDATA,dwChunkSize, dwChunkPosition)
if hr!=S_OK: echo "FindChunk error ",hr.toHex
var dataBuffer = newSeq[BYTE](dwChunkSize)
hr = ReadChunkData(hFile, addr dataBuffer[0], dwChunkSize, dwChunkPosition)
if hr!=S_OK: echo "ReadChunkData error ",hr.toHex
#Populate XAudio2 buffer structure
var buffer: XAUDIO2_BUFFER
buffer.AudioBytes = dwChunkSize;  #size of the audio buffer in bytes
buffer.pAudioData = addr dataBuffer[0]  #buffer containing audio data
buffer.Flags = XAUDIO2_END_OF_STREAM # tell the source voice not to expect any data after this buffer


#Play audio file
var pSourceVoice:ptr IXAudio2SourceVoice
hr = pXAudio2.lpVtbl.CreateSourceVoice(pXAudio2, &pSourceVoice, cast[ptr WAVEFORMATEX](&wfx))
if hr!=S_OK: echo "CreateSourceVoice error ",hr.toHex
hr = pSourceVoice.lpVtbl.SubmitSourceBuffer(pSourceVoice, &buffer)
if hr!=S_OK: echo "SubmitSourceBuffer error ",hr.toHex
hr = pSourceVoice.lpVtbl.Start(pSourceVoice, 0)
if hr!=S_OK: echo "Start error ",hr.toHex


start_window()

#~ var activeChannels, idleChannels:seq[Channel] #idle channels go to active while playing, when finished they return to idleChannels
#~ var nChannels = 64
#~ for i in 0..<nChannels:
    #~ idleChannels.add Channel(obj)

#~ proc play(s:Sound) =
    #~ if idleChannels.len!=0:
        #~ activeChannels.add idleChannels[^1]
        #~ activeChannels[^1].play(s) 
#~ proc deactivateChannel(channel:Channel) =
    #~ idleChannels.add channel
    #~ activeChannels.delete activeChannels.find(channel)