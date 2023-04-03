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
waveformat.nChannels = 2
waveformat.nSamplesPerSec = 44100
waveformat.nAvgBytesPerSec = 44100 * 4 #2 bytes signal on each channel
waveformat.nBlockAlign = 4
waveformat.wBitsPerSample = 16
waveformat.cbSize = 0


var pSourceVoice:ptr IXAudio2SourceVoice
hr = pXAudio2.lpVtbl.CreateSourceVoice(pXAudio2, &pSourceVoice, &waveformat)
if hr!=S_OK: echo "CreateSourceVoice error ",hr.toHex
hr = pSourceVoice.lpVtbl.Start(pSourceVoice)
if hr!=S_OK: echo "Start error ",hr.toHex
  

const sampleRate = 44100;
const seconds = 5;
const channels = 2;
const samples = seconds * sampleRate;
var volumeSoundData: array[samples * channels, int16]
var pitchSoundData: array[samples * channels, int16]
var spaceSoundData: array[samples * channels, int16]
var timbreSoundData: array[samples * channels, int16]

#increase volume the first 2 seconds, decrease on the next 2
#~ var index:int
#~ for sample in 0..<samples:
    #~ var sample = sample.float
    #~ var t = 1.0
    #~ if sample < 2 * samples / seconds:
        #~ t = sample / (2.0 * samples / seconds)
    #~ elif sample > 3 * samples / seconds:
        #~ t = (samples - sample) / (2.0 * samples / seconds)
    #~ var amplitude = pow(2, 15 * t) - 1
    #~ var waveform = if sample mod 100<50: 1.0 else: -1.0
    #~ var value = int16(amplitude * waveform)
    #~ volumeSoundData[index] = value
    #~ index.inc
    #~ volumeSoundData[index] = value
    #~ index.inc
    
var index:int
var angle:float
for sample in 0..<samples:
    var sample = sample.float
    var t = 1.0
    if sample < 2 * samples / 5:
        t = sample / (2.0 * samples / 5)
    elif sample > 3 * samples / 5:
        t = (samples - sample) / (2.0 * samples / 5)
    var frequency = 220 * pow(2, 2 * t)
    var angleIncrement = 360 * frequency / waveformat.nSamplesPerSec.float
    angle += angleIncrement
    while angle > 360: angle -= 360
    var value:int16 = if angle<180: 32767 else: -32767
    pitchSoundData[index] = value
    index.inc
    pitchSoundData[index] = value
    index.inc
  

var buffer: XAUDIO2_BUFFER
buffer.AudioBytes = 2 * channels * samples
#~ buffer.pAudioData = cast[ptr BYTE](addr volumeSoundData[0])
buffer.pAudioData = cast[ptr BYTE](addr pitchSoundData[0])
buffer.Flags = XAUDIO2_END_OF_STREAM
buffer.PlayBegin = 0
buffer.PlayLength = samples

hr = pSourceVoice.lpVtbl.SubmitSourceBuffer(pSourceVoice, &buffer)
if hr!=S_OK: echo "SubmitSourceBuffer error ",hr.toHex

start_window()
