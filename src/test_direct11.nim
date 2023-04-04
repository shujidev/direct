import window_winim
import winim/lean, winim/com
if CoInitializeEx(nil, COINIT_MULTITHREADED)!=S_OK: echo "CoInitializeEx error "

import direct/[d3d11,d3d11_1,d3dcommon,dxgi1_2,dxgi,dxgiformat,d3dcompiler]
import math


proc CreateD3D11Device*(): auto =
    # Create D3D11 Device and Context
    var d3d11Device:ptr ID3D11Device1
    var d3d11DeviceContext:ptr ID3D11DeviceContext1
    block:
        var baseDevice:ptr ID3D11Device
        var baseDeviceContext:ptr ID3D11DeviceContext
        var featureLevels = [
            D3D_FEATURE_LEVEL_11_1,
            D3D_FEATURE_LEVEL_11_0,
            D3D_FEATURE_LEVEL_10_1,
            D3D_FEATURE_LEVEL_10_0,
            D3D_FEATURE_LEVEL_9_3,
            D3D_FEATURE_LEVEL_9_2,
            D3D_FEATURE_LEVEL_9_1]
        var creationFlags = D3D11_CREATE_DEVICE_BGRA_SUPPORT.cint
        #if defined(DEBUG_BUILD)
        #~ creationFlags = creationFlags or D3D11_CREATE_DEVICE_DEBUG.cint
        #endif

        var hResult = D3D11CreateDevice(nil, D3D_DRIVER_TYPE_HARDWARE, 
                                            0, creationFlags, 
                                            &featureLevels[0], UINT len(featureLevels), 
                                            D3D11_SDK_VERSION, &baseDevice, 
                                            nil, &baseDeviceContext);
        if FAILED(hResult):
            MessageBoxA(0, "D3D11CreateDevice() failed", "Fatal Error", MB_OK)
            quit GetLastError()
            
        # Get 1.1 interface of D3D11 Device and Context
        hResult = baseDevice.lpVtbl.QueryInterface(baseDevice, &IID_ID3D11Device1, cast[ptr pointer](&d3d11Device))
        assert(SUCCEEDED(hResult));
        discard baseDevice.lpVtbl.Release(baseDevice);
        hResult = baseDeviceContext.lpVtbl.QueryInterface(baseDeviceContext, &IID_ID3D11DeviceContext1, cast[ptr pointer](&d3d11DeviceContext));
        assert(SUCCEEDED(hResult));
        discard baseDeviceContext.lpVtbl.Release(baseDeviceContext)
        
    return (d3d11Device, d3d11DeviceContext)


#~ import direct/d3d11sdklayers
#ifdef DEBUG_BUILD
# Set up debug layer to break on D3D11 errors
#~ var d3dDebug:ptr ID3D11Debug
#~ d3d11Device.lpVtbl.QueryInterface(d3d11Device, IID_ID3D11Debug, &d3dDebug);
#~ if d3dDebug:
    #~ var d3dInfoQueue:ptr ID3D11InfoQueue
    #~ if SUCCEEDED(d3dDebug.lpVtbl.QueryInterface(d3dDebug, IID_ID3D11InfoQueue, &d3dInfoQueue)):
        #~ d3dInfoQueue.lpVtbl.SetBreakOnSeverity(d3dInfoQueue, D3D11_MESSAGE_SEVERITY_CORRUPTION, true);
        #~ d3dInfoQueue.lpVtbl.SetBreakOnSeverity(d3dInfoQueue, D3D11_MESSAGE_SEVERITY_ERROR, true);
        #~ d3dInfoQueue.lpVtbl.Release(d3dInfoQueue);
        
    #~ d3dDebug.lpVtbl.Release(d3dDebug)
#endif
    
# Create Swap Chain

