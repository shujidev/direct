import winim/lean
import unknwn

{.passL: "-L. -ldsound ".}

type
  WAVEFORMATEX* {.bycopy.} = object
    wFormatTag*: WORD
    nChannels*: WORD
    nSamplesPerSec*: DWORD
    nAvgBytesPerSec*: DWORD
    nBlockAlign*: WORD
    wBitsPerSample*: WORD
    cbSize*: WORD

#~ type ptr WAVEFORMATEX* = ptr WAVEFORMATEX

const CLSID_DirectSound* = IID(Data1:0x47d4d946'i32, Data2:0x62e8, Data3:0x11cf, Data4:[0x93'u8, 0xbc, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00])
const CLSID_DirectSound8* = IID(Data1:0x3901cc3f'i32, Data2:0x84b5, Data3:0x4fa4, Data4:[0xba'u8, 0x35, 0xaa, 0x81, 0x72, 0xb8, 0xa0, 0x9b])
const CLSID_DirectSoundCapture* = IID(Data1:0xb0210780'i32, Data2:0x89cd, Data3:0x11d0, Data4:[0xaf'u8, 0x08, 0x00, 0xa0, 0xc9, 0x25, 0xcd, 0x16])
const CLSID_DirectSoundCapture8* = IID(Data1:0xe4bcac13'i32, Data2:0x7f99, Data3:0x4908, Data4:[0x9a'u8, 0x8e, 0x74, 0xe3, 0xbf, 0x24, 0xb6, 0xe1])
const CLSID_DirectSoundFullDuplex* = IID(Data1:0xfea4300c'i32, Data2:0x7959, Data3:0x4147, Data4:[0xb2'u8, 0x6a, 0x23, 0x77, 0xb9, 0xe7, 0xa9, 0x1d])
const IID_IDirectSound* = IID(Data1:0x279AFA83'i32, Data2:0x4981, Data3:0x11CE, Data4:[0xA5'u8, 0x21, 0x00, 0x20, 0xAF, 0x0B, 0xE5, 0x60])
const IID_IDirectSound8* = IID(Data1:0xC50A7E93'i32, Data2:0xF395, Data3:0x4834, Data4:[0x9E'u8, 0xF6, 0x7F, 0xA9, 0x9D, 0xE5, 0x09, 0x66])
const IID_IDirectSoundBuffer* = IID(Data1:0x279AFA85'i32, Data2:0x4981, Data3:0x11CE, Data4:[0xA5'u8, 0x21, 0x00, 0x20, 0xAF, 0x0B, 0xE5, 0x60])
const IID_IDirectSoundBuffer8* = IID(Data1:0x6825A449'i32, Data2:0x7524, Data3:0x4D82, Data4:[0x92'u8, 0x0F, 0x50, 0xE3, 0x6A, 0xB3, 0xAB, 0x1E])
const IID_IDirectSoundNotify* = IID(Data1:0xB0210783'i32, Data2:0x89cd, Data3:0x11d0, Data4:[0xAF'u8, 0x08, 0x00, 0xA0, 0xC9, 0x25, 0xCD, 0x16])
const IID_IDirectSound3DListener* = IID(Data1:0x279AFA84'i32, Data2:0x4981, Data3:0x11CE, Data4:[0xA5'u8, 0x21, 0x00, 0x20, 0xAF, 0x0B, 0xE5, 0x60])
const IID_IDirectSound3DBuffer* = IID(Data1:0x279AFA86'i32, Data2:0x4981, Data3:0x11CE, Data4:[0xA5'u8, 0x21, 0x00, 0x20, 0xAF, 0x0B, 0xE5, 0x60])
const IID_IDirectSoundCapture* = IID(Data1:0xB0210781'i32, Data2:0x89CD, Data3:0x11D0, Data4:[0xAF'u8, 0x08, 0x00, 0xA0, 0xC9, 0x25, 0xCD, 0x16])
const IID_IDirectSoundCaptureBuffer* = IID(Data1:0xB0210782'i32, Data2:0x89CD, Data3:0x11D0, Data4:[0xAF'u8, 0x08, 0x00, 0xA0, 0xC9, 0x25, 0xCD, 0x16])
const IID_IDirectSoundCaptureBuffer8* = IID(Data1:0x00990DF4'i32, Data2:0x0DBB, Data3:0x4872, Data4:[0x83'u8, 0x3E, 0x6D, 0x30, 0x3E, 0x80, 0xAE, 0xB6])
const IID_IDirectSoundFullDuplex* = IID(Data1:0xEDCB4C7A'i32, Data2:0xDAAB, Data3:0x4216, Data4:[0xA4'u8, 0x2E, 0x6C, 0x50, 0x59, 0x6D, 0xDC, 0x1D])
const IID_IDirectSoundFXI3DL2Reverb* = IID(Data1:0x4b166a6a'i32, Data2:0x0d66, Data3:0x43f3, Data4:[0x80'u8, 0xe3, 0xee, 0x62, 0x80, 0xde, 0xe1, 0xa4])
const DSDEVID_DefaultPlayback* = IID(Data1:0xDEF00000'i32, Data2:0x9C6D, Data3:0x47Ed, Data4:[0xAA'u8, 0xF1, 0x4D, 0xDA, 0x8F, 0x2B, 0x5C, 0x03])
const DSDEVID_DefaultCapture* = IID(Data1:0xDEF00001'i32, Data2:0x9C6D, Data3:0x47Ed, Data4:[0xAA'u8, 0xF1, 0x4D, 0xDA, 0x8F, 0x2B, 0x5C, 0x03])
const DSDEVID_DefaultVoicePlayback* = IID(Data1:0xDEF00002'i32, Data2:0x9C6D, Data3:0x47Ed, Data4:[0xAA'u8, 0xF1, 0x4D, 0xDA, 0x8F, 0x2B, 0x5C, 0x03])
const DSDEVID_DefaultVoiceCapture* = IID(Data1:0xDEF00003'i32, Data2:0x9C6D, Data3:0x47ED, Data4:[0xAA'u8, 0xF1, 0x4D, 0xDA, 0x8F, 0x2B, 0x5C, 0x03])
const DS3DALG_NO_VIRTUALIZATION* = IID(Data1:0xc241333f'i32, Data2:0x1c1b, Data3:0x11d2, Data4:[0x94'u8, 0xf5, 0x00, 0xc0, 0x4f, 0xc2, 0x8a, 0xca])
const DS3DALG_HRTF_FULL* = IID(Data1:0xc2413340'i32, Data2:0x1c1b, Data3:0x11d2, Data4:[0x94'u8, 0xf5, 0x00, 0xc0, 0x4f, 0xc2, 0x8a, 0xca])
const DS3DALG_HRTF_LIGHT* = IID(Data1:0xc2413342'i32, Data2:0x1c1b, Data3:0x11d2, Data4:[0x94'u8, 0xf5, 0x00, 0xc0, 0x4f, 0xc2, 0x8a, 0xca])
const GUID_DSFX_STANDARD_GARGLE* = IID(Data1:0xDAFD8210'i32, Data2:0x5711, Data3:0x4B91, Data4:[0x9F'u8, 0xE3, 0xF7, 0x5B, 0x7A, 0xE2, 0x79, 0xBF])
const GUID_DSFX_STANDARD_CHORUS* = IID(Data1:0xEFE6629C'i32, Data2:0x81F7, Data3:0x4281, Data4:[0xBD'u8, 0x91, 0xC9, 0xD6, 0x04, 0xA9, 0x5A, 0xF6])
const GUID_DSFX_STANDARD_FLANGER* = IID(Data1:0xEFCA3D92'i32, Data2:0xDFD8, Data3:0x4672, Data4:[0xA6'u8, 0x03, 0x74, 0x20, 0x89, 0x4B, 0xAD, 0x98])
const GUID_DSFX_STANDARD_ECHO* = IID(Data1:0xEF3E932C'i32, Data2:0xD40B, Data3:0x4F51, Data4:[0x8C'u8, 0xCF, 0x3F, 0x98, 0xF1, 0xB2, 0x9D, 0x5D])
const GUID_DSFX_STANDARD_DISTORTION* = IID(Data1:0xEF114C90'i32, Data2:0xCD1D, Data3:0x484E, Data4:[0x96'u8, 0xE5, 0x09, 0xCF, 0xAF, 0x91, 0x2A, 0x21])
const GUID_DSFX_STANDARD_COMPRESSOR* = IID(Data1:0xEF011F79'i32, Data2:0x4000, Data3:0x406D, Data4:[0x87'u8, 0xAF, 0xBF, 0xFB, 0x3F, 0xC3, 0x9D, 0x57])
const GUID_DSFX_STANDARD_PARAMEQ* = IID(Data1:0x120CED89'i32, Data2:0x3BF4, Data3:0x4173, Data4:[0xA1'u8, 0x32, 0x3C, 0xB4, 0x06, 0xCF, 0x32, 0x31])
const GUID_DSFX_STANDARD_I3DL2REVERB* = IID(Data1:0xEF985E71'i32, Data2:0xD5C7, Data3:0x42D4, Data4:[0xBA'u8, 0x4D, 0x2D, 0x07, 0x3E, 0x2E, 0x96, 0xF4])
const GUID_DSFX_WAVES_REVERB* = IID(Data1:0x87FC0268'i32, Data2:0x9A55, Data3:0x4360, Data4:[0x95'u8, 0xAA, 0x00, 0x4A, 0x1D, 0x9D, 0xE2, 0x6C])
const GUID_DSCFX_CLASS_AEC* = IID(Data1:0xBF963D80'i32, Data2:0xC559, Data3:0x11D0, Data4:[0x8A'u8, 0x2B, 0x00, 0xA0, 0xC9, 0x25, 0x5A, 0xC1])
const GUID_DSCFX_MS_AEC* = IID(Data1:0xCDEBB919'i32, Data2:0x379A, Data3:0x488A, Data4:[0x87'u8, 0x65, 0xF5, 0x3C, 0xFD, 0x36, 0xDE, 0x40])
const GUID_DSCFX_SYSTEM_AEC* = IID(Data1:0x1C22C56D'i32, Data2:0x9879, Data3:0x4F5B, Data4:[0xA3'u8, 0x89, 0x27, 0x99, 0x6D, 0xDC, 0x28, 0x10])
const GUID_DSCFX_CLASS_NS* = IID(Data1:0xE07F903F'i32, Data2:0x62FD, Data3:0x4E60, Data4:[0x8C'u8, 0xDD, 0xDE, 0xA7, 0x23, 0x66, 0x65, 0xB5])
const GUID_DSCFX_MS_NS* = IID(Data1:0x11C5C73B'i32, Data2:0x66E9, Data3:0x4BA1, Data4:[0xA0'u8, 0xBA, 0xE8, 0x14, 0xC6, 0xEE, 0xD9, 0x2D])
const GUID_DSCFX_SYSTEM_NS* = IID(Data1:0x5AB0882E'i32, Data2:0x7274, Data3:0x4516, Data4:[0x87'u8, 0x7D, 0x4E, 0xEE, 0x99, 0xBA, 0x4F, 0xD0])
const IID_IDirectSoundFXGargle* = IID(Data1:0xd616f352'i32, Data2:0xd622, Data3:0x11ce, Data4:[0xaa'u8, 0xc5, 0x00, 0x20, 0xaf, 0x0b, 0x99, 0xa3])
const IID_IDirectSoundFXChorus* = IID(Data1:0x880842e3'i32, Data2:0x145f, Data3:0x43e6, Data4:[0xa9'u8, 0x34, 0xa7, 0x18, 0x06, 0xe5, 0x05, 0x47])
const IID_IDirectSoundFXFlanger* = IID(Data1:0x903e9878'i32, Data2:0x2c92, Data3:0x4072, Data4:[0x9b'u8, 0x2c, 0xea, 0x68, 0xf5, 0x39, 0x67, 0x83])
const IID_IDirectSoundFXEcho* = IID(Data1:0x8bd28edf'i32, Data2:0x50db, Data3:0x4e92, Data4:[0xa2'u8, 0xbd, 0x44, 0x54, 0x88, 0xd1, 0xed, 0x42])
const IID_IDirectSoundFXDistortion* = IID(Data1:0x8ecf4326'i32, Data2:0x455f, Data3:0x4d8b, Data4:[0xbd'u8, 0xa9, 0x8d, 0x5d, 0x3e, 0x9e, 0x3e, 0x0b])
const IID_IDirectSoundFXCompressor* = IID(Data1:0x4bbd1154'i32, Data2:0x62f6, Data3:0x4e2c, Data4:[0xa1'u8, 0x5c, 0xd3, 0xb6, 0xc4, 0x17, 0xf7, 0xa0])
const IID_IDirectSoundFXParamEq* = IID(Data1:0xc03ca9fe'i32, Data2:0xfe90, Data3:0x4204, Data4:[0x80'u8, 0x78, 0x82, 0x33, 0x4c, 0xd1, 0x77, 0xda])
const IID_IDirectSoundFXWavesReverb* = IID(Data1:0x46858c3a'i32, Data2:0x0dc6, Data3:0x45e3, Data4:[0xb7'u8, 0x60, 0xd4, 0xee, 0xf1, 0x6c, 0xb3, 0x25])
const GUID_All_Objects* = IID(Data1:0xaa114de5'i32, Data2:0xc262, Data3:0x4169, Data4:[0xa1'u8, 0xc8, 0x23, 0xd6, 0x98, 0xcc, 0x73, 0xb5])
const IID_IKsPropertySet* = IID(Data1:0x31EFAC30'i32, Data2:0x515C, Data3:0x11D0, Data4:[0xA9'u8, 0xAA, 0x00, 0xAA, 0x00, 0x61, 0xBE, 0x93])

