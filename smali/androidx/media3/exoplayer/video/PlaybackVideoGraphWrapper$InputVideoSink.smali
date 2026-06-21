.class public final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public inputFormat:Landroidx/media3/common/Format;

.field public lastBufferPresentationTimeUs:J

.field public final synthetic this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

.field public videoEffects:Lcom/google/common/collect/RegularImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {p2}, Landroidx/media3/common/util/Util;->isFrameDropAllowedOnSurfaceInput(Landroid/content/Context;)Z

    sget-object p1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoEffects:Lcom/google/common/collect/RegularImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->lastBufferPresentationTimeUs:J

    return-void
.end method


# virtual methods
.method public final flush(Z)V
    .locals 10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->lastBufferPresentationTimeUs:J

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    iget v4, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_0

    iget-object p1, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object v4, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput-wide v6, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v8, -0x1

    iput-wide v8, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iput-wide v8, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    invoke-virtual {p1, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    :cond_0
    iget-object p1, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget-object v4, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Landroidx/media3/common/util/TimedValueQueue;

    iget-object v8, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/collection/CircularArray;

    const/4 v9, 0x0

    iput v9, v8, Landroidx/collection/CircularArray;->head:I

    iput v9, v8, Landroidx/collection/CircularArray;->tail:I

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    iget-object p1, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result v8

    if-lez v8, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    invoke-static {v8}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result v8

    if-le v8, v5, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {p1, v6, v7, v8}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    :cond_3
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result p1

    if-lez p1, :cond_4

    move v9, v5

    :cond_4
    invoke-static {v9}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    :goto_2
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result p1

    if-le p1, v5, :cond_5

    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/media3/common/VideoSize;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    :cond_6
    iget-object p1, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    :goto_3
    invoke-virtual {v3}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result p1

    if-le p1, v5, :cond_7

    invoke-virtual {v3}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result p1

    if-ne p1, v5, :cond_8

    invoke-virtual {v3}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->bufferTimestampAdjustmentUs:J

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->setStreamTimestampInfo(JJ)V

    :cond_8
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->lastOutputBufferPresentationTimeUs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method public final initialize(Landroidx/media3/common/Format;)Z
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    :cond_2
    iget v0, v0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_3

    new-instance v0, Landroidx/media3/common/ColorInfo;

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->previewingVideoGraphFactory:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;->create()V
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Exception;Landroidx/media3/common/Format;)V

    throw v0
.end method

.method public final setChangeFrameRateStrategy(I)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    :goto_0
    return-void
.end method

.method public final setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/Size;

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    iget p0, p2, Landroidx/media3/common/util/Size;->width:I

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setPlaybackSpeed(F)V

    return-void
.end method

.method public final setStreamTimestampInfo(JJ)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v1, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->lastBufferPresentationTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v4

    const-wide/16 v4, 0x0

    if-nez p0, :cond_0

    move-wide v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, v2, v3, p0}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    iput-wide p3, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->bufferTimestampAdjustmentUs:J

    iget-object p0, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-virtual {p0, v4, v5, p3, p4}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->setStreamTimestampInfo(JJ)V

    return-void
.end method

.method public final setVideoEffects(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoEffects:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v1, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->previewingVideoGraphFactory:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    iget-object p1, v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->compositionEffects:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)V

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoEffects:Lcom/google/common/collect/RegularImmutableList;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->inputFormat:Landroidx/media3/common/Format;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object p0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    :cond_3
    iput-object p0, p1, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    const/4 p0, 0x0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    throw p0
.end method

.method public final setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method

.method public final signalEndOfCurrentInputStream()V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->lastBufferPresentationTimeUs:J

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->lastOutputBufferPresentationTimeUs:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    :cond_0
    return-void
.end method