proc CreateSwapChain*(d3d11Device:ptr ID3D11Device1, hwnd:HWND):ptr IDXGISwapChain1 =
    var d3d11SwapChain:ptr IDXGISwapChain1
    block:
        # Get DXGI Factory (needed to create Swap Chain)
        var dxgiFactory:ptr IDXGIFactory2
        block:
            var dxgiDevice:ptr IDXGIDevice1
            var hResult = d3d11Device.lpVtbl.QueryInterface(d3d11Device, &IID_IDXGIDevice1, cast[ptr pointer](&dxgiDevice));
            assert(SUCCEEDED(hResult));

            var dxgiAdapter:ptr IDXGIAdapter
            hResult = dxgiDevice.lpVtbl.GetAdapter(dxgiDevice, &dxgiAdapter);
            assert(SUCCEEDED(hResult));
            discard dxgiDevice.lpVtbl.Release(dxgiDevice);

            var adapterDesc:DXGI_ADAPTER_DESC
            hResult = dxgiAdapter.lpVtbl.GetDesc(dxgiAdapter, &adapterDesc);
            assert(SUCCEEDED(hResult));

            OutputDebugStringA("Graphics Device: ");
            OutputDebugStringW($adapterDesc.Description);

            hResult = dxgiAdapter.lpVtbl.GetParent(dxgiAdapter, &IID_IDXGIFactory2, cast[ptr pointer](&dxgiFactory));
            assert(SUCCEEDED(hResult));
            discard dxgiAdapter.lpVtbl.Release(dxgiAdapter);

        var d3d11SwapChainDesc:DXGI_SWAP_CHAIN_DESC1
        d3d11SwapChainDesc.Width = 0; # use window width
        d3d11SwapChainDesc.Height = 0; # use window height
        d3d11SwapChainDesc.Format = DXGI_FORMAT_B8G8R8A8_UNORM_SRGB;
        d3d11SwapChainDesc.SampleDesc.Count = 1;
        d3d11SwapChainDesc.SampleDesc.Quality = 0;
        d3d11SwapChainDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
        d3d11SwapChainDesc.BufferCount = 2;
        d3d11SwapChainDesc.Scaling = DXGI_SCALING_STRETCH;
        d3d11SwapChainDesc.SwapEffect = DXGI_SWAP_EFFECT_DISCARD;
        d3d11SwapChainDesc.AlphaMode = DXGI_ALPHA_MODE_UNSPECIFIED;
        d3d11SwapChainDesc.Flags = 0;

        var hResult = dxgiFactory.lpVtbl.CreateSwapChainForHwnd(dxgiFactory, d3d11Device, hwnd, &d3d11SwapChainDesc, nil, nil, &d3d11SwapChain);
        assert(SUCCEEDED(hResult));

        discard dxgiFactory.lpVtbl.Release(dxgiFactory)
    return d3d11SwapChain

# Create Framebuffer Render Target
proc CreateFrameBuffer(d3d11Device:ptr ID3D11Device1, d3d11SwapChain:ptr IDXGISwapChain1): ptr ID3D11RenderTargetView = 
    var d3d11FrameBufferView:ptr ID3D11RenderTargetView
    block:
        var d3d11FrameBuffer:ptr ID3D11Texture2D
        var hResult = d3d11SwapChain.lpVtbl.GetBuffer(d3d11SwapChain, 0, &IID_ID3D11Texture2D, cast[ptr pointer](&d3d11FrameBuffer));
        assert(SUCCEEDED(hResult));

        hResult = d3d11Device.lpVtbl.CreateRenderTargetView(d3d11Device, cast[ptr ID3D11Resource](d3d11FrameBuffer), nil, &d3d11FrameBufferView);
        assert(SUCCEEDED(hResult));
        discard d3d11FrameBuffer.lpVtbl.Release(d3d11FrameBuffer);

