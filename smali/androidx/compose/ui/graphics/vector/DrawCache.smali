.class public final Landroidx/compose/ui/graphics/vector/DrawCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# instance fields
.field public final cacheScope:Ljava/lang/Object;

.field public cachedCanvas:Ljava/lang/Object;

.field public config:I

.field public mCachedImage:Ljava/lang/Object;

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    .line 5
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Landroid/media/AudioRecord;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    .line 9
    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 10
    iput-object p2, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "exception in codecLooper"

    const-string v1, "MediaCodecEngine"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v1, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v1, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    const-string p1, "MediaCodecEngine"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 11

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "MediaCodecEngine"

    if-nez p1, :cond_1

    const-string p0, "Expecting valid buffer to fill"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget v4, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    invoke-virtual {v1, p1, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v4

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v6, 0x0

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v4, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v4, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_3

    new-instance v4, Landroid/media/AudioTimestamp;

    invoke-direct {v4}, Landroid/media/AudioTimestamp;-><init>()V

    invoke-virtual {v1, v4, v6}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Unable to get timestamp - error code:"

    invoke-static {p0, v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_2
    iget-wide v1, v4, Landroid/media/AudioTimestamp;->framePosition:J

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iget-object v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioSampleRate:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v6, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v1}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object p0, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    iget-wide v8, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    div-long v9, v8, v3

    :goto_0
    sub-long/2addr v6, v9

    iput-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-object p1, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iput-object v5, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v1
.end method

.method public handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 5

    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v3, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v3, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v3, :cond_1

    iget p0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    invoke-virtual {v3, p0, v1, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    if-eqz p0, :cond_3

    iget p1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->index:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_3
    return-void
.end method
