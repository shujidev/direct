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

var waveformat:WAVEFORMATEX
waveformat.wFormatTag = WAVE_FORMAT_PCM
waveformat.nChannels = 1
waveformat.nSamplesPerSec = 44100
waveformat.nAvgBytesPerSec = 44100 * 2
waveformat.nBlockAlign = 2
waveformat.wBitsPerSample = 16
waveformat.cbSize = 0


var pSourceVoice:ptr IXAudio2SourceVoice
hr = pXAudio2.lpVtbl.CreateSourceVoice(pXAudio2, &pSourceVoice, &waveformat)
if hr!=S_OK: echo "CreateSourceVoice error ",hr.toHex
hr = pSourceVoice.lpVtbl.Start(pSourceVoice)
if hr!=S_OK: echo "Start error ",hr.toHex
  
# Fill array with sound data
const seconds = 1
const sampleRate = 44100
const samples = seconds * sampleRate
var soundData: array[samples, int16]
var index = 0
for second in 0..<seconds:
    for cycle in 0..<441:
        for sample in 0..<100:
            var value:int16 = if sample < 50: 32767 else: -32768 #square wave (half cycle up, half down)
            soundData[index] = value
            index.inc

var buffer: XAUDIO2_BUFFER
buffer.AudioBytes = 2 * samples
buffer.pAudioData = cast[ptr BYTE](addr soundData[0])
buffer.Flags = XAUDIO2_END_OF_STREAM
buffer.PlayBegin = 0
buffer.PlayLength = samples
  
hr = pSourceVoice.lpVtbl.SubmitSourceBuffer(pSourceVoice, &buffer)
if hr!=S_OK: echo "SubmitSourceBuffer error ",hr.toHex
  
start_window()