# Create Vertex Shader
proc CreateVertexShader(d3d11Device:ptr ID3D11Device1): (ptr ID3DBlob, ptr ID3D11VertexShader) = 
    var vsBlob:ptr ID3DBlob
    var vertexShader:ptr ID3D11VertexShader
    block:
        var shaderCompileErrorsBlob:ptr ID3DBlob
        var hResult = D3DCompileFromFile(L"shaders.hlsl", nil, nil, "vs_main", "vs_5_0", 0, 0, &vsBlob, &shaderCompileErrorsBlob);
        if FAILED(hResult):
            var errorString:ptr CHAR
            if hResult == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND):
                errorString = "Could not compile shader; file not found";
            elif shaderCompileErrorsBlob!=nil:
                var str = shaderCompileErrorsBlob.lpVtbl.GetBufferPointer(shaderCompileErrorsBlob)
                errorString = cast[ptr CHAR](str)
                discard shaderCompileErrorsBlob.lpVtbl.Release(shaderCompileErrorsBlob)
            MessageBoxA(0, errorString, "Shader Compiler Error", MB_ICONERROR or MB_OK);
            return

        hResult = d3d11Device.lpVtbl.CreateVertexShader(d3d11Device, vsBlob.lpVtbl.GetBufferPointer(vsBlob), vsBlob.lpVtbl.GetBufferSize(vsBlob), nil, &vertexShader);
        assert(SUCCEEDED(hResult));
    return (vsBlob, vertexShader)

# Create Pixel Shader
proc CreatePixelShader(d3d11Device:ptr ID3D11Device1): ptr ID3D11PixelShader = 
    var pixelShader:ptr ID3D11PixelShader
    block:
        var psBlob:ptr ID3DBlob
        var shaderCompileErrorsBlob:ptr ID3DBlob
        var hResult = D3DCompileFromFile(L"shaders.hlsl", nil, nil, "ps_main", "ps_5_0", 0, 0, &psBlob, &shaderCompileErrorsBlob);
        if FAILED(hResult):
            var errorString:ptr CHAR
            if hResult == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND):
                errorString = "Could not compile shader; file not found";
            elif shaderCompileErrorsBlob!=nil:
                var str = shaderCompileErrorsBlob.lpVtbl.GetBufferPointer(shaderCompileErrorsBlob)
                errorString = cast[ptr CHAR](str)
                discard shaderCompileErrorsBlob.lpVtbl.Release(shaderCompileErrorsBlob)
            MessageBoxA(0, errorString, "Shader Compiler Error", MB_ICONERROR or MB_OK)
            return

        hResult = d3d11Device.lpVtbl.CreatePixelShader(d3d11Device, psBlob.lpVtbl.GetBufferPointer(psBlob), psBlob.lpVtbl.GetBufferSize(psBlob), nil, &pixelShader);
        assert(SUCCEEDED(hResult));
        discard psBlob.lpVtbl.Release(psBlob);
    return pixelShader

# Create Input Layout
proc CreateInputLayout(d3d11Device:ptr ID3D11Device1, vsBlob:ptr ID3DBlob):ptr ID3D11InputLayout =
    var inputLayout:ptr ID3D11InputLayout
    block:
        var inputElementDesc = [
            D3D11_INPUT_ELEMENT_DESC(SemanticName:"POS", SemanticIndex:0, Format:DXGI_FORMAT_R32G32_FLOAT, InputSlot:0, AlignedByteOffset:0, InputSlotClass:D3D11_INPUT_PER_VERTEX_DATA, InstanceDataStepRate:0),
            D3D11_INPUT_ELEMENT_DESC(SemanticName:"TEX", SemanticIndex:0, Format:DXGI_FORMAT_R32G32_FLOAT, InputSlot:0, AlignedByteOffset:D3D11_APPEND_ALIGNED_ELEMENT, InputSlotClass:D3D11_INPUT_PER_VERTEX_DATA, InstanceDataStepRate:0)
        ]

        var hResult = d3d11Device.lpVtbl.CreateInputLayout(d3d11Device, addr inputElementDesc[0], UINT len(inputElementDesc), vsBlob.lpVtbl.GetBufferPointer(vsBlob), vsBlob.lpVtbl.GetBufferSize(vsBlob), &inputLayout);
        assert(SUCCEEDED(hResult));
        discard vsBlob.lpVtbl.Release(vsBlob)
    return inputLayout

