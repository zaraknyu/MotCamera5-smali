.class public Landroidx/media3/exoplayer/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final codecAdapterFactory:Lcom/google/android/play/core/splitinstall/zzac;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    new-instance v0, Lcom/google/android/play/core/splitinstall/zzac;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/zzac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/play/core/splitinstall/zzac;

    return-void
.end method


# virtual methods
.method public buildAudioRenderers(Landroid/content/Context;Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Ljava/util/ArrayList;)V
    .locals 6

    new-instance v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/play/core/splitinstall/zzac;

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)[Landroidx/media3/exoplayer/Renderer;
    .locals 10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Lcom/google/android/play/core/splitinstall/zzac;

    iput-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    const-wide/16 v2, 0x1388

    iput-wide v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->allowedJoiningTimeMs:J

    iput-object p1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    iput-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    const/16 p2, 0x32

    iput p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->maxDroppedFramesToNotify:I

    iget-boolean p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->buildCalled:Z

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-static {p2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    if-eqz p2, :cond_2

    :cond_1
    move p2, v2

    goto :goto_0

    :cond_2
    move p2, v6

    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->buildCalled:Z

    new-instance p2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {p2, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroidx/profileinstaller/DeviceProfileWriter;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v1, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    sget-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->DEFAULT$1:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    iput-object v0, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    iput-object v0, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    iget-boolean v0, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v2, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    iget-object v0, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/MenuHostHelper;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    new-array v2, v6, [Landroidx/media3/common/audio/AudioProcessor;

    new-instance v3, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    invoke-direct {v3}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;-><init>()V

    new-instance v4, Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->speed:F

    iput v7, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->pitch:F

    sget-object v7, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v7, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v7, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v7, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v7, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v7, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v7, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v8

    iput-object v8, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    iput-object v7, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v7, -0x1

    iput v7, v4, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    array-length v7, v2

    add-int/lit8 v7, v7, 0x2

    new-array v7, v7, [Landroidx/media3/common/audio/AudioProcessor;

    iput-object v7, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    array-length v8, v2

    aput-object v3, v7, v8

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    aput-object v4, v7, v2

    iput-object v0, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    :cond_3
    iget-object v0, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraKpi;

    if-nez v0, :cond_4

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, v1}, Lcom/motorola/camera/CameraKpi;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    :cond_4
    new-instance v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-direct {v2, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance p1, Landroidx/media3/exoplayer/text/TextRenderer;

    invoke-direct {p1, p4, p0}, Landroidx/media3/exoplayer/text/TextRenderer;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroid/os/Looper;)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance p1, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    invoke-direct {p1, p5, p0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroid/os/Looper;)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    invoke-direct {p1, p5, p0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroid/os/Looper;)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/media3/exoplayer/image/ImageRenderer;

    sget-object p1, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;->DEFAULT:Landroidx/room/ObservedTableVersions;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/image/ImageRenderer;-><init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)V

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1, v3, v5}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    new-array p0, v6, [Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/media3/exoplayer/Renderer;

    return-object p0
.end method
