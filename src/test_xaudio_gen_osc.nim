import window_winim
import winim/lean, winim/com
if CoInitializeEx(nil, COINIT_MULTITHREADED)!=S_OK: echo "CoInitializeEx error "

import direct/xaudio2
import math

#Initialization
var pXAudio2: ptr IXAudio2
var pMaster: ptr IXAudio2MasteringVoice
var hr = XAudio2Create(addr pXAudio2, flags=0, XAUDIO2_ANY_PROCESSOR)
if hr!=S_OK: echo "XAudio2Create error ", hr.toHex
hr = pXAudio2.lpVtbl.CreateMasteringVoice(pXAudio2, addr pMaster)
if hr!=S_OK: echo "CreateMasteringVoice error ", hr.toHex

proc SawtoothOscillator1(pXAudio2:ptr IXAudio2):ptr IXAudio2SourceVoice =
    const BASE_FREQ = 441;
    const BUFFER_LENGTH = 44100 div BASE_FREQ
    var soundData: array[BUFFER_LENGTH, int16]
    var waveFormat: WAVEFORMATEX
    waveFormat.wFormatTag = WAVE_FORMAT_PCM;
    waveFormat.nChannels = 1;
    waveFormat.nSamplesPerSec = 44100;
    waveFormat.nAvgBytesPerSec = 44100 * 2;
    waveFormat.nBlockAlign = 2;
    waveFormat.wBitsPerSample = 16;
    waveFormat.cbSize = 0;
    var pSourceVoice:ptr IXAudio2SourceVoice
    hr = pXAudio2.lpVtbl.CreateSourceVoice(pXAudio2, &pSourceVoice, &waveformat, 0, XAUDIO2_MAX_FREQ_RATIO)
    if hr!=S_OK: echo "CreateSourceVoice error ",hr.toHex
    hr = pSourceVoice.lpVtbl.Start(pSourceVoice)
    if hr!=S_OK: echo "Start error ",hr.toHex

    for sample in 0..<BUFFER_LENGTH:
        soundData[sample] = int16 65535 * sample div BUFFER_LENGTH - 32768
    var buffer: XAUDIO2_BUFFER
    buffer.AudioBytes = 2 * BUFFER_LENGTH;
    buffer.pAudioData = cast[ptr BYTE](addr soundData[0])
    buffer.Flags = XAUDIO2_END_OF_STREAM;
    buffer.PlayBegin = 0;
    buffer.PlayLength = BUFFER_LENGTH;
    buffer.LoopBegin = 0;
    buffer.LoopLength = BUFFER_LENGTH;
    buffer.LoopCount = XAUDIO2_LOOP_INFINITE;
    
    hr = pSourceVoice.lpVtbl.SubmitSourceBuffer(pSourceVoice, &buffer)
    if hr!=S_OK: echo "SubmitSourceBuffer error ",hr.toHex
    return pSourceVoice
    
#~ let pSourceVoice = pXAudio2.SawtoothOscillator1()
    
    
#~ const BASE_FREQ = 44100.0
const BUFFER_LENGTH = 1024
const WAVEFORM_LENGTH = 8192
proc SawtoothOscillator2(pXAudio2:ptr IXAudio2, callback:IXAudio2VoiceCallback):ptr IXAudio2SourceVoice =
    var waveFormat: WAVEFORMATEX
    waveFormat.wFormatTag = WAVE_FORMAT_PCM;
    waveFormat.nChannels = 1;
    waveFormat.nSamplesPerSec = 44100;
    waveFormat.nAvgBytesPerSec = 44100 * 2;
    waveFormat.nBlockAlign = 2;
    waveFormat.wBitsPerSample = 16;
    waveFormat.cbSize = 0;

    var pSourceVoice: ptr IXAudio2SourceVoice
    hr = pXAudio2.lpVtbl.CreateSourceVoice(pXAudio2, &pSourceVoice, cast[ptr WAVEFORMATEX](&waveFormat), XAUDIO2_VOICE_NOPITCH, 1f, unsafeAddr callback)
    if hr!=S_OK: echo "CreateSourceVoice error ",hr.toHex
    hr = pSourceVoice.lpVtbl.Start(pSourceVoice)
    if hr!=S_OK: echo "Start error ",hr.toHex
    return pSourceVoice

var index:int
var angle:int
var angleIncrement:int = int 65536.0 * WAVEFORM_LENGTH * 440 / 44100.0 #this is probably not working
var pSourceVoice:ptr IXAudio2SourceVoice
#~ angleIncrement = (angleIncrement and 0xff0000) shr 0x10
var soundData: array[BUFFER_LENGTH, int16]
proc FillAndSubmit(startIndex, count:int) =
    #~ echo (angleIncrement, angleIncrement.toHex, cast[uint16](angleIncrement), (angleIncrement and 0xff0000) shr 0x10)
    for i in startIndex..<startIndex + count:
        echo (i:i)
        soundData[i] = int16 angle div WAVEFORM_LENGTH - 32768
        angle = (angle + angleIncrement) mod (WAVEFORM_LENGTH * 65536)

    var buffer: XAUDIO2_BUFFER
    buffer.AudioBytes = 2 * BUFFER_LENGTH
    buffer.pAudioData = cast[ptr BYTE](addr soundData[0])
    buffer.Flags = 0
    buffer.PlayBegin = UINT32 startIndex
    buffer.PlayLength = UINT32 count
    echo buffer
    var hr = pSourceVoice.lpVtbl.SubmitSourceBuffer(pSourceVoice, &buffer)
    if hr!=S_OK: echo "SubmitSourceBuffer error ",hr.toHex
    echo "submit done"
proc OnVoiceProcessingPassStart(This:ptr IXAudio2VoiceCallback, bytesRequired:UINT32) {.stdcall.} =
    echo (bytesRequired:bytesRequired)
    if bytesRequired == 0: return
    var startIndex = index;
    var endIndex = startIndex + bytesRequired div 2
    #~ echo (startIndex:startIndex, endIndex:endIndex)
    if endIndex <= BUFFER_LENGTH:
        FillAndSubmit(startIndex, endIndex - startIndex)
    else:
        FillAndSubmit(startIndex, BUFFER_LENGTH - startIndex)
        FillAndSubmit(0, endIndex mod BUFFER_LENGTH)
    index = (index + bytesRequired div 2) mod BUFFER_LENGTH


proc SetFrequency(pSourceVoice:ptr IXAudio2SourceVoice, freq:float) =
    var hr = pSourceVoice.lpVtbl.SetFrequencyRatio(pSourceVoice, freq / 441) #on oscillator1
    #~ angleIncrement = (int)(65536.0 * WAVEFORM_LENGTH * freq / 44100.0); #on oscillator2
    if hr!=S_OK: echo "SetFrequencyRatio error ",hr.toHex
    
proc SetAmplitude(pSourceVoice:ptr IXAudio2SourceVoice, amp:float) =
    var hr = pSourceVoice.lpVtbl.SetVolume(pSourceVoice, amp)
    if hr!=S_OK: echo "SetVolume error ",hr.toHex
  


var audioCallbackVtbl = IXAudio2VoiceCallbackVtbl(OnVoiceProcessingPassStart : OnVoiceProcessingPassStart)
var audioCallback = IXAudio2VoiceCallback(lpVtbl: addr audioCallbackVtbl)
pSourceVoice = pXAudio2.SawtoothOscillator2(audioCallback)

start_window()