# Create Vertex Buffer
proc CreateVertexBuffer(d3d11Device:ptr ID3D11Device1):ptr ID3D11Buffer =
    var vertexBuffer:ptr ID3D11Buffer
    var numVerts,stride,offset:UINT
    block:
        var vertexData = [ # x, y, u, v
            -0.5f,  0.5f, 0f, 0f,
            0.5f, -0.5f, 1f, 1f,
            -0.5f, -0.5f, 0f, 1f,
            -0.5f,  0.5f, 0f, 0f,
            0.5f,  0.5f, 1f, 0f,
            0.5f, -0.5f, 1f, 1f
        ]
        stride = 4 * sizeof(float);
        numVerts = UINT sizeof(vertexData) div stride;
        offset = 0;

        var vertexBufferDesc:D3D11_BUFFER_DESC
        vertexBufferDesc.ByteWidth = UINT sizeof(vertexData);
        vertexBufferDesc.Usage     = D3D11_USAGE_IMMUTABLE;
        vertexBufferDesc.BindFlags = UINT D3D11_BIND_VERTEX_BUFFER;

        var vertexSubresourceData = D3D11_SUBRESOURCE_DATA(pSysMem:addr vertexData[0])

        var hResult = d3d11Device.lpVtbl.CreateBuffer(d3d11Device, &vertexBufferDesc, &vertexSubresourceData, &vertexBuffer);
        assert(SUCCEEDED(hResult))
    return vertexBuffer

# Create Sampler State
proc CreateSamplerState(d3d11Device:ptr ID3D11Device1):ptr ID3D11SamplerState =
    var samplerDesc: D3D11_SAMPLER_DESC
    samplerDesc.Filter         = D3D11_FILTER_MIN_MAG_MIP_POINT;
    samplerDesc.AddressU       = D3D11_TEXTURE_ADDRESS_BORDER;
    samplerDesc.AddressV       = D3D11_TEXTURE_ADDRESS_BORDER;
    samplerDesc.AddressW       = D3D11_TEXTURE_ADDRESS_BORDER;
    samplerDesc.BorderColor[0] = 1.0f;
    samplerDesc.BorderColor[1] = 1.0f;
    samplerDesc.BorderColor[2] = 1.0f;
    samplerDesc.BorderColor[3] = 1.0f;
    samplerDesc.ComparisonFunc = D3D11_COMPARISON_NEVER;

    var samplerState:ptr ID3D11SamplerState
    var hResult = d3d11Device.lpVtbl.CreateSamplerState(d3d11Device, &samplerDesc, &samplerState);
    assert(SUCCEEDED(hResult))
    return samplerState

proc CreateTextureView(d3d11Device:ptr ID3D11Device1):ptr ID3D11ShaderResourceView =
    # Load Image
    var texWidth, texHeight, texNumChannels:int32
    var texForceNumChannels = 4'i32
    var testTextureBytes = stbi_load("testTexture.png", &texWidth, &texHeight, &texNumChannels, texForceNumChannels); #char pointer
    assert(testTextureBytes);
    var texBytesPerRow = 4 * texWidth;

    # Create Texture
    var textureDesc: D3D11_TEXTURE2D_DESC
    textureDesc.Width              = texWidth;
    textureDesc.Height             = texHeight;
    textureDesc.MipLevels          = 1;
    textureDesc.ArraySize          = 1;
    textureDesc.Format             = DXGI_FORMAT_R8G8B8A8_UNORM_SRGB;
    textureDesc.SampleDesc.Count   = 1;
    textureDesc.Usage              = D3D11_USAGE_IMMUTABLE;
    textureDesc.BindFlags          = D3D11_BIND_SHADER_RESOURCE;

    var textureSubresourceData:D3D11_SUBRESOURCE_DATA
    textureSubresourceData.pSysMem = testTextureBytes;
    textureSubresourceData.SysMemPitch = texBytesPerRow;

    var texture:ptr ID3D11Texture2D
    d3d11Device.lpVtbl.CreateTexture2D(d3d11Device, &textureDesc, &textureSubresourceData, &texture);

    var textureView:ptr ID3D11ShaderResourceView
    d3d11Device.lpVtbl.CreateShaderResourceView(d3d11Device, texture, nil, &textureView);

    free(testTextureBytes);
    return textureView