const FLT_MIN = float32.low
const FLT_MAX = float32.high

type D3DVECTOR* = object
    x,y,z:float32
type D3DVALUE* = float32

const
  DS_OK* = 0
  #~ DS_NO_VIRTUALIZATION* = MAKE_HRESULT(0, _FACDS, 10)
  #~ DS_INCOMPLETE* = MAKE_HRESULT(0, _FACDS, 20)
  #~ DSERR_ALLOCATED* = MAKE_DSHRESULT(10)
  #~ DSERR_CONTROLUNAVAIL* = MAKE_DSHRESULT(30)
  #~ DSERR_INVALIDPARAM* = E_INVALIDARG
  #~ DSERR_INVALIDCALL* = MAKE_DSHRESULT(50)
  #~ DSERR_GENERIC* = E_FAIL
  #~ DSERR_PRIOLEVELNEEDED* = MAKE_DSHRESULT(70)
  #~ DSERR_OUTOFMEMORY* = E_OUTOFMEMORY
  #~ DSERR_BADFORMAT* = MAKE_DSHRESULT(100)
  #~ DSERR_UNSUPPORTED* = E_NOTIMPL
  #~ DSERR_NODRIVER* = MAKE_DSHRESULT(120)
  #~ DSERR_ALREADYINITIALIZED* = MAKE_DSHRESULT(130)
  #~ DSERR_NOAGGREGATION* = CLASS_E_NOAGGREGATION
  #~ DSERR_BUFFERLOST* = MAKE_DSHRESULT(150)
  #~ DSERR_OTHERAPPHASPRIO* = MAKE_DSHRESULT(160)
  #~ DSERR_UNINITIALIZED* = MAKE_DSHRESULT(170)
  #~ DSERR_NOINTERFACE* = E_NOINTERFACE
  #~ DSERR_ACCESSDENIED* = E_ACCESSDENIED
  #~ DSERR_BUFFERTOOSMALL* = MAKE_DSHRESULT(180)
  #~ DSERR_DS8_REQUIRED* = MAKE_DSHRESULT(190)
  #~ DSERR_SENDLOOP* = MAKE_DSHRESULT(200)
  #~ DSERR_BADSENDBUFFERGUID* = MAKE_DSHRESULT(210)
  #~ DSERR_FXUNAVAILABLE* = MAKE_DSHRESULT(220)
  #~ DSERR_OBJECTNOTFOUND* = MAKE_DSHRESULT(4449)
  
const
  DSCAPS_PRIMARYMONO* = 0x00000001
  DSCAPS_PRIMARYSTEREO* = 0x00000002
  DSCAPS_PRIMARY8BIT* = 0x00000004
  DSCAPS_PRIMARY16BIT* = 0x00000008
  DSCAPS_CONTINUOUSRATE* = 0x00000010
  DSCAPS_EMULDRIVER* = 0x00000020
  DSCAPS_CERTIFIED* = 0x00000040
  DSCAPS_SECONDARYMONO* = 0x00000100
  DSCAPS_SECONDARYSTEREO* = 0x00000200
  DSCAPS_SECONDARY8BIT* = 0x00000400
  DSCAPS_SECONDARY16BIT* = 0x00000800

type
  DSCAPS* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    dwMinSecondarySampleRate*: DWORD
    dwMaxSecondarySampleRate*: DWORD
    dwPrimaryBuffers*: DWORD
    dwMaxHwMixingAllBuffers*: DWORD
    dwMaxHwMixingStaticBuffers*: DWORD
    dwMaxHwMixingStreamingBuffers*: DWORD
    dwFreeHwMixingAllBuffers*: DWORD
    dwFreeHwMixingStaticBuffers*: DWORD
    dwFreeHwMixingStreamingBuffers*: DWORD
    dwMaxHw3DAllBuffers*: DWORD
    dwMaxHw3DStaticBuffers*: DWORD
    dwMaxHw3DStreamingBuffers*: DWORD
    dwFreeHw3DAllBuffers*: DWORD
    dwFreeHw3DStaticBuffers*: DWORD
    dwFreeHw3DStreamingBuffers*: DWORD
    dwTotalHwMemBytes*: DWORD
    dwFreeHwMemBytes*: DWORD
    dwMaxContigFreeHwMemBytes*: DWORD
    dwUnlockTransferRateHwBuffers*: DWORD
    dwPlayCpuOverheadSwBuffers*: DWORD
    dwReserved1*: DWORD
    dwReserved2*: DWORD

  #~ ptr LPDSCAPS* = ptr DSCAPS
  #~ ptr LPCDSCAPS* = ptr DSCAPS

const
  DSBPLAY_LOOPING* = 0x00000001
  DSBPLAY_LOCHARDWARE* = 0x00000002
  DSBPLAY_LOCSOFTWARE* = 0x00000004
  DSBPLAY_TERMINATEBY_TIME* = 0x00000008
  DSBPLAY_TERMINATEBY_DISTANCE* = 0x000000010'u
  DSBPLAY_TERMINATEBY_PRIORITY* = 0x000000020'u
  DSBSTATUS_PLAYING* = 0x00000001
  DSBSTATUS_BUFFERLOST* = 0x00000002
  DSBSTATUS_LOOPING* = 0x00000004
  DSBSTATUS_LOCHARDWARE* = 0x00000008
  DSBSTATUS_LOCSOFTWARE* = 0x00000010
  DSBSTATUS_TERMINATED* = 0x00000020
  DSBLOCK_FROMWRITECURSOR* = 0x00000001
  DSBLOCK_ENTIREBUFFER* = 0x00000002
  DSBCAPS_PRIMARYBUFFER* = 0x00000001
  DSBCAPS_STATIC* = 0x00000002
  DSBCAPS_LOCHARDWARE* = 0x00000004
  DSBCAPS_LOCSOFTWARE* = 0x00000008
  DSBCAPS_CTRL3D* = 0x00000010
  DSBCAPS_CTRLFREQUENCY* = 0x00000020
  DSBCAPS_CTRLPAN* = 0x00000040
  DSBCAPS_CTRLVOLUME* = 0x00000080
  DSBCAPS_CTRLDEFAULT* = 0x000000E0
  DSBCAPS_CTRLPOSITIONNOTIFY* = 0x00000100
  DSBCAPS_CTRLFX* = 0x00000200
  DSBCAPS_CTRLALL* = 0x000001F0
  DSBCAPS_STICKYFOCUS* = 0x00004000
  DSBCAPS_GLOBALFOCUS* = 0x00008000
  DSBCAPS_GETCURRENTPOSITION2* = 0x00010000
  DSBCAPS_MUTE3DATMAXDISTANCE* = 0x00020000
  DSBCAPS_LOCDEFER* = 0x00040000
  DSBSIZE_MIN* = 4
  DSBSIZE_MAX* = 0xFFFFFFF
  DSBSIZE_FX_MIN* = 150
  DSBPAN_LEFT* = -10000
  DSBPAN_CENTER* = 0
  DSBPAN_RIGHT* = 10000
  DSBVOLUME_MAX* = 0
  DSBVOLUME_MIN* = -10000
  DSBFREQUENCY_MIN* = 100

#~ when (IDirectSound_VERSION >= 0x0900):
  #~ const
    #~ DSBFREQUENCY_MAX* = 200000
#~ else:
  #~ const
    #~ DSBFREQUENCY_MAX* = 100000
const DSBFREQUENCY_MAX* = 200000
const
  DSBFREQUENCY_ORIGINAL* = 0
  DSBNOTIFICATIONS_MAX* = 100000'u

type
  DSBCAPS* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    dwBufferBytes*: DWORD
    dwUnlockTransferRate*: DWORD
    dwPlayCpuOverhead*: DWORD

  #~ ptr DSBCAPS* = ptr DSBCAPS
  #~ ptr DSBCAPS* = ptr DSBCAPS

const
  DSSCL_NORMAL* = 1
  DSSCL_PRIORITY* = 2
  DSSCL_EXCLUSIVE* = 3
  DSSCL_WRITEPRIMARY* = 4

type
  DSEFFECTDESC* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    guidDSFXClass*: GUID
    dwReserved1*: DWORD_PTR
    dwReserved2*: DWORD_PTR

  #~ ptr DSEFFECTDESC* = ptr DSEFFECTDESC
  #~ ptr DSEFFECTDESC* = ptr DSEFFECTDESC

const
  DSFX_LOCHARDWARE* = 0x00000001
  DSFX_LOCSOFTWARE* = 0x00000002

const
  DSFXR_PRESENT* = 0
  DSFXR_LOCHARDWARE* = 1
  DSFXR_LOCSOFTWARE* = 2
  DSFXR_UNALLOCATED* = 3
  DSFXR_FAILED* = 4
  DSFXR_UNKNOWN* = 5
  DSFXR_SENDLOOP* = 6

type
  DSBUFFERDESC1* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    dwBufferBytes*: DWORD
    dwReserved*: DWORD
    lpwfxFormat*: ptr WAVEFORMATEX

  #~ ptr DSBUFFERDESC1* = ptr DSBUFFERDESC1
  #~ ptr DSBUFFERDESC1* = ptr DSBUFFERDESC1
  DSBUFFERDESC* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    dwBufferBytes*: DWORD
    dwReserved*: DWORD
    lpwfxFormat*: ptr WAVEFORMATEX
    #when (IDirectSound_VERSION >= 0x0700):
    guid3DAlgorithm*: GUID

  #~ ptr DSBUFFERDESC* = ptr DSBUFFERDESC
  #~ ptr DSBUFFERDESC* = ptr DSBUFFERDESC
  DSBPOSITIONNOTIFY* {.bycopy.} = object
    dwOffset*: DWORD
    hEventNotify*: HANDLE

  #~ ptr DSBPOSITIONNOTIFY* = ptr DSBPOSITIONNOTIFY
  #~ ptr DSBPOSITIONNOTIFY* = ptr DSBPOSITIONNOTIFY

const
  DSSPEAKER_DIRECTOUT* = 0
  DSSPEAKER_HEADPHONE* = 1
  DSSPEAKER_MONO* = 2
  DSSPEAKER_QUAD* = 3
  DSSPEAKER_STEREO* = 4
  DSSPEAKER_SURROUND* = 5
  DSSPEAKER_5POINT1* = 6
  DSSPEAKER_5POINT1_BACK* = 6
  DSSPEAKER_7POINT1* = 7
  DSSPEAKER_7POINT1_WIDE* = 7
  DSSPEAKER_7POINT1_SURROUND* = 8
  DSSPEAKER_5POINT1_SURROUND* = 9
  DSSPEAKER_GEOMETRY_MIN* = 0x00000005
  DSSPEAKER_GEOMETRY_NARROW* = 0x0000000A
  DSSPEAKER_GEOMETRY_WIDE* = 0x00000014
  DSSPEAKER_GEOMETRY_MAX* = 0x000000B4



const
  DS_CERTIFIED* = 0x00000000
  DS_UNCERTIFIED* = 0x00000001

type
  DSCEFFECTDESC* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    guidDSCFXClass*: GUID
    guidDSCFXInstance*: GUID
    dwReserved1*: DWORD
    dwReserved2*: DWORD

  #~ ptr DSCEFFECTDESC* = ptr DSCEFFECTDESC
  #~ ptr DSCEFFECTDESC* = ptr DSCEFFECTDESC

const
  DSCFX_LOCHARDWARE* = 0x00000001
  DSCFX_LOCSOFTWARE* = 0x00000002
  DSCFXR_LOCHARDWARE* = 0x00000010
  DSCFXR_LOCSOFTWARE* = 0x00000020

type
  DSCBUFFERDESC1* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    dwBufferBytes*: DWORD
    dwReserved*: DWORD
    lpwfxFormat*: ptr WAVEFORMATEX

  #~ ptr DSCBUFFERDESC1* = ptr DSCBUFFERDESC1
  DSCBUFFERDESC* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    dwBufferBytes*: DWORD
    dwReserved*: DWORD
    lpwfxFormat*: ptr WAVEFORMATEX
    #~ when (IDirectSound_VERSION >= 0x0800):
    dwFXCount*: DWORD
    lpDSCFXDesc*: ptr DSCEFFECTDESC

  #~ ptr DSCBUFFERDESC* = ptr DSCBUFFERDESC
  #~ ptr DSCBUFFERDESC* = ptr DSCBUFFERDESC
  DSCCAPS* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    dwFormats*: DWORD
    dwChannels*: DWORD

  #~ ptr DSCCAPS* = ptr DSCCAPS
  #~ ptr DSCCAPS* = ptr DSCCAPS
  DSCBCAPS* {.bycopy.} = object
    dwSize*: DWORD
    dwFlags*: DWORD
    dwBufferBytes*: DWORD
    dwReserved*: DWORD

  #~ ptr DSCBCAPS* = ptr DSCBCAPS
  #~ ptr DSCBCAPS* = ptr DSCBCAPS
  DSFXI3DL2Reverb* {.bycopy.} = object
    lRoom*: LONG
    lRoomHF*: LONG
    flRoomRolloffFactor*: FLOAT
    flDecayTime*: FLOAT
    flDecayHFRatio*: FLOAT
    lReflections*: LONG
    flReflectionsDelay*: FLOAT
    lReverb*: LONG
    flReverbDelay*: FLOAT
    flDiffusion*: FLOAT
    flDensity*: FLOAT
    flHFReference*: FLOAT

  #~ ptr DSFXI3DL2Reverb* = ptr DSFXI3DL2Reverb

