type
  AudioSessionState* = enum
    AudioSessionStateInactive = 0, 
    AudioSessionStateActive = 1,
    AudioSessionStateExpired = 2
  AUDCLNT_SHAREMODE* = enum
    AUDCLNT_SHAREMODE_SHARED, 
    AUDCLNT_SHAREMODE_EXCLUSIVE
  AUDIO_STREAM_CATEGORY* = enum
    AudioCategory_Other = 0, 
    AudioCategory_ForegroundOnlyMedia,
    AudioCategory_BackgroundCapableMedia, 
    AudioCategory_Communications,
    AudioCategory_Alerts, 
    AudioCategory_SoundEffects, 
    AudioCategory_GameEffects,
    AudioCategory_GameMedia, 
    AudioCategory_GameChat, 
    AudioCategory_Speech,
    AudioCategory_Movie, 
    AudioCategory_Media

const
  AUDCLNT_STREAMFLAGS_CROSSPROCESS* = 0x00010000
  AUDCLNT_STREAMFLAGS_LOOPBACK* = 0x00020000
  AUDCLNT_STREAMFLAGS_EVENTCALLBACK* = 0x00040000
  AUDCLNT_STREAMFLAGS_NOPERSIST* = 0x00080000
  AUDCLNT_STREAMFLAGS_RATEADJUST* = 0x00100000
  AUDCLNT_SESSIONFLAGS_EXPIREWHENUNOWNED* = 0x10000000
  AUDCLNT_SESSIONFLAGS_DISPLAY_HIDE* = 0x20000000
  AUDCLNT_SESSIONFLAGS_DISPLAY_HIDEWHENEXPIRED* = 0x40000000