var d3d11Device*:ptr ID3D11Device1
var d3d11DeviceContext*:ptr ID3D11DeviceContext1
#~ var dxgiDevice*: ptr IDXGIDevice1
#~ var d2context*: ptr ID2D1DeviceContext
#~ var ct*: ptr ID2D1DeviceContext
var swapChain*: ptr IDXGISwapChain1
#~ var backbuffer*: ptr ID2D1Bitmap1
#~ var offscreenBuffer*: ptr ID2D1Bitmap1
init = proc(hwnd:HWND)=
    echo "init" #should be created after creating window but before showing
    (d3d11Device, d3d11DeviceContext) = CreateD3D11Device()
    swapChain = CreateSwapChain(d3d11Device, hwnd)
    #~ d2context = CreateD2DContext(dxgiDevice)
    #~ backbuffer = CreateBackBufferBitmap(d2context, swapChain)
    #~ offscreenBuffer = CreateTargetBitmap(d2context, backbuffer.getPixelSize())
    #~ d2context.setAntialiasMode(D2D1_ANTIALIAS_MODE_ALIASED)
    #~ d2context.setAntialiasMode(D2D1_ANTIALIAS_MODE_PER_PRIMITIVE)
    #~ ct = d2context #short alias
    

draw = proc(hwnd:HWND) = 
    
    var backgroundColor = [ 0.1f, 0.2f, 0.6f, 1.0f]
    d3d11DeviceContext.lpVtbl.ClearRenderTargetView(d3d11DeviceContext, d3d11FrameBufferView, backgroundColor);

    var winRect:RECT
    GetClientRect(hwnd, &winRect);
    var viewport = D3D11_VIEWPORT(0.0f, 0.0f, FLOAT(winRect.right - winRect.left), FLOAT(winRect.bottom - winRect.top), 0.0f, 1.0f)
    d3d11DeviceContext.lpVtbl.RSSetViewports(d3d11DeviceContext, 1, &viewport);

    d3d11DeviceContext.lpVtbl.OMSetRenderTargets(d3d11DeviceContext, 1, &d3d11FrameBufferView, nil);

    d3d11DeviceContext.lpVtbl.IASetPrimitiveTopology(d3d11DeviceContext, D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST);
    d3d11DeviceContext.lpVtbl.IASetInputLayout(d3d11DeviceContext, inputLayout);

    d3d11DeviceContext.lpVtbl.VSSetShader(d3d11DeviceContext, vertexShader, nil, 0);
    d3d11DeviceContext.lpVtbl.PSSetShader(d3d11DeviceContext, pixelShader, nil, 0);

    d3d11DeviceContext.lpVtbl.PSSetShaderResources(d3d11DeviceContext, 0, 1, &textureView);
    d3d11DeviceContext.lpVtbl.PSSetSamplers(d3d11DeviceContext, 0, 1, &samplerState);

    d3d11DeviceContext.lpVtbl.IASetVertexBuffers(d3d11DeviceContext, 0, 1, &vertexBuffer, &stride, &offset);

    d3d11DeviceContext.lpVtbl.Draw(d3d11DeviceContext, numVerts, 0);

    d3d11SwapChain.lpVtbl.Present(d3d11DeviceContext, 1, 0);

start_window()