const
  DSFX_I3DL2REVERB_DECAYTIME_DEFAULT* = 1.49f
  DSFX_I3DL2REVERB_DECAYTIME_MIN* = 0.1f
  DSFX_I3DL2REVERB_DECAYTIME_MAX* = 20.0f
  DSFX_I3DL2REVERB_DECAYHFRATIO_DEFAULT* = 0.83f
  DSFX_I3DL2REVERB_DECAYHFRATIO_MIN* = 0.1f
  DSFX_I3DL2REVERB_DECAYHFRATIO_MAX* = 2.0f
  DSFX_I3DL2REVERB_DENSITY_DEFAULT* = 100.0f
  DSFX_I3DL2REVERB_DENSITY_MIN* = 0.0f
  DSFX_I3DL2REVERB_DENSITY_MAX* = 100.0f
  DSFX_I3DL2REVERB_DIFFUSION_DEFAULT* = 100.0f
  DSFX_I3DL2REVERB_DIFFUSION_MIN* = 0.0f
  DSFX_I3DL2REVERB_DIFFUSION_MAX* = 100.0f
  DSFX_I3DL2REVERB_HFREFERENCE_DEFAULT* = 5000.0f
  DSFX_I3DL2REVERB_HFREFERENCE_MIN* = 20.0f
  DSFX_I3DL2REVERB_HFREFERENCE_MAX* = 20000.0f
  DSFX_I3DL2REVERB_QUALITY_DEFAULT* = 2
  DSFX_I3DL2REVERB_QUALITY_MIN* = 0
  DSFX_I3DL2REVERB_QUALITY_MAX* = 3
  DSFX_I3DL2REVERB_REFLECTIONS_DEFAULT* = (-2602)
  DSFX_I3DL2REVERB_REFLECTIONS_MIN* = (-10000)
  DSFX_I3DL2REVERB_REFLECTIONS_MAX* = 1000
  DSFX_I3DL2REVERB_REFLECTIONSDELAY_DEFAULT* = 0.007f
  DSFX_I3DL2REVERB_REFLECTIONSDELAY_MIN* = 0.0f
  DSFX_I3DL2REVERB_REFLECTIONSDELAY_MAX* = 0.3f
  DSFX_I3DL2REVERB_REVERB_MIN* = (-10000)
  DSFX_I3DL2REVERB_REVERB_MAX* = 2000
  DSFX_I3DL2REVERB_REVERB_DEFAULT* = 200
  DSFX_I3DL2REVERB_REVERBDELAY_MIN* = 0.0f
  DSFX_I3DL2REVERB_REVERBDELAY_MAX* = 0.1f
  DSFX_I3DL2REVERB_REVERBDELAY_DEFAULT* = 0.011f
  DSFX_I3DL2REVERB_ROOM_DEFAULT* = (-1000)
  DSFX_I3DL2REVERB_ROOM_MIN* = (-10000)
  DSFX_I3DL2REVERB_ROOM_MAX* = 0
  DSFX_I3DL2REVERB_ROOMHF_MIN* = (-10000)
  DSFX_I3DL2REVERB_ROOMHF_MAX* = 0
  DSFX_I3DL2REVERB_ROOMHF_DEFAULT* = (-100)
  DSFX_I3DL2REVERB_ROOMROLLOFFFACTOR_MIN* = 0.0f
  DSFX_I3DL2REVERB_ROOMROLLOFFFACTOR_MAX* = 10.0f
  DSFX_I3DL2REVERB_ROOMROLLOFFFACTOR_DEFAULT* = 0.0f

#~ type LPCDSFXI3DL2Reverb* = ptr DSFXI3DL2Reverb

const
  DSCCAPS_EMULDRIVER* = DSCAPS_EMULDRIVER
  DSCCAPS_CERTIFIED* = DSCAPS_CERTIFIED
  DSCCAPS_MULTIPLECAPTURE* = 0x00000001
  DSCBCAPS_WAVEMAPPED* = 0x80000000
  DSCBCAPS_CTRLFX* = 0x00000200
  DSCBLOCK_ENTIREBUFFER* = 0x00000001
  DSCBSTART_LOOPING* = 0x00000001
  DSCBPN_OFFSET_STOP* = 0xffffffff
  DSCBSTATUS_CAPTURING* = 0x00000001
  DSCBSTATUS_LOOPING* = 0x00000002



## ***************************************************************************
##  IDirectSound3DListener interface
##

const
  DS3DMODE_NORMAL* = 0x00000000
  DS3DMODE_HEADRELATIVE* = 0x00000001
  DS3DMODE_DISABLE* = 0x00000002
  DS3D_IMMEDIATE* = 0x00000000
  DS3D_DEFERRED* = 0x00000001
  DS3D_MINDISTANCEFACTOR* = FLT_MIN
  DS3D_MAXDISTANCEFACTOR* = FLT_MAX
  DS3D_DEFAULTDISTANCEFACTOR* = 1.0f
  DS3D_MINROLLOFFFACTOR* = 0.0f
  DS3D_MAXROLLOFFFACTOR* = 10.0f
  DS3D_DEFAULTROLLOFFFACTOR* = 1.0f
  DS3D_MINDOPPLERFACTOR* = 0.0f
  DS3D_MAXDOPPLERFACTOR* = 10.0f
  DS3D_DEFAULTDOPPLERFACTOR* = 1.0f
  DS3D_DEFAULTMINDISTANCE* = 1.0f
  DS3D_DEFAULTMAXDISTANCE* = 1000000000.0f
  DS3D_MINCONEANGLE* = 0
  DS3D_MAXCONEANGLE* = 360
  DS3D_DEFAULTCONEANGLE* = 360
  DS3D_DEFAULTCONEOUTSIDEVOLUME* = DSBVOLUME_MAX

type
  DS3DLISTENER* {.bycopy.} = object
    dwSize*: DWORD
    vPosition*: D3DVECTOR
    vVelocity*: D3DVECTOR
    vOrientFront*: D3DVECTOR
    vOrientTop*: D3DVECTOR
    flDistanceFactor*: D3DVALUE
    flRolloffFactor*: D3DVALUE
    flDopplerFactor*: D3DVALUE

  #~ ptr DS3DLISTENER* = ptr DS3DLISTENER
  #~ ptr DS3DLISTENER* = ptr DS3DLISTENER



type
  DS3DBUFFER* {.bycopy.} = object
    dwSize*: DWORD
    vPosition*: D3DVECTOR
    vVelocity*: D3DVECTOR
    dwInsideConeAngle*: DWORD
    dwOutsideConeAngle*: DWORD
    vConeOrientation*: D3DVECTOR
    lConeOutsideVolume*: LONG
    flMinDistance*: D3DVALUE
    flMaxDistance*: D3DVALUE
    dwMode*: DWORD

  #~ ptr DS3DBUFFER* = ptr DS3DBUFFER
  #~ ptr DS3DBUFFER* = ptr DS3DBUFFER

const
  KSPROPERTY_SUPPORT_GET* = 1
  KSPROPERTY_SUPPORT_SET* = 2


type
  DSFXGargle* {.bycopy.} = object
    dwRateHz*: DWORD
    dwWaveShape*: DWORD

  #~ ptr DSFXGargle* = ptr DSFXGargle
  #~ ptr DSFXGargle* = ptr DSFXGargle

const
  DSFXGARGLE_RATEHZ_MIN* = 1
  DSFXGARGLE_RATEHZ_MAX* = 1000
  DSFXGARGLE_WAVE_SQUARE* = 1
  DSFXGARGLE_WAVE_TRIANGLE* = 0
  


type
  DSFXChorus* {.bycopy.} = object
    fWetDryMix*: FLOAT
    fDepth*: FLOAT
    fFeedback*: FLOAT
    fFrequency*: FLOAT
    lWaveform*: LONG
    fDelay*: FLOAT
    lPhase*: LONG

  #~ ptr DSFXChorus* = ptr DSFXChorus
  #~ ptr DSFXChorus* = ptr DSFXChorus

const
  DSFXCHORUS_DEPTH_MIN* = 0.0f
  DSFXCHORUS_DEPTH_MAX* = 100.0f
  DSFXCHORUS_DELAY_MIN* = 0.0f
  DSFXCHORUS_DELAY_MAX* = 20.0f
  DSFXCHORUS_FEEDBACK_MIN* = -99.0f
  DSFXCHORUS_FEEDBACK_MAX* = 99.0f
  DSFXCHORUS_FREQUENCY_MIN* = 0.0f
  DSFXCHORUS_FREQUENCY_MAX* = 10.0f
  DSFXCHORUS_PHASE_MIN* = 0
  DSFXCHORUS_PHASE_MAX* = 4
  DSFXCHORUS_PHASE_NEG_180* = 0
  DSFXCHORUS_PHASE_NEG_90* = 1
  DSFXCHORUS_PHASE_ZERO* = 2
  DSFXCHORUS_PHASE_90* = 3
  DSFXCHORUS_PHASE_180* = 4
  DSFXCHORUS_WAVE_TRIANGLE* = 0
  DSFXCHORUS_WAVE_SIN* = 1
  DSFXCHORUS_WETDRYMIX_MIN* = 0.0f
  DSFXCHORUS_WETDRYMIX_MAX* = 100.0f


type
  DSFXFlanger* {.bycopy.} = object
    fWetDryMix*: FLOAT
    fDepth*: FLOAT
    fFeedback*: FLOAT
    fFrequency*: FLOAT
    lWaveform*: LONG
    fDelay*: FLOAT
    lPhase*: LONG

  #~ ptr DSFXFlanger* = ptr DSFXFlanger
  #~ ptr DSFXFlanger* = ptr DSFXFlanger

const
  DSFXFLANGER_DELAY_MIN* = 0.0f
  DSFXFLANGER_DELAY_MAX* = 4.0f
  DSFXFLANGER_DEPTH_MIN* = 0.0f
  DSFXFLANGER_DEPTH_MAX* = 100.0f
  DSFXFLANGER_FREQUENCY_MIN* = 0.0f
  DSFXFLANGER_FREQUENCY_MAX* = 10.0f
  DSFXFLANGER_FEEDBACK_MIN* = -99.0f
  DSFXFLANGER_FEEDBACK_MAX* = 99.0f
  DSFXFLANGER_PHASE_MIN* = 0
  DSFXFLANGER_PHASE_MAX* = 4
  DSFXFLANGER_PHASE_NEG_180* = 0
  DSFXFLANGER_PHASE_NEG_90* = 1
  DSFXFLANGER_PHASE_ZERO* = 2
  DSFXFLANGER_PHASE_90* = 3
  DSFXFLANGER_PHASE_180* = 4
  DSFXFLANGER_WAVE_SIN* = 1
  DSFXFLANGER_WAVE_TRIANGLE* = 0
  DSFXFLANGER_WETDRYMIX_MIN* = 0.0f
  DSFXFLANGER_WETDRYMIX_MAX* = 100.0f


type
  DSFXEcho* {.bycopy.} = object
    fWetDryMix*: FLOAT
    fFeedback*: FLOAT
    fLeftDelay*: FLOAT
    fRightDelay*: FLOAT
    lPanDelay*: LONG

  #~ ptr DSFXEcho* = ptr DSFXEcho
  #~ ptr DSFXEcho* = ptr DSFXEcho

const
  DSFXECHO_FEEDBACK_MIN* = 0.0f
  DSFXECHO_FEEDBACK_MAX* = 100.0f
  DSFXECHO_LEFTDELAY_MIN* = 1.0f
  DSFXECHO_LEFTDELAY_MAX* = 2000.0f
  DSFXECHO_PANDELAY_MIN* = 0
  DSFXECHO_PANDELAY_MAX* = 1
  DSFXECHO_RIGHTDELAY_MIN* = 1.0f
  DSFXECHO_RIGHTDELAY_MAX* = 2000.0f
  DSFXECHO_WETDRYMIX_MIN* = 0.0f
  DSFXECHO_WETDRYMIX_MAX* = 100.0f



type
  DSFXDistortion* {.bycopy.} = object
    fGain*: FLOAT
    fEdge*: FLOAT
    fPostEQCenterFrequency*: FLOAT
    fPostEQBandwidth*: FLOAT
    fPreLowpassCutoff*: FLOAT

  #~ ptr DSFXDistortion* = ptr DSFXDistortion
  #~ ptr DSFXDistortion* = ptr DSFXDistortion

const
  DSFXDISTORTION_EDGE_MIN* = 0.0f
  DSFXDISTORTION_EDGE_MAX* = 100.0f
  DSFXDISTORTION_GAIN_MIN* = -60.0f
  DSFXDISTORTION_GAIN_MAX* = 0.0f
  DSFXDISTORTION_POSTEQCENTERFREQUENCY_MIN* = 100.0f
  DSFXDISTORTION_POSTEQCENTERFREQUENCY_MAX* = 8000.0f
  DSFXDISTORTION_POSTEQBANDWIDTH_MIN* = 100.0f
  DSFXDISTORTION_POSTEQBANDWIDTH_MAX* = 8000.0f
  DSFXDISTORTION_PRELOWPASSCUTOFF_MIN* = 100.0f
  DSFXDISTORTION_PRELOWPASSCUTOFF_MAX* = 8000.0f


