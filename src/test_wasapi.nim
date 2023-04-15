import winim/lean
import direct/[audiosessiontypes, audioclient]

const REFTIMES_PER_SEC = 10000000
const REFTIMES_PER_MILLISEC = 10000

proc RecordAudioStream(pMySink:ptr MyAudioSink):HRESULT=
    var hnsRequestedDuration = REFTIMES_PER_SEC;
    var hnsActualDuration:REFERENCE_TIME
    var bufferFrameCount,numFramesAvailable:UINT32
    var pEnumerator:ptr IMMDeviceEnumerator
    var pDevice:ptr IMMDevice
    var pAudioClient:ptr IAudioClient
    var pCaptureClient:ptr IAudioCaptureClient
    var pwfx:ptr WAVEFORMATEX
    var packetLength:UINT32
    var bDone = FALSE;
    var pData:ptr BYTE
    var flags:DWORD

    var hr = CoCreateInstance(CLSID_MMDeviceEnumerator, NULL, CLSCTX_ALL, IID_IMMDeviceEnumerator, &pEnumerator);
    EXIT_ON_ERROR(hr)

    hr = pEnumerator.lpVtbl.GetDefaultAudioEndpoint(pEnumerator, eCapture, eConsole, &pDevice);
    EXIT_ON_ERROR(hr)

    hr = pDevice.lpVtbl.Activate(pDevice, IID_IAudioClient, CLSCTX_ALL, NULL, &pAudioClient);
    EXIT_ON_ERROR(hr)

    hr = pAudioClient.lpVtbl.GetMixFormat(pAudioClient, &pwfx);
    EXIT_ON_ERROR(hr)

    hr = pAudioClient.lpVtbl.Initialize(pAudioClient, 
                         AUDCLNT_SHAREMODE_SHARED,
                         0,
                         hnsRequestedDuration,
                         0,
                         pwfx,
                         NULL);
    EXIT_ON_ERROR(hr)

    # Get the size of the allocated buffer.
    hr = pAudioClient.lpVtbl.GetBufferSize(pAudioClient, &bufferFrameCount);
    EXIT_ON_ERROR(hr)

    hr = pAudioClient.lpVtbl.GetService(pAudioClient, IID_IAudioCaptureClient, &pCaptureClient);
    EXIT_ON_ERROR(hr)

    # Notify the audio sink which format to use.
    hr = pMySink.lpVtbl.SetFormat(pMySink, pwfx);
    EXIT_ON_ERROR(hr)

    # Calculate the actual duration of the allocated buffer.
    hnsActualDuration = REFTIMES_PER_SEC.double * bufferFrameCount / pwfx.nSamplesPerSec;

    hr = pAudioClient.lpVtbl.Start();  # Start recording.
    EXIT_ON_ERROR(hr)

    # Each loop fills about half of the shared buffer.
    while not bDone:
        # Sleep for half the buffer duration.
        Sleep(hnsActualDuration/REFTIMES_PER_MILLISEC/2);

        hr = pCaptureClient.lpVtbl.GetNextPacketSize(pCaptureClient, &packetLength);
        EXIT_ON_ERROR(hr)

        while packetLength != 0:
            # Get the available data in the shared buffer.
            hr = pCaptureClient.lpVtbl.GetBuffer(pCaptureClient, 
                                   &pData,
                                   &numFramesAvailable,
                                   &flags, NULL, NULL);
            EXIT_ON_ERROR(hr)

            if flags and AUDCLNT_BUFFERFLAGS_SILENT:
                pData = NULL;  # Tell CopyData to write silence.

            # Copy the available capture data to the audio sink.
            hr = pMySink.lpVtbl.CopyData(pMySink, pData, numFramesAvailable, &bDone);
            EXIT_ON_ERROR(hr)

            hr = pCaptureClient.lpVtbl.ReleaseBuffer(pCaptureClient, numFramesAvailable);
            EXIT_ON_ERROR(hr)

            hr = pCaptureClient.lpVtbl.GetNextPacketSize(pCaptureClient, &packetLength);
            EXIT_ON_ERROR(hr)

    hr = pAudioClient.lpVtbl.Stop(pAudioClient);  # Stop recording.
    EXIT_ON_ERROR(hr)
