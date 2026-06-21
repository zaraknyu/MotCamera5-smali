.class public final Landroidx/media3/exoplayer/video/VideoFrameRenderControl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final frameRenderer:Lcom/tinder/StateMachine;

.field public latestInputPresentationTimeUs:J

.field public outputStreamStartPositionUs:J

.field public outputVideoSize:Landroidx/media3/common/VideoSize;

.field public final presentationTimestampsUs:Landroidx/collection/CircularArray;

.field public final streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

.field public final videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final videoFrameReleaseInfo:Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

.field public final videoSizes:Landroidx/media3/common/util/TimedValueQueue;


# direct methods
.method public constructor <init>(Lcom/tinder/StateMachine;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Lcom/tinder/StateMachine;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    new-instance p1, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    invoke-direct {p1}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseInfo:Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    new-instance p1, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Landroidx/media3/common/util/TimedValueQueue;

    new-instance p1, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    new-instance p1, Landroidx/collection/CircularArray;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x10

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p2

    shl-int/2addr p2, v1

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroidx/collection/CircularArray;->head:I

    iput v0, p1, Landroidx/collection/CircularArray;->tail:I

    new-array v0, p2, [J

    iput-object v0, p1, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    sub-int/2addr p2, v1

    iput p2, p1, Landroidx/collection/CircularArray;->capacityBitmask:I

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/collection/CircularArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    sget-object p1, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Landroidx/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final render(JJ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Lcom/tinder/StateMachine;

    iget-object v2, v1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/collection/CircularArray;

    iget v4, v3, Landroidx/collection/CircularArray;->tail:I

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_8

    iget-object v4, v3, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v4, [J

    iget v5, v3, Landroidx/collection/CircularArray;->head:I

    aget-wide v7, v4, v5

    iget-object v4, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v4, v7, v8}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const/4 v5, 0x2

    iget-object v6, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    invoke-virtual {v6, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    :cond_2
    iget-wide v13, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    const/16 v16, 0x0

    iget-object v4, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseInfo:Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    move-object v9, v6

    iget-object v6, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    const/4 v15, 0x0

    move-wide/from16 v11, p3

    move-object/from16 v17, v4

    move-object v4, v9

    move-wide/from16 v9, p1

    invoke-virtual/range {v6 .. v17}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->getFrameReleaseAction(JJJJZZLandroidx/media3/extractor/mp4/BoxParser$BtrtData;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v6, :cond_5

    const/4 v9, 0x1

    if-eq v6, v9, :cond_5

    if-eq v6, v5, :cond_4

    if-eq v6, v8, :cond_4

    const/4 v3, 0x4

    if-eq v6, v3, :cond_0

    const/4 v0, 0x5

    if-ne v6, v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v3}, Landroidx/collection/CircularArray;->remove()J

    iget-object v0, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0;-><init>(ILcom/tinder/StateMachine;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    throw v7

    :cond_5
    invoke-virtual {v3}, Landroidx/collection/CircularArray;->remove()J

    move-result-wide v9

    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v3, v9, v10}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/VideoSize;

    if-eqz v3, :cond_6

    sget-object v5, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {v3, v5}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v3, v5}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iput-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Landroidx/media3/common/VideoSize;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget v5, v3, Landroidx/media3/common/VideoSize;->width:I

    iput v5, v0, Landroidx/media3/common/Format$Builder;->width:I

    iget v5, v3, Landroidx/media3/common/VideoSize;->height:I

    iput v5, v0, Landroidx/media3/common/Format$Builder;->height:I

    const-string/jumbo v5, "video/raw"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v5, v1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    iget-object v0, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v6, 0x13

    invoke-direct {v5, v6, v1, v3}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    iget v0, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    iput v8, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    iget-object v0, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    iget-object v0, v1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    if-nez v0, :cond_7

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object v13, v1

    goto :goto_1

    :cond_7
    move-object v13, v0

    :goto_1
    iget-object v8, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iget-object v0, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    iget-object v0, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    throw v7

    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