type
  DSFXCompressor* {.bycopy.} = object
    fGain*: FLOAT
    fAttack*: FLOAT
    fRelease*: FLOAT
    fThreshold*: FLOAT
    fRatio*: FLOAT
    fPredelay*: FLOAT

  #~ ptr DSFXCompressor* = ptr DSFXCompressor
  #~ ptr DSFXCompressor* = ptr DSFXCompressor

const
  DSFXCOMPRESSOR_ATTACK_MIN* = 0.01f
  DSFXCOMPRESSOR_ATTACK_MAX* = 500.0f
  DSFXCOMPRESSOR_GAIN_MIN* = -60.0f
  DSFXCOMPRESSOR_GAIN_MAX* = 60.0f
  DSFXCOMPRESSOR_PREDELAY_MIN* = 0.0f
  DSFXCOMPRESSOR_PREDELAY_MAX* = 4.0f
  DSFXCOMPRESSOR_RATIO_MIN* = 1.0f
  DSFXCOMPRESSOR_RATIO_MAX* = 100.0f
  DSFXCOMPRESSOR_RELEASE_MIN* = 50.0f
  DSFXCOMPRESSOR_RELEASE_MAX* = 3000.0f
  DSFXCOMPRESSOR_THRESHOLD_MIN* = -60.0f
  DSFXCOMPRESSOR_THRESHOLD_MAX* = 0.0f


type
  DSFXParamEq* {.bycopy.} = object
    fCenter*: FLOAT
    fBandwidth*: FLOAT
    fGain*: FLOAT

  #~ ptr DSFXParamEq* = ptr DSFXParamEq
  #~ ptr DSFXParamEq* = ptr DSFXParamEq

const
  DSFXPARAMEQ_BANDWIDTH_MIN* = 1.0f
  DSFXPARAMEQ_BANDWIDTH_MAX* = 36.0f
  DSFXPARAMEQ_CENTER_MIN* = 80.0f
  DSFXPARAMEQ_CENTER_MAX* = 16000.0f
  DSFXPARAMEQ_GAIN_MIN* = -15.0f
  DSFXPARAMEQ_GAIN_MAX* = 15.0f

type
  DSFXWavesReverb* {.bycopy.} = object
    fInGain*: FLOAT
    fReverbMix*: FLOAT
    fReverbTime*: FLOAT
    fHighFreqRTRatio*: FLOAT

  #~ ptr DSFXWavesReverb* = ptr DSFXWavesReverb
  #~ ptr DSFXWavesReverb* = ptr DSFXWavesReverb

const
  DSFX_WAVESREVERB_HIGHFREQRTRATIO_MIN* = 0.001f
  DSFX_WAVESREVERB_HIGHFREQRTRATIO_MAX* = 0.999f
  DSFX_WAVESREVERB_HIGHFREQRTRATIO_DEFAULT* = 0.001f
  DSFX_WAVESREVERB_INGAIN_MIN* = -96.0f
  DSFX_WAVESREVERB_INGAIN_MAX* = 0.0f
  DSFX_WAVESREVERB_INGAIN_DEFAULT* = 0.0f
  DSFX_WAVESREVERB_REVERBMIX_MIN* = -96.0f
  DSFX_WAVESREVERB_REVERBMIX_MAX* = 0.0f
  DSFX_WAVESREVERB_REVERBMIX_DEFAULT* = 0.0f
  DSFX_WAVESREVERB_REVERBTIME_MIN* = 0.001f
  DSFX_WAVESREVERB_REVERBTIME_MAX* = 3000.0f
  DSFX_WAVESREVERB_REVERBTIME_DEFAULT* = 1000.0f


const
  DSFX_I3DL2_MATERIAL_PRESET_SINGLEWINDOW* = 0
  DSFX_I3DL2_MATERIAL_PRESET_DOUBLEWINDOW* = 1
  DSFX_I3DL2_MATERIAL_PRESET_THINDOOR* = 2
  DSFX_I3DL2_MATERIAL_PRESET_THICKDOOR* = 3
  DSFX_I3DL2_MATERIAL_PRESET_WOODWALL* = 4
  DSFX_I3DL2_MATERIAL_PRESET_BRICKWALL* = 5
  DSFX_I3DL2_MATERIAL_PRESET_STONEWALL* = 6
  DSFX_I3DL2_MATERIAL_PRESET_CURTAIN* = 7

const
  I3DL2_MATERIAL_PRESET_SINGLEWINDOW* = (-2800,0.71f)
  I3DL2_MATERIAL_PRESET_DOUBLEWINDOW* =(-5000,0.40f)
  I3DL2_MATERIAL_PRESET_THINDOOR* =(-1800,0.66f)
  I3DL2_MATERIAL_PRESET_THICKDOOR* =(-4400,0.64f)
  I3DL2_MATERIAL_PRESET_WOODWALL* =(-4000,0.50f)
  I3DL2_MATERIAL_PRESET_BRICKWALL* =(-5000,0.60f)
  I3DL2_MATERIAL_PRESET_STONEWALL* =( -6000,0.68f)
  I3DL2_MATERIAL_PRESET_CURTAIN* =(-1200,0.15f)
  
const
  DSFX_I3DL2_ENVIRONMENT_PRESET_DEFAULT* = 0
  DSFX_I3DL2_ENVIRONMENT_PRESET_GENERIC* = 1
  DSFX_I3DL2_ENVIRONMENT_PRESET_PADDEDCELL* = 2
  DSFX_I3DL2_ENVIRONMENT_PRESET_ROOM* = 3
  DSFX_I3DL2_ENVIRONMENT_PRESET_BATHROOM* = 4
  DSFX_I3DL2_ENVIRONMENT_PRESET_LIVINGROOM* = 5
  DSFX_I3DL2_ENVIRONMENT_PRESET_STONEROOM* = 6
  DSFX_I3DL2_ENVIRONMENT_PRESET_AUDITORIUM* = 7
  DSFX_I3DL2_ENVIRONMENT_PRESET_CONCERTHALL* = 8
  DSFX_I3DL2_ENVIRONMENT_PRESET_CAVE* = 9
  DSFX_I3DL2_ENVIRONMENT_PRESET_ARENA* = 10
  DSFX_I3DL2_ENVIRONMENT_PRESET_HANGAR* = 11
  DSFX_I3DL2_ENVIRONMENT_PRESET_CARPETEDHALLWAY* = 12
  DSFX_I3DL2_ENVIRONMENT_PRESET_HALLWAY* = 13
  DSFX_I3DL2_ENVIRONMENT_PRESET_STONECORRIDOR* = 14
  DSFX_I3DL2_ENVIRONMENT_PRESET_ALLEY* = 15
  DSFX_I3DL2_ENVIRONMENT_PRESET_FOREST* = 16
  DSFX_I3DL2_ENVIRONMENT_PRESET_CITY* = 17
  DSFX_I3DL2_ENVIRONMENT_PRESET_MOUNTAINS* = 18
  DSFX_I3DL2_ENVIRONMENT_PRESET_QUARRY* = 19
  DSFX_I3DL2_ENVIRONMENT_PRESET_PLAIN* = 20
  DSFX_I3DL2_ENVIRONMENT_PRESET_PARKINGLOT* = 21
  DSFX_I3DL2_ENVIRONMENT_PRESET_SEWERPIPE* = 22
  DSFX_I3DL2_ENVIRONMENT_PRESET_UNDERWATER* = 23
  DSFX_I3DL2_ENVIRONMENT_PRESET_SMALLROOM* = 24
  DSFX_I3DL2_ENVIRONMENT_PRESET_MEDIUMROOM* = 25
  DSFX_I3DL2_ENVIRONMENT_PRESET_LARGEROOM* = 26
  DSFX_I3DL2_ENVIRONMENT_PRESET_MEDIUMHALL* = 27
  DSFX_I3DL2_ENVIRONMENT_PRESET_LARGEHALL* = 28
  DSFX_I3DL2_ENVIRONMENT_PRESET_PLATE* = 29

