.class public final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final synthetic this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p0}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setOnFrameRenderedListener(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final handleFrameRendered(J)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-ne p0, v1, :cond_6

    iget-object p0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long p0, p1, v1

    const/4 v1, 0x1

    if-nez p0, :cond_1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    return-void

    :cond_1
    :try_start_0
    iget-object p0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    iget-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    sget-object v3, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {v2, v3}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v2, v3}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/CameraKpi;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_2
    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v3, v2, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v3, v1

    iput v3, v2, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    iget-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget v3, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iput v4, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    iget-object v4, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    if-eqz v3, :cond_5

    iget-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v6, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;J)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput-boolean v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    :cond_5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer$1(J)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iput-object p0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_6
    :goto_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    const/4 p0, 0x1

    return p0
.end method