const
  I3DL2_ENVIRONMENT_PRESET_DEFAULT* = (-1000,-100,0.0f,1.49f,0.83f,-2602,0.007f,200,0.011f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_GENERIC* = (-1000,-100,0.0f,1.49f,0.83f,-2602,0.007f,200,0.011f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_PADDEDCELL* = (-1000,-6000,0.0f,0.17f,0.10f,-1204,0.001f,207,0.002f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_ROOM* = (-1000,-454,0.0f,0.40f,0.83f,-1646,0.002f,53,0.003f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_BATHROOM* = (-1000,-1200,0.0f,1.49f,0.54f,-370,0.007f,1030,0.011f,100.0f,60.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_LIVINGROOM* = (-1000,-6000,0.0f,0.50f,0.10f,-1376,0.003f,-1104,0.004f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_STONEROOM* = (-1000,-300,0.0f,2.31f,0.64f,-711,0.012f,83,0.017f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_AUDITORIUM* = (-1000,-476,0.0f,4.32f,0.59f,-789,0.020f,-289,0.030f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_CONCERTHALL* = (-1000,-500,0.0f,3.92f,0.70f,-1230,0.020f,-2,0.029f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_CAVE* = (-1000,0,0.0f,2.91f,1.30f,-602,0.015f,-302,0.022f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_ARENA* = (-1000,-698,0.0f,7.24f,0.33f,-1166,0.020f,16,0.030f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_HANGAR* = (-1000,-1000,0.0f,10.05f,0.23f,-602,0.020f,198,0.030f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_CARPETEDHALLWAY* = (-1000,-4000,0.0f,0.30f,0.10f,-1831,0.002f,-1630,0.030f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_HALLWAY* = (-1000,-300,0.0f,1.49f,0.59f,-1219,0.007f,441,0.011f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_STONECORRIDOR* = (-1000,-237,0.0f,2.70f,0.79f,-1214,0.013f,395,0.020f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_ALLEY* = (-1000,-270,0.0f,1.49f,0.86f,-1204,0.007f,-4,0.011f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_FOREST* = (-1000,-3300,0.0f,1.49f,0.54f,-2560,0.162f,-613,0.088f,79.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_CITY* = (-1000,-800,0.0f,1.49f,0.67f,-2273,0.007f,2217,0.011f,50.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_MOUNTAINS* = (-1000,-2500,0.0f,1.49f,0.21f,-2780,0.300f,-2014,0.100f,27.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_QUARRY* = (-1000,-1000,0.0f,1.49f,0.83f,-10000,0.061f,500,0.025f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_PLAIN* = (-1000,-2000,0.0f,1.49f,0.50f,-2466,0.179f,-2514,0.100f,21.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_PARKINGLOT* = (-1000,0,0.0f,1.65f,1.50f,-1363,0.008f,-1153,0.012f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_SEWERPIPE* = (-1000,-1000,0.0f,2.81f,0.14f,429,0.014f,648,0.011f,80.0f,60.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_UNDERWATER* = (-1000,-4000,0.0f,1.49f,0.10f,-449,0.007f,1700,0.011f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_SMALLROOM* = (-1000,-600,0.0f,1.10f,0.83f,-400,0.005f,500,0.010f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_MEDIUMROOM* = (-1000,-600,0.0f,1.30f,0.83f,-1000,0.010f,-200,0.020f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_LARGEROOM* = (-1000,-600,0.0f,1.50f,0.83f,-1600,0.020f,-1000,0.040f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_MEDIUMHALL* = (-1000,-600,0.0f,1.80f,0.70f,-1300,0.015f,-800,0.030f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_LARGEHALL* = (-1000,-600,0.0f,1.80f,0.70f,-2000,0.030f,-1400,0.060f,100.0f,100.0f,5000.0f)
  I3DL2_ENVIRONMENT_PRESET_PLATE* = (-1000,-200,0.0f,1.30f,0.90f,0,0.002f,0,0.010f,100.0f,75.0f,5000.0f)


type
    IDirectSoundVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSound, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSound): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSound): ULONG {.stdcall.}
        CreateSoundBuffer*: proc (this:ptr IDirectSound, lpcDSBufferDesc:ptr DSBUFFERDESC, lplpDirectSoundBuffer:ptr ptr IDirectSoundBuffer, pUnkOuter:pointer): HRESULT {.stdcall.}
        GetCaps*: proc (this:ptr IDirectSound, lpDSCaps:ptr DSCAPS): HRESULT {.stdcall.}
        DuplicateSoundBuffer*: proc (this:ptr IDirectSound, lpDsbOriginal:ptr IDirectSoundBuffer, lplpDsbDuplicate:ptr ptr IDirectSoundBuffer): HRESULT {.stdcall.}
        SetCooperativeLevel*: proc (this:ptr IDirectSound, hwnd:HWND, dwLevel:DWORD): HRESULT {.stdcall.}
        Compact*: proc (this:ptr IDirectSound): HRESULT {.stdcall.}
        GetSpeakerConfig*: proc (this:ptr IDirectSound, lpdwSpeakerConfig:ptr DWORD): HRESULT {.stdcall.}
        SetSpeakerConfig*: proc (this:ptr IDirectSound, dwSpeakerConfig:DWORD): HRESULT {.stdcall.}
        Initialize*: proc (this:ptr IDirectSound, lpcGuid:ptr GUID): HRESULT {.stdcall.}
    IDirectSound* = object
        lpVtbl*: ptr IDirectSoundVtbl
    IDirectSound8Vtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSound8, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSound8): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSound8): ULONG {.stdcall.}
        CreateSoundBuffer*: proc (this:ptr IDirectSound8, lpcDSBufferDesc:ptr DSBUFFERDESC, lplpDirectSoundBuffer:ptr ptr IDirectSoundBuffer, pUnkOuter:pointer): HRESULT {.stdcall.}
        GetCaps*: proc (this:ptr IDirectSound8, lpDSCaps:ptr DSCAPS): HRESULT {.stdcall.}
        DuplicateSoundBuffer*: proc (this:ptr IDirectSound8, lpDsbOriginal:ptr IDirectSoundBuffer, lplpDsbDuplicate:ptr ptr IDirectSoundBuffer): HRESULT {.stdcall.}
        SetCooperativeLevel*: proc (this:ptr IDirectSound8, hwnd:HWND, dwLevel:DWORD): HRESULT {.stdcall.}
        Compact*: proc (this:ptr IDirectSound8): HRESULT {.stdcall.}
        GetSpeakerConfig*: proc (this:ptr IDirectSound8, lpdwSpeakerConfig:ptr DWORD): HRESULT {.stdcall.}
        SetSpeakerConfig*: proc (this:ptr IDirectSound8, dwSpeakerConfig:DWORD): HRESULT {.stdcall.}
        Initialize*: proc (this:ptr IDirectSound8, lpcGuid:ptr GUID): HRESULT {.stdcall.}
        VerifyCertification*: proc (this:ptr IDirectSound8, pdwCertified:ptr DWORD): HRESULT {.stdcall.}
    IDirectSound8* = object
        lpVtbl*: ptr IDirectSound8Vtbl
    IDirectSoundBufferVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundBuffer, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundBuffer): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundBuffer): ULONG {.stdcall.}
        GetCaps*: proc (this:ptr IDirectSoundBuffer, lpDSBufferCaps:ptr DSBCAPS): HRESULT {.stdcall.}
        GetCurrentPosition*: proc (this:ptr IDirectSoundBuffer, lpdwCurrentPlayCursor:ptr DWORD, lpdwCurrentWriteCursor:ptr DWORD): HRESULT {.stdcall.}
        GetFormat*: proc (this:ptr IDirectSoundBuffer, lpwfxFormat:ptr WAVEFORMATEX, dwSizeAllocated:DWORD, lpdwSizeWritten:ptr DWORD): HRESULT {.stdcall.}
        GetVolume*: proc (this:ptr IDirectSoundBuffer, lplVolume:ptr LONG): HRESULT {.stdcall.}
        GetPan*: proc (this:ptr IDirectSoundBuffer, lplpan:ptr LONG): HRESULT {.stdcall.}
        GetFrequency*: proc (this:ptr IDirectSoundBuffer, lpdwFrequency:ptr DWORD): HRESULT {.stdcall.}
        GetStatus*: proc (this:ptr IDirectSoundBuffer, lpdwStatus:ptr DWORD): HRESULT {.stdcall.}
        Initialize*: proc (this:ptr IDirectSoundBuffer, lpDirectSound:ptr IDirectSound, lpcDSBufferDesc:ptr DSBUFFERDESC): HRESULT {.stdcall.}
        Lock*: proc (this:ptr IDirectSoundBuffer, dwOffset:DWORD, dwBytes:DWORD, ppvAudioPtr1:ptr pointer, pdwAudioBytes1:ptr DWORD, ppvAudioPtr2:ptr pointer, pdwAudioBytes2:ptr DWORD, dwFlags:DWORD): HRESULT {.stdcall.}
        Play*: proc (this:ptr IDirectSoundBuffer, dwReserved1:DWORD, dwReserved2:DWORD, dwFlags:DWORD): HRESULT {.stdcall.}
        SetCurrentPosition*: proc (this:ptr IDirectSoundBuffer, dwNewPosition:DWORD): HRESULT {.stdcall.}
        SetFormat*: proc (this:ptr IDirectSoundBuffer, lpcfxFormat:ptr WAVEFORMATEX): HRESULT {.stdcall.}
        SetVolume*: proc (this:ptr IDirectSoundBuffer, lVolume:LONG): HRESULT {.stdcall.}
        SetPan*: proc (this:ptr IDirectSoundBuffer, lPan:LONG): HRESULT {.stdcall.}
        SetFrequency*: proc (this:ptr IDirectSoundBuffer, dwFrequency:DWORD): HRESULT {.stdcall.}
        Stop*: proc (this:ptr IDirectSoundBuffer): HRESULT {.stdcall.}
        Unlock*: proc (this:ptr IDirectSoundBuffer, pvAudioPtr1:pointer, dwAudioBytes1:DWORD, pvAudioPtr2:pointer, dwAudioPtr2:DWORD): HRESULT {.stdcall.}
        Restore*: proc (this:ptr IDirectSoundBuffer): HRESULT {.stdcall.}
    IDirectSoundBuffer* = object
        lpVtbl*: ptr IDirectSoundBufferVtbl
    IDirectSoundBuffer8Vtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundBuffer8, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundBuffer8): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundBuffer8): ULONG {.stdcall.}
        GetCaps*: proc (this:ptr IDirectSoundBuffer8, lpDSBufferCaps:ptr DSBCAPS): HRESULT {.stdcall.}
        GetCurrentPosition*: proc (this:ptr IDirectSoundBuffer8, lpdwCurrentPlayCursor:ptr DWORD, lpdwCurrentWriteCursor:ptr DWORD): HRESULT {.stdcall.}
        GetFormat*: proc (this:ptr IDirectSoundBuffer8, lpwfxFormat:ptr WAVEFORMATEX, dwSizeAllocated:DWORD, lpdwSizeWritten:ptr DWORD): HRESULT {.stdcall.}
        GetVolume*: proc (this:ptr IDirectSoundBuffer8, lplVolume:ptr LONG): HRESULT {.stdcall.}
        GetPan*: proc (this:ptr IDirectSoundBuffer8, lplpan:ptr LONG): HRESULT {.stdcall.}
        GetFrequency*: proc (this:ptr IDirectSoundBuffer8, lpdwFrequency:ptr DWORD): HRESULT {.stdcall.}
        GetStatus*: proc (this:ptr IDirectSoundBuffer8, lpdwStatus:ptr DWORD): HRESULT {.stdcall.}
        Initialize*: proc (this:ptr IDirectSoundBuffer8, lpDirectSound:ptr IDirectSound, lpcDSBufferDesc:ptr DSBUFFERDESC): HRESULT {.stdcall.}
        Lock*: proc (this:ptr IDirectSoundBuffer8, dwOffset:DWORD, dwBytes:DWORD, ppvAudioPtr1:ptr pointer, pdwAudioBytes1:ptr DWORD, ppvAudioPtr2:ptr pointer, pdwAudioBytes2:ptr DWORD, dwFlags:DWORD): HRESULT {.stdcall.}
        Play*: proc (this:ptr IDirectSoundBuffer8, dwReserved1:DWORD, dwReserved2:DWORD, dwFlags:DWORD): HRESULT {.stdcall.}
        SetCurrentPosition*: proc (this:ptr IDirectSoundBuffer8, dwNewPosition:DWORD): HRESULT {.stdcall.}
        SetFormat*: proc (this:ptr IDirectSoundBuffer8, lpcfxFormat:ptr WAVEFORMATEX): HRESULT {.stdcall.}
        SetVolume*: proc (this:ptr IDirectSoundBuffer8, lVolume:LONG): HRESULT {.stdcall.}
        SetPan*: proc (this:ptr IDirectSoundBuffer8, lPan:LONG): HRESULT {.stdcall.}
        SetFrequency*: proc (this:ptr IDirectSoundBuffer8, dwFrequency:DWORD): HRESULT {.stdcall.}
        Stop*: proc (this:ptr IDirectSoundBuffer8): HRESULT {.stdcall.}
        Unlock*: proc (this:ptr IDirectSoundBuffer8, pvAudioPtr1:pointer, dwAudioBytes1:DWORD, pvAudioPtr2:pointer, dwAudioPtr2:DWORD): HRESULT {.stdcall.}
        Restore*: proc (this:ptr IDirectSoundBuffer8): HRESULT {.stdcall.}
        SetFX*: proc (this:ptr IDirectSoundBuffer8, dwEffectsCount:DWORD, pDSFXDesc:ptr DSEFFECTDESC, pdwResultCodes:ptr DWORD): HRESULT {.stdcall.}
        AcquireResources*: proc (this:ptr IDirectSoundBuffer8, dwFlags:DWORD, dwEffectsCount:DWORD, pdwResultCodes:ptr DWORD): HRESULT {.stdcall.}
        GetObjectInPath*: proc (this:ptr IDirectSoundBuffer8, rguidObject:REFGUID, dwIndex:DWORD, rguidInterface:REFGUID, ppObject:ptr pointer): HRESULT {.stdcall.}
    IDirectSoundBuffer8* = object
        lpVtbl*: ptr IDirectSoundBuffer8Vtbl
    IDirectSoundCaptureVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundCapture, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundCapture): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundCapture): ULONG {.stdcall.}
        CreateCaptureBuffer*: proc (this:ptr IDirectSoundCapture, lpcDSCBufferDesc:ptr DSCBUFFERDESC, lplpDSCaptureBuffer:ptr ptr IDirectSoundCAPTUREBUFFER, pUnk:ptr IUnknown): HRESULT {.stdcall.}
        GetCaps*: proc (this:ptr IDirectSoundCapture, lpDSCCaps:ptr DSCCAPS): HRESULT {.stdcall.}
        Initialize*: proc (this:ptr IDirectSoundCapture, lpcGUID:ptr GUID): HRESULT {.stdcall.}
    IDirectSoundCapture* = object
        lpVtbl*: ptr IDirectSoundCaptureVtbl
    IDirectSoundCaptureBufferVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundCaptureBuffer, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundCaptureBuffer): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundCaptureBuffer): ULONG {.stdcall.}
        GetCaps*: proc (this:ptr IDirectSoundCaptureBuffer, lpDSCBCaps:ptr DSCBCAPS): HRESULT {.stdcall.}
        GetCurrentPosition*: proc (this:ptr IDirectSoundCaptureBuffer, lpdwCapturePosition:ptr DWORD, lpdwReadPosition:ptr DWORD): HRESULT {.stdcall.}
        GetFormat*: proc (this:ptr IDirectSoundCaptureBuffer, lpwfxFormat:ptr WAVEFORMATEX, dwSizeAllocated:DWORD, lpdwSizeWritten:ptr DWORD): HRESULT {.stdcall.}
        GetStatus*: proc (this:ptr IDirectSoundCaptureBuffer, lpdwStatus:ptr DWORD): HRESULT {.stdcall.}
        Initialize*: proc (this:ptr IDirectSoundCaptureBuffer, lpDSC:ptr IDirectSoundCAPTURE, lpcDSCBDesc:ptr DSCBUFFERDESC): HRESULT {.stdcall.}
        Lock*: proc (this:ptr IDirectSoundCaptureBuffer, dwReadCusor:DWORD, dwReadBytes:DWORD, lplpvAudioPtr1:ptr pointer, lpdwAudioBytes1:ptr DWORD, lplpvAudioPtr2:ptr pointer, lpdwAudioBytes2:ptr DWORD, dwFlags:DWORD): HRESULT {.stdcall.}
        Start*: proc (this:ptr IDirectSoundCaptureBuffer, dwFlags:DWORD): HRESULT {.stdcall.}
        Stop*: proc (this:ptr IDirectSoundCaptureBuffer): HRESULT {.stdcall.}
        Unlock*: proc (this:ptr IDirectSoundCaptureBuffer, lpvAudioPtr1:pointer, dwAudioBytes1:DWORD, lpvAudioPtr2:pointer, dwAudioBytes2:DWORD): HRESULT {.stdcall.}
    IDirectSoundCaptureBuffer* = object
        lpVtbl*: ptr IDirectSoundCaptureBufferVtbl
    IDirectSoundCaptureBuffer8Vtbl* = object
        Base*: IDirectSoundCaptureBufferVtbl
        QueryInterface*: proc (this:ptr IDirectSoundCaptureBuffer8, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundCaptureBuffer8): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundCaptureBuffer8): ULONG {.stdcall.}
        GetCaps*: proc (this:ptr IDirectSoundCaptureBuffer8, lpDSCBCaps:ptr DSCBCAPS): HRESULT {.stdcall.}
        GetCurrentPosition*: proc (this:ptr IDirectSoundCaptureBuffer8, lpdwCapturePosition:ptr DWORD, lpdwReadPosition:ptr DWORD): HRESULT {.stdcall.}
        GetFormat*: proc (this:ptr IDirectSoundCaptureBuffer8, lpwfxFormat:ptr WAVEFORMATEX, dwSizeAllocated:DWORD, lpdwSizeWritten:ptr DWORD): HRESULT {.stdcall.}
        GetStatus*: proc (this:ptr IDirectSoundCaptureBuffer8, lpdwStatus:ptr DWORD): HRESULT {.stdcall.}
        Initialize*: proc (this:ptr IDirectSoundCaptureBuffer8, lpDSC:ptr IDirectSoundCAPTURE, lpcDSCBDesc:ptr DSCBUFFERDESC): HRESULT {.stdcall.}
        Lock*: proc (this:ptr IDirectSoundCaptureBuffer8, dwReadCusor:DWORD, dwReadBytes:DWORD, lplpvAudioPtr1:ptr pointer, lpdwAudioBytes1:ptr DWORD, lplpvAudioPtr2:ptr pointer, lpdwAudioBytes2:ptr DWORD, dwFlags:DWORD): HRESULT {.stdcall.}
        Start*: proc (this:ptr IDirectSoundCaptureBuffer8, dwFlags:DWORD): HRESULT {.stdcall.}
        Stop*: proc (this:ptr IDirectSoundCaptureBuffer8): HRESULT {.stdcall.}
        Unlock*: proc (this:ptr IDirectSoundCaptureBuffer8, lpvAudioPtr1:pointer, dwAudioBytes1:DWORD, lpvAudioPtr2:pointer, dwAudioBytes2:DWORD): HRESULT {.stdcall.}
        GetObjectInPath*: proc (this:ptr IDirectSoundCaptureBuffer8, rguidObject:REFGUID, dwIndex:DWORD, rguidInterface:REFGUID, ppObject:ptr pointer): HRESULT {.stdcall.}
        GetFXStatus*: proc (this:ptr IDirectSoundCaptureBuffer8, dwFXCount:DWORD, pdwFXStatus:ptr DWORD): HRESULT {.stdcall.}
    IDirectSoundCaptureBuffer8* = object
        lpVtbl*: ptr IDirectSoundCaptureBuffer8Vtbl
    IDirectSoundNotifyVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundNotify, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundNotify): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundNotify): ULONG {.stdcall.}
        SetNotificationPositions*: proc (this:ptr IDirectSoundNotify, cPositionNotifies:DWORD, lpcPositionNotifies:ptr DSBPOSITIONNOTIFY): HRESULT {.stdcall.}
    IDirectSoundNotify* = object
        lpVtbl*: ptr IDirectSoundNotifyVtbl
    IDirectSound3DListenerVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSound3DListener, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSound3DListener): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSound3DListener): ULONG {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSound3DListener, lpListener:ptr DS3DLISTENER): HRESULT {.stdcall.}
        GetDistanceFactor*: proc (this:ptr IDirectSound3DListener, lpflDistanceFactor:ptr D3DVALUE): HRESULT {.stdcall.}
        GetDopplerFactor*: proc (this:ptr IDirectSound3DListener, lpflDopplerFactor:ptr D3DVALUE): HRESULT {.stdcall.}
        GetOrientation*: proc (this:ptr IDirectSound3DListener, lpvOrientFront:ptr D3DVECTOR, lpvOrientTop:ptr D3DVECTOR): HRESULT {.stdcall.}
        GetPosition*: proc (this:ptr IDirectSound3DListener, lpvPosition:ptr D3DVECTOR): HRESULT {.stdcall.}
        GetRolloffFactor*: proc (this:ptr IDirectSound3DListener, lpflRolloffFactor:ptr D3DVALUE): HRESULT {.stdcall.}
        GetVelocity*: proc (this:ptr IDirectSound3DListener, lpvVelocity:ptr D3DVECTOR): HRESULT {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSound3DListener, lpcListener:ptr DS3DLISTENER, dwApply:DWORD): HRESULT {.stdcall.}
        SetDistanceFactor*: proc (this:ptr IDirectSound3DListener, flDistanceFactor:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        SetDopplerFactor*: proc (this:ptr IDirectSound3DListener, flDopplerFactor:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        SetOrientation*: proc (this:ptr IDirectSound3DListener, xFront:D3DVALUE, yFront:D3DVALUE, zFront:D3DVALUE, xTop:D3DVALUE, yTop:D3DVALUE, zTop:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        SetPosition*: proc (this:ptr IDirectSound3DListener, x:D3DVALUE, y:D3DVALUE, z:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        SetRolloffFactor*: proc (this:ptr IDirectSound3DListener, flRolloffFactor:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        SetVelocity*: proc (this:ptr IDirectSound3DListener, x:D3DVALUE, y:D3DVALUE, z:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        CommitDeferredSettings*: proc (this:ptr IDirectSound3DListener): HRESULT {.stdcall.}
    IDirectSound3DListener* = object
        lpVtbl*: ptr IDirectSound3DListenerVtbl
    IDirectSound3DBufferVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSound3DBuffer, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSound3DBuffer): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSound3DBuffer): ULONG {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSound3DBuffer, lpDs3dBuffer:ptr DS3DBUFFER): HRESULT {.stdcall.}
        GetConeAngles*: proc (this:ptr IDirectSound3DBuffer, lpdwInsideConeAngle:ptr DWORD, lpdwOutsideConeAngle:ptr DWORD): HRESULT {.stdcall.}
        GetConeOrientation*: proc (this:ptr IDirectSound3DBuffer, lpvOrientation:ptr D3DVECTOR): HRESULT {.stdcall.}
        GetConeOutsideVolume*: proc (this:ptr IDirectSound3DBuffer, lplConeOutsideVolume:ptr LONG): HRESULT {.stdcall.}
        GetMaxDistance*: proc (this:ptr IDirectSound3DBuffer, lpflMaxDistance:ptr D3DVALUE): HRESULT {.stdcall.}
        GetMinDistance*: proc (this:ptr IDirectSound3DBuffer, lpflMinDistance:ptr D3DVALUE): HRESULT {.stdcall.}
        GetMode*: proc (this:ptr IDirectSound3DBuffer, lpwdMode:ptr DWORD): HRESULT {.stdcall.}
        GetPosition*: proc (this:ptr IDirectSound3DBuffer, lpvPosition:ptr D3DVECTOR): HRESULT {.stdcall.}
        GetVelocity*: proc (this:ptr IDirectSound3DBuffer, lpvVelocity:ptr D3DVECTOR): HRESULT {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSound3DBuffer, lpcDs3dBuffer:ptr DS3DBUFFER, dwApply:DWORD): HRESULT {.stdcall.}
        SetConeAngles*: proc (this:ptr IDirectSound3DBuffer, dwInsideConeAngle:DWORD, dwOutsideConeAngle:DWORD, dwApply:DWORD): HRESULT {.stdcall.}
        SetConeOrientation*: proc (this:ptr IDirectSound3DBuffer, x:D3DVALUE, y:D3DVALUE, z:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        SetConeOutsideVolume*: proc (this:ptr IDirectSound3DBuffer, lConeOutsideVolume:LONG, dwApply:DWORD): HRESULT {.stdcall.}
        SetMaxDistance*: proc (this:ptr IDirectSound3DBuffer, flMaxDistance:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        SetMinDistance*: proc (this:ptr IDirectSound3DBuffer, flMinDistance:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        SetMode*: proc (this:ptr IDirectSound3DBuffer, dwMode:DWORD, dwApply:DWORD): HRESULT {.stdcall.}
        SetPosition*: proc (this:ptr IDirectSound3DBuffer, x:D3DVALUE, y:D3DVALUE, z:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
        SetVelocity*: proc (this:ptr IDirectSound3DBuffer, x:D3DVALUE, y:D3DVALUE, z:D3DVALUE, dwApply:DWORD): HRESULT {.stdcall.}
    IDirectSound3DBuffer* = object
        lpVtbl*: ptr IDirectSound3DBufferVtbl
    IKsPropertySetVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IKsPropertySet, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IKsPropertySet): ULONG {.stdcall.}
        Release*: proc (this:ptr IKsPropertySet): ULONG {.stdcall.}
        Get*: proc (this:ptr IKsPropertySet, rgid:REFGUID, x1:ULONG, p1:pointer, x2:ULONG, p2:pointer, x3:ULONG, px4:ptr ULONG): HRESULT {.stdcall.}
        Set*: proc (this:ptr IKsPropertySet, rgid:REFGUID, x1:ULONG, p1:pointer, x2:ULONG, p2:pointer, x3:ULONG): HRESULT {.stdcall.}
        QuerySupport*: proc (this:ptr IKsPropertySet, rgid:REFGUID, x1:ULONG, px2:ptr ULONG): HRESULT {.stdcall.}
    IKsPropertySet* = object
        lpVtbl*: ptr IKsPropertySetVtbl
    IDirectSoundFullDuplexVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFullDuplex, riid:ptr IID, ppvObject:ptr pointer): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFullDuplex): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFullDuplex): ULONG {.stdcall.}
        Initialize*: proc (this:ptr IDirectSoundFullDuplex, pCaptureGuid:ptr GUID, pRendererGuid:ptr GUID, lpDscBufferDesc:ptr DSCBUFFERDESC, lpDsBufferDesc:ptr DSBUFFERDESC, hWnd:HWND, dwLevel:DWORD, lplpDirectSoundCaptureBuffer8:ptr ptr IDirectSoundCAPTUREBUFFER8, lplpDirectSoundBuffer8:ptr ptr IDirectSoundBuffer8): HRESULT {.stdcall.}
    IDirectSoundFullDuplex* = object
        lpVtbl*: ptr IDirectSoundFullDuplexVtbl
    IDirectSoundFXI3DL2ReverbVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFXI3DL2Reverb): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFXI3DL2Reverb): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFXI3DL2Reverb): ULONG {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSoundFXI3DL2Reverb, reverb:ptr DSFXI3DL2Reverb): HRESULT {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSoundFXI3DL2Reverb, reverb:ptr DSFXI3DL2Reverb): HRESULT {.stdcall.}
        SetPreset*: proc (this:ptr IDirectSoundFXI3DL2Reverb, preset:DWORD): HRESULT {.stdcall.}
        GetPreset*: proc (this:ptr IDirectSoundFXI3DL2Reverb, preset:ptr DWORD): HRESULT {.stdcall.}
        SetQuality*: proc (this:ptr IDirectSoundFXI3DL2Reverb, quality:LONG): HRESULT {.stdcall.}
        GetQuality*: proc (this:ptr IDirectSoundFXI3DL2Reverb, quality:ptr LONG): HRESULT {.stdcall.}
    IDirectSoundFXI3DL2Reverb* = object
        lpVtbl*: ptr IDirectSoundFXI3DL2ReverbVtbl
    IDirectSoundFXGargleVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFXGargle): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFXGargle): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFXGargle): ULONG {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSoundFXGargle, gargle:ptr DSFXGargle): HRESULT {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSoundFXGargle, gargle:ptr DSFXGargle): HRESULT {.stdcall.}
    IDirectSoundFXGargle* = object
        lpVtbl*: ptr IDirectSoundFXGargleVtbl
    IDirectSoundFXChorusVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFXChorus): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFXChorus): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFXChorus): ULONG {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSoundFXChorus, chorus:ptr DSFXChorus): HRESULT {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSoundFXChorus, chorus:ptr DSFXChorus): HRESULT {.stdcall.}
    IDirectSoundFXChorus* = object
        lpVtbl*: ptr IDirectSoundFXChorusVtbl
    IDirectSoundFXFlangerVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFXFlanger): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFXFlanger): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFXFlanger): ULONG {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSoundFXFlanger, flanger:ptr DSFXFlanger): HRESULT {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSoundFXFlanger, flanger:ptr DSFXFlanger): HRESULT {.stdcall.}
    IDirectSoundFXFlanger* = object
        lpVtbl*: ptr IDirectSoundFXFlangerVtbl
    IDirectSoundFXEchoVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFXEcho): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFXEcho): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFXEcho): ULONG {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSoundFXEcho, echo:ptr DSFXEcho): HRESULT {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSoundFXEcho, echo:ptr DSFXEcho): HRESULT {.stdcall.}
    IDirectSoundFXEcho* = object
        lpVtbl*: ptr IDirectSoundFXEchoVtbl
    IDirectSoundFXDistortionVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFXDistortion): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFXDistortion): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFXDistortion): ULONG {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSoundFXDistortion, distortion:ptr DSFXDistortion): HRESULT {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSoundFXDistortion, distortion:ptr DSFXDistortion): HRESULT {.stdcall.}
    IDirectSoundFXDistortion* = object
        lpVtbl*: ptr IDirectSoundFXDistortionVtbl
    IDirectSoundFXCompressorVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFXCompressor): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFXCompressor): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFXCompressor): ULONG {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSoundFXCompressor, compressor:ptr DSFXCompressor): HRESULT {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSoundFXCompressor, compressor:ptr DSFXCompressor): HRESULT {.stdcall.}
    IDirectSoundFXCompressor* = object
        lpVtbl*: ptr IDirectSoundFXCompressorVtbl
    IDirectSoundFXParamEqVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFXParamEq): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFXParamEq): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFXParamEq): ULONG {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSoundFXParamEq, param:ptr DSFXParamEq): HRESULT {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSoundFXParamEq, param:ptr DSFXParamEq): HRESULT {.stdcall.}
    IDirectSoundFXParamEq* = object
        lpVtbl*: ptr IDirectSoundFXParamEqVtbl
    IDirectSoundFXWavesReverbVtbl* = object
        Base*: IUnknownVtbl
        QueryInterface*: proc (this:ptr IDirectSoundFXWavesReverb): HRESULT {.stdcall.}
        AddRef*: proc (this:ptr IDirectSoundFXWavesReverb): ULONG {.stdcall.}
        Release*: proc (this:ptr IDirectSoundFXWavesReverb): ULONG {.stdcall.}
        SetAllParameters*: proc (this:ptr IDirectSoundFXWavesReverb, reverb:ptr DSFXWavesReverb): HRESULT {.stdcall.}
        GetAllParameters*: proc (this:ptr IDirectSoundFXWavesReverb, reverb:ptr DSFXWavesReverb): HRESULT {.stdcall.}
    IDirectSoundFXWavesReverb* = object
        lpVtbl*: ptr IDirectSoundFXWavesReverbVtbl
        
        
#~ typedef const GUID *ptr GUID;

#~ typedef WINBOOL (CALLBACK *ptr DSENUMCALLBACKW)(ptr GUID,ptr WSTR,ptr WSTR,pointer);
#~ typedef WINBOOL (CALLBACK *ptr DSENUMCALLBACKA)(ptr GUID,ptr STR,ptr STR,pointer);
#~ __MINGW_TYPEDEF_AW(ptr DSENUMCALLBACK)

#~ extern HRESULT WINAPI DirectSoundCreate(ptr GUID lpGUID,ptr IDirectSound *ppDS,ptr IUnknown pUnkOuter);
#~ extern HRESULT WINAPI DirectSoundEnumerateA(ptr DSENUMCALLBACKA, pointer);
#~ extern HRESULT WINAPI DirectSoundEnumerateW(ptr DSENUMCALLBACKW, pointer);
#define DirectSoundEnumerate __MINGW_NAME_AW(DirectSoundEnumerate)
#~ extern HRESULT WINAPI DirectSoundCaptureCreate(ptr GUID lpGUID, ptr IDirectSoundCAPTURE *ppDSC, ptr IUnknown pUnkOuter);
#~ extern HRESULT WINAPI DirectSoundCaptureEnumerateA(ptr DSENUMCALLBACKA, pointer);
#~ extern HRESULT WINAPI DirectSoundCaptureEnumerateW(ptr DSENUMCALLBACKW, pointer);
#define DirectSoundCaptureEnumerate __MINGW_NAME_AW(DirectSoundCaptureEnumerate)
#~ extern HRESULT WINAPI DirectSoundCreate8(ptr GUID lpGUID,ptr IDirectSound8 *ppDS8,ptr IUnknown pUnkOuter);
#~ extern HRESULT WINAPI DirectSoundCaptureCreate8(ptr GUID lpGUID, ptr IDirectSoundCAPTURE8 *ppDSC8, ptr IUnknown pUnkOuter);
#~ extern HRESULT WINAPI DirectSoundFullDuplexCreate(ptr GUID pcGuidCaptureDevice, ptr GUID pcGuidRenderDevice,
    #~ ptr DSCBUFFERDESC pcDSCBufferDesc, ptr DSBUFFERDESC pcDSBufferDesc, HWND hWnd, DWORD dwLevel,
    #~ ptr IDirectSoundFULLDUPLEX *ppDSFD, ptr IDirectSoundCAPTUREBUFFER8 *ppDSCBuffer8, ptr IDirectSoundBuffer8 *ppDSBuffer8, ptr IUnknown pUnkOuter);
#define DirectSoundFullDuplexCreate8 DirectSoundFullDuplexCreate
#~ extern HRESULT WINAPI GetDeviceID(ptr GUID lpGuidSrc, ptr GUID lpGuidDest);

type DSENUMCALLBACKW* = proc(guid:ptr GUID,str:ptr WCHAR, str2:ptr WCHAR, p:pointer): BOOL {.cdecl.}
type DSENUMCALLBACKA* = proc(guid:ptr GUID,str:ptr CHAR, str2:ptr CHAR, p:pointer): BOOL {.cdecl.}
type LPDSENUMCALLBACKA* = ptr DSENUMCALLBACKA

proc DirectSoundCreate*(lpGUID:ptr GUID, ppDS:ptr ptr IDirectSound, pUnkOuter:ptr IUnknown): HRESULT {.stdcall, importc.}
proc DirectSoundEnumerateA*(cb:DSENUMCALLBACKA, p:pointer): HRESULT {.stdcall, importc.}
proc DirectSoundEnumerateW*(cb:DSENUMCALLBACKW, p:pointer): HRESULT {.stdcall, importc.}

proc DirectSoundCaptureCreate*(lpGUID:ptr GUID, ppDSC:ptr ptr IDirectSoundCapture, pUnkOuter:ptr IUnknown): HRESULT {.stdcall, importc.}
proc DirectSoundCaptureEnumerateA*(cb:DSENUMCALLBACKA, p:pointer): HRESULT {.stdcall, importc.}
proc DirectSoundCaptureEnumerateW*(cb:DSENUMCALLBACKW, p:pointer): HRESULT {.stdcall, importc.}

proc DirectSoundCreate8*(lpGUID:ptr GUID, ppDS8:ptr ptr IDirectSound8, pUnkOuter:ptr IUnknown): HRESULT {.stdcall, importc.}
proc DirectSoundCaptureCreate8*(lpGUID:ptr GUID, ppDSC8:ptr ptr IDirectSoundCapture, pUnkOuter:ptr IUnknown): HRESULT {.stdcall, importc.}
proc DirectSoundFullDuplexCreate*(pcGuidCaptureDevice:ptr GUID, pcGuidRenderDevice:ptr GUID,
    pcDSCBufferDesc,  pcDSBufferDesc:ptr DSBUFFERDESC, hWnd:HWND, dwLevel:DWORD,
    ppDSFD:ptr ptr IDirectSoundFULLDUPLEX, ppDSCBuffer8:ptr ptr IDirectSoundCaptureBuffer8, ppDSBuffer8:ptr ptr IDirectSoundBuffer8, pUnkOuter:ptr IUnknown): HRESULT {.stdcall, importc.}

proc GetDeviceID*(lpGuidSrc:ptr GUID, lpGuidDest:ptr GUID): HRESULT {.stdcall, importc.}

template DSSPEAKER_COMBINED*(c, g: untyped): untyped =
  ((DWORD)(((BYTE)(c)) or ((DWORD)((BYTE)(g))) shl 16))

template DSSPEAKER_CONFIG*(a: untyped): untyped =
  ((BYTE)(a))

template DSSPEAKER_GEOMETRY*(a: untyped): untyped =
  ((BYTE)(((DWORD)(a) shr 16) and 0x00FF))
## * IUnknown methods **

template IDirectSound3DListener_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSound3DListener_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSound3DListener_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSound3DListener methods **

template IDirectSound3DListener_GetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.GetAllParameters(p, a)

template IDirectSound3DListener_GetDistanceFactor*(p, a: untyped): untyped =
  (p).lpVtbl.GetDistanceFactor(p, a)

template IDirectSound3DListener_GetDopplerFactor*(p, a: untyped): untyped =
  (p).lpVtbl.GetDopplerFactor(p, a)

template IDirectSound3DListener_GetOrientation*(p, a, b: untyped): untyped =
  (p).lpVtbl.GetOrientation(p, a, b)

template IDirectSound3DListener_GetPosition*(p, a: untyped): untyped =
  (p).lpVtbl.GetPosition(p, a)

template IDirectSound3DListener_GetRolloffFactor*(p, a: untyped): untyped =
  (p).lpVtbl.GetRolloffFactor(p, a)

template IDirectSound3DListener_GetVelocity*(p, a: untyped): untyped =
  (p).lpVtbl.GetVelocity(p, a)

template IDirectSound3DListener_SetAllParameters*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetAllParameters(p, a, b)

template IDirectSound3DListener_SetDistanceFactor*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetDistanceFactor(p, a, b)

template IDirectSound3DListener_SetDopplerFactor*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetDopplerFactor(p, a, b)

template IDirectSound3DListener_SetOrientation*(p, a, b, c, d, e, f, g: untyped): untyped =
  (p).lpVtbl.SetOrientation(p, a, b, c, d, e, f, g)

template IDirectSound3DListener_SetPosition*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.SetPosition(p, a, b, c, d)

template IDirectSound3DListener_SetRolloffFactor*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetRolloffFactor(p, a, b)

template IDirectSound3DListener_SetVelocity*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.SetVelocity(p, a, b, c, d)

template IDirectSound3DListener_CommitDeferredSettings*(p: untyped): untyped =
  (p).lpVtbl.CommitDeferredSettings(p)
## * IUnknown methods **

template IDirectSound3DBuffer_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSound3DBuffer_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSound3DBuffer_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSound3DBuffer methods **

template IDirectSound3DBuffer_GetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.GetAllParameters(p, a)

template IDirectSound3DBuffer_GetConeAngles*(p, a, b: untyped): untyped =
  (p).lpVtbl.GetConeAngles(p, a, b)

template IDirectSound3DBuffer_GetConeOrientation*(p, a: untyped): untyped =
  (p).lpVtbl.GetConeOrientation(p, a)

template IDirectSound3DBuffer_GetConeOutsideVolume*(p, a: untyped): untyped =
  (p).lpVtbl.GetConeOutsideVolume(p, a)

template IDirectSound3DBuffer_GetMaxDistance*(p, a: untyped): untyped =
  (p).lpVtbl.GetMaxDistance(p, a)

template IDirectSound3DBuffer_GetMinDistance*(p, a: untyped): untyped =
  (p).lpVtbl.GetMinDistance(p, a)

template IDirectSound3DBuffer_GetMode*(p, a: untyped): untyped =
  (p).lpVtbl.GetMode(p, a)

template IDirectSound3DBuffer_GetPosition*(p, a: untyped): untyped =
  (p).lpVtbl.GetPosition(p, a)

template IDirectSound3DBuffer_GetVelocity*(p, a: untyped): untyped =
  (p).lpVtbl.GetVelocity(p, a)

template IDirectSound3DBuffer_SetAllParameters*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetAllParameters(p, a, b)

template IDirectSound3DBuffer_SetConeAngles*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.SetConeAngles(p, a, b, c)

template IDirectSound3DBuffer_SetConeOrientation*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.SetConeOrientation(p, a, b, c, d)

template IDirectSound3DBuffer_SetConeOutsideVolume*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetConeOutsideVolume(p, a, b)

template IDirectSound3DBuffer_SetMaxDistance*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetMaxDistance(p, a, b)

template IDirectSound3DBuffer_SetMinDistance*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetMinDistance(p, a, b)

template IDirectSound3DBuffer_SetMode*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetMode(p, a, b)

template IDirectSound3DBuffer_SetPosition*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.SetPosition(p, a, b, c, d)

template IDirectSound3DBuffer_SetVelocity*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.SetVelocity(p, a, b, c, d)
## * IUnknown methods **

template IKsPropertySet_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IKsPropertySet_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IKsPropertySet_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IKsPropertySet methods **

template IKsPropertySet_Get*(p, a, b, c, d, e, f, g: untyped): untyped =
  (p).lpVtbl.Get(p, a, b, c, d, e, f, g)

template IKsPropertySet_Set*(p, a, b, c, d, e, f: untyped): untyped =
  (p).lpVtbl.Set(p, a, b, c, d, e, f)

template IKsPropertySet_QuerySupport*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.QuerySupport(p, a, b, c)

## * IUnknown methods **

template IDirectSoundFullDuplex_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundFullDuplex_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundFullDuplex_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSoundFullDuplex methods **

template IDirectSoundFullDuplex_Initialize*(p, a, b, c, d, e, f, g, h: untyped): untyped =
  (p).lpVtbl.Initialize(p, a, b, c, d, e, f, g, h)

template IDirectSoundFXI3DL2Reverb_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundFXI3DL2Reverb_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundFXI3DL2Reverb_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

template IDirectSoundFXI3DL2Reverb_SetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.SetAllParameters(p, a)

template IDirectSoundFXI3DL2Reverb_GetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.GetAllParameters(p, a)

template IDirectSoundFXI3DL2Reverb_SetPreset*(p, a: untyped): untyped =
  (p).lpVtbl.SetPreset(p, a)

template IDirectSoundFXI3DL2Reverb_GetPreset*(p, a: untyped): untyped =
  (p).lpVtbl.GetPreset(p, a)
template IDirectSoundFXGargle_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundFXGargle_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundFXGargle_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

template IDirectSoundFXGargle_SetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.SetAllParameters(p, a)

template IDirectSoundFXGargle_GetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.GetAllParameters(p, a)
template IDirectSoundFXChorus_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundFXChorus_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundFXChorus_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

template IDirectSoundFXChorus_SetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.SetAllParameters(p, a)

template IDirectSoundFXChorus_GetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.GetAllParameters(p, a)
## * IUnknown methods **

template IDirectSound_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSound_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSound_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSound methods **

template IDirectSound_CreateSoundBuffer*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.CreateSoundBuffer(p, a, b, c)

template IDirectSound_GetCaps*(p, a: untyped): untyped =
  (p).lpVtbl.GetCaps(p, a)

template IDirectSound_DuplicateSoundBuffer*(p, a, b: untyped): untyped =
  (p).lpVtbl.DuplicateSoundBuffer(p, a, b)

template IDirectSound_SetCooperativeLevel*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetCooperativeLevel(p, a, b)

template IDirectSound_Compact*(p: untyped): untyped =
  (p).lpVtbl.Compact(p)

template IDirectSound_GetSpeakerConfig*(p, a: untyped): untyped =
  (p).lpVtbl.GetSpeakerConfig(p, a)

template IDirectSound_SetSpeakerConfig*(p, a: untyped): untyped =
  (p).lpVtbl.SetSpeakerConfig(p, a)

template IDirectSound_Initialize*(p, a: untyped): untyped =
  (p).lpVtbl.Initialize(p, a)

## * IUnknown methods **

template IDirectSound8_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSound8_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSound8_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSound methods **

template IDirectSound8_CreateSoundBuffer*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.CreateSoundBuffer(p, a, b, c)

template IDirectSound8_GetCaps*(p, a: untyped): untyped =
  (p).lpVtbl.GetCaps(p, a)

template IDirectSound8_DuplicateSoundBuffer*(p, a, b: untyped): untyped =
  (p).lpVtbl.DuplicateSoundBuffer(p, a, b)

template IDirectSound8_SetCooperativeLevel*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetCooperativeLevel(p, a, b)

template IDirectSound8_Compact*(p: untyped): untyped =
  (p).lpVtbl.Compact(p)

template IDirectSound8_GetSpeakerConfig*(p, a: untyped): untyped =
  (p).lpVtbl.GetSpeakerConfig(p, a)

template IDirectSound8_SetSpeakerConfig*(p, a: untyped): untyped =
  (p).lpVtbl.SetSpeakerConfig(p, a)

template IDirectSound8_Initialize*(p, a: untyped): untyped =
  (p).lpVtbl.Initialize(p, a)

## * IDirectSound8 methods **

template IDirectSound8_VerifyCertification*(p, a: untyped): untyped =
  (p).lpVtbl.VerifyCertification(p, a)

## * IUnknown methods **

template IDirectSoundBuffer_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundBuffer_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundBuffer_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSoundBuffer methods **

template IDirectSoundBuffer_GetCaps*(p, a: untyped): untyped =
  (p).lpVtbl.GetCaps(p, a)

template IDirectSoundBuffer_GetCurrentPosition*(p, a, b: untyped): untyped =
  (p).lpVtbl.GetCurrentPosition(p, a, b)

template IDirectSoundBuffer_GetFormat*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.GetFormat(p, a, b, c)

template IDirectSoundBuffer_GetVolume*(p, a: untyped): untyped =
  (p).lpVtbl.GetVolume(p, a)

template IDirectSoundBuffer_GetPan*(p, a: untyped): untyped =
  (p).lpVtbl.GetPan(p, a)

template IDirectSoundBuffer_GetFrequency*(p, a: untyped): untyped =
  (p).lpVtbl.GetFrequency(p, a)

template IDirectSoundBuffer_GetStatus*(p, a: untyped): untyped =
  (p).lpVtbl.GetStatus(p, a)

template IDirectSoundBuffer_Initialize*(p, a, b: untyped): untyped =
  (p).lpVtbl.Initialize(p, a, b)

template IDirectSoundBuffer_Lock*(p, a, b, c, d, e, f, g: untyped): untyped =
  (p).lpVtbl.Lock(p, a, b, c, d, e, f, g)

template IDirectSoundBuffer_Play*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.Play(p, a, b, c)

template IDirectSoundBuffer_SetCurrentPosition*(p, a: untyped): untyped =
  (p).lpVtbl.SetCurrentPosition(p, a)

template IDirectSoundBuffer_SetFormat*(p, a: untyped): untyped =
  (p).lpVtbl.SetFormat(p, a)

template IDirectSoundBuffer_SetVolume*(p, a: untyped): untyped =
  (p).lpVtbl.SetVolume(p, a)

template IDirectSoundBuffer_SetPan*(p, a: untyped): untyped =
  (p).lpVtbl.SetPan(p, a)

template IDirectSoundBuffer_SetFrequency*(p, a: untyped): untyped =
  (p).lpVtbl.SetFrequency(p, a)

template IDirectSoundBuffer_Stop*(p: untyped): untyped =
  (p).lpVtbl.Stop(p)

template IDirectSoundBuffer_Unlock*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.Unlock(p, a, b, c, d)

template IDirectSoundBuffer_Restore*(p: untyped): untyped =
  (p).lpVtbl.Restore(p)

## * IUnknown methods **

template IDirectSoundBuffer8_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundBuffer8_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundBuffer8_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSoundBuffer methods **

template IDirectSoundBuffer8_GetCaps*(p, a: untyped): untyped =
  (p).lpVtbl.GetCaps(p, a)

template IDirectSoundBuffer8_GetCurrentPosition*(p, a, b: untyped): untyped =
  (p).lpVtbl.GetCurrentPosition(p, a, b)

template IDirectSoundBuffer8_GetFormat*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.GetFormat(p, a, b, c)

template IDirectSoundBuffer8_GetVolume*(p, a: untyped): untyped =
  (p).lpVtbl.GetVolume(p, a)

template IDirectSoundBuffer8_GetPan*(p, a: untyped): untyped =
  (p).lpVtbl.GetPan(p, a)

template IDirectSoundBuffer8_GetFrequency*(p, a: untyped): untyped =
  (p).lpVtbl.GetFrequency(p, a)

template IDirectSoundBuffer8_GetStatus*(p, a: untyped): untyped =
  (p).lpVtbl.GetStatus(p, a)

template IDirectSoundBuffer8_Initialize*(p, a, b: untyped): untyped =
  (p).lpVtbl.Initialize(p, a, b)

template IDirectSoundBuffer8_Lock*(p, a, b, c, d, e, f, g: untyped): untyped =
  (p).lpVtbl.Lock(p, a, b, c, d, e, f, g)

template IDirectSoundBuffer8_Play*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.Play(p, a, b, c)

template IDirectSoundBuffer8_SetCurrentPosition*(p, a: untyped): untyped =
  (p).lpVtbl.SetCurrentPosition(p, a)

template IDirectSoundBuffer8_SetFormat*(p, a: untyped): untyped =
  (p).lpVtbl.SetFormat(p, a)

template IDirectSoundBuffer8_SetVolume*(p, a: untyped): untyped =
  (p).lpVtbl.SetVolume(p, a)

template IDirectSoundBuffer8_SetPan*(p, a: untyped): untyped =
  (p).lpVtbl.SetPan(p, a)

template IDirectSoundBuffer8_SetFrequency*(p, a: untyped): untyped =
  (p).lpVtbl.SetFrequency(p, a)

template IDirectSoundBuffer8_Stop*(p: untyped): untyped =
  (p).lpVtbl.Stop(p)

template IDirectSoundBuffer8_Unlock*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.Unlock(p, a, b, c, d)

template IDirectSoundBuffer8_Restore*(p: untyped): untyped =
  (p).lpVtbl.Restore(p)

## * IDirectSoundBuffer8 methods **

template IDirectSoundBuffer8_SetFX*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.SetFX(p, a, b, c)

template IDirectSoundBuffer8_AcquireResources*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.AcquireResources(p, a, b, c)

template IDirectSoundBuffer8_GetObjectInPath*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.GetObjectInPath(p, a, b, c, d)

## * IUnknown methods **

template IDirectSoundCapture_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundCapture_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundCapture_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSoundCapture methods **

template IDirectSoundCapture_CreateCaptureBuffer*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.CreateCaptureBuffer(p, a, b, c)

template IDirectSoundCapture_GetCaps*(p, a: untyped): untyped =
  (p).lpVtbl.GetCaps(p, a)

template IDirectSoundCapture_Initialize*(p, a: untyped): untyped =
  (p).lpVtbl.Initialize(p, a)

## * IUnknown methods **

template IDirectSoundCaptureBuffer_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundCaptureBuffer_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundCaptureBuffer_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSoundCaptureBuffer methods **

template IDirectSoundCaptureBuffer_GetCaps*(p, a: untyped): untyped =
  (p).lpVtbl.GetCaps(p, a)

template IDirectSoundCaptureBuffer_GetCurrentPosition*(p, a, b: untyped): untyped =
  (p).lpVtbl.GetCurrentPosition(p, a, b)

template IDirectSoundCaptureBuffer_GetFormat*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.GetFormat(p, a, b, c)

template IDirectSoundCaptureBuffer_GetStatus*(p, a: untyped): untyped =
  (p).lpVtbl.GetStatus(p, a)

template IDirectSoundCaptureBuffer_Initialize*(p, a, b: untyped): untyped =
  (p).lpVtbl.Initialize(p, a, b)

template IDirectSoundCaptureBuffer_Lock*(p, a, b, c, d, e, f, g: untyped): untyped =
  (p).lpVtbl.Lock(p, a, b, c, d, e, f, g)

template IDirectSoundCaptureBuffer_Start*(p, a: untyped): untyped =
  (p).lpVtbl.Start(p, a)

template IDirectSoundCaptureBuffer_Stop*(p: untyped): untyped =
  (p).lpVtbl.Stop(p)

template IDirectSoundCaptureBuffer_Unlock*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.Unlock(p, a, b, c, d)

## * IUnknown methods **

template IDirectSoundCaptureBuffer8_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundCaptureBuffer8_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundCaptureBuffer8_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSoundCaptureBuffer methods **

template IDirectSoundCaptureBuffer8_GetCaps*(p, a: untyped): untyped =
  (p).lpVtbl.GetCaps(p, a)

template IDirectSoundCaptureBuffer8_GetCurrentPosition*(p, a, b: untyped): untyped =
  (p).lpVtbl.GetCurrentPosition(p, a, b)

template IDirectSoundCaptureBuffer8_GetFormat*(p, a, b, c: untyped): untyped =
  (p).lpVtbl.GetFormat(p, a, b, c)

template IDirectSoundCaptureBuffer8_GetStatus*(p, a: untyped): untyped =
  (p).lpVtbl.GetStatus(p, a)

template IDirectSoundCaptureBuffer8_Initialize*(p, a, b: untyped): untyped =
  (p).lpVtbl.Initialize(p, a, b)

template IDirectSoundCaptureBuffer8_Lock*(p, a, b, c, d, e, f, g: untyped): untyped =
  (p).lpVtbl.Lock(p, a, b, c, d, e, f, g)

template IDirectSoundCaptureBuffer8_Start*(p, a: untyped): untyped =
  (p).lpVtbl.Start(p, a)

template IDirectSoundCaptureBuffer8_Stop*(p: untyped): untyped =
  (p).lpVtbl.Stop(p)

template IDirectSoundCaptureBuffer8_Unlock*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.Unlock(p, a, b, c, d)

## * IDirectSoundCaptureBuffer8 methods **

template IDirectSoundCaptureBuffer8_GetObjectInPath*(p, a, b, c, d: untyped): untyped =
  (p).lpVtbl.GetObjectInPath(p, a, b, c, d)

template IDirectSoundCaptureBuffer8_GetFXStatus*(p, a, b: untyped): untyped =
  (p).lpVtbl.GetFXStatus(p, a, b)

## * IUnknown methods **

template IDirectSoundNotify_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundNotify_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundNotify_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

## * IDirectSoundNotify methods **

template IDirectSoundNotify_SetNotificationPositions*(p, a, b: untyped): untyped =
  (p).lpVtbl.SetNotificationPositions(p, a, b)
template IDirectSoundFXFlanger_QueryInterface*(p, a, b: untyped): untyped = (p).lpVtbl.QueryInterface(p, a, b)
template IDirectSoundFXFlanger_AddRef*(p: untyped): untyped = (p).lpVtbl.AddRef(p)
template IDirectSoundFXFlanger_Release*(p: untyped): untyped = (p).lpVtbl.Release(p)
template IDirectSoundFXFlanger_SetAllParameters*(p, a: untyped): untyped = (p).lpVtbl.SetAllParameters(p, a)
template IDirectSoundFXFlanger_GetAllParameters*(p, a: untyped): untyped = (p).lpVtbl.GetAllParameters(p, a)
template IDirectSoundFXEcho_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundFXEcho_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundFXEcho_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

template IDirectSoundFXEcho_SetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.SetAllParameters(p, a)

template IDirectSoundFXEcho_GetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.GetAllParameters(p, a)
template IDirectSoundFXDistortion_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundFXDistortion_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundFXDistortion_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

template IDirectSoundFXDistortion_SetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.SetAllParameters(p, a)

template IDirectSoundFXDistortion_GetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.GetAllParameters(p, a)
template IDirectSoundFXCompressor_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundFXCompressor_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundFXCompressor_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

template IDirectSoundFXCompressor_SetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.SetAllParameters(p, a)

template IDirectSoundFXCompressor_GetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.GetAllParameters(p, a)
template IDirectSoundFXWavesReverb_QueryInterface*(p, a, b: untyped): untyped =
  (p).lpVtbl.QueryInterface(p, a, b)

template IDirectSoundFXWavesReverb_AddRef*(p: untyped): untyped =
  (p).lpVtbl.AddRef(p)

template IDirectSoundFXWavesReverb_Release*(p: untyped): untyped =
  (p).lpVtbl.Release(p)

template IDirectSoundFXWavesReverb_SetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.SetAllParameters(p, a)

template IDirectSoundFXWavesReverb_GetAllParameters*(p, a: untyped): untyped =
  (p).lpVtbl.GetAllParameters(p, a)
