.class public final Landroidx/compose/ui/node/NodeChain$Differ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;


# instance fields
.field public after:Ljava/lang/Object;

.field public before:Ljava/lang/Object;

.field public node:Ljava/lang/Object;

.field public offset:I

.field public shouldAttachOnInsert:Z

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;Landroidx/core/view/MenuHostHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;-><init>(Landroid/os/HandlerThread;)V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 9
    iput p3, p0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 10
    iput-object p4, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 11
    iput-object p5, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    .line 12
    iput-boolean p6, p0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    return-void
.end method

.method public static access$100(Landroidx/compose/ui/node/NodeChain$Differ;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v3, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    const-string v0, "configureCodec"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->start()V

    const-string/jumbo p1, "startCodec"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/core/view/MenuHostHelper;

    if-eqz p1, :cond_2

    iget-object p2, p1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p2, Landroid/media/LoudnessCodecController;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Landroid/media/LoudnessCodecController;->addMediaCodec(Landroid/media/MediaCodec;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    :cond_2
    :goto_1
    iput v4, p0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    return-void
.end method

.method public static createThreadLabel(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public areItemsTheSame(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    iget v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    add-int/2addr p1, v1

    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    add-int/2addr v1, p2

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object p0, p0, v1

    check-cast p0, Landroidx/compose/ui/Modifier$Element;

    sget-object p2, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    if-ne p1, p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public dequeueInputBufferIndex()I
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->maybeThrowException()V

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecCryptoException:Landroid/media/MediaCodec$CryptoException;

    if-nez v1, :cond_6

    iget-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const/4 v4, -0x1

    if-eqz v1, :cond_2

    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/collection/CircularIntArray;

    iget v1, p0, Landroidx/collection/CircularIntArray;->head:I

    iget v5, p0, Landroidx/collection/CircularIntArray;->tail:I

    if-ne v1, v5, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    if-eq v1, v5, :cond_5

    iget-object v2, p0, Landroidx/collection/CircularIntArray;->elements:[I

    aget v4, v2, v1

    add-int/2addr v1, v3

    iget v2, p0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/CircularIntArray;->head:I

    :goto_2
    monitor-exit v0

    return v4

    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_6
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecCryptoException:Landroid/media/MediaCodec$CryptoException;

    throw v1

    :cond_7
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    throw v1

    :cond_8
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    throw v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->maybeThrowException()V

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecCryptoException:Landroid/media/MediaCodec$CryptoException;

    if-nez v0, :cond_8

    iget-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const/4 v4, -0x1

    if-eqz v0, :cond_2

    monitor-exit v1

    return v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/collection/CircularIntArray;

    iget v5, v0, Landroidx/collection/CircularIntArray;->head:I

    iget v6, v0, Landroidx/collection/CircularIntArray;->tail:I

    if-ne v5, v6, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    monitor-exit v1

    return v4

    :cond_4
    if-eq v5, v6, :cond_7

    iget-object v2, v0, Landroidx/collection/CircularIntArray;->elements:[I

    aget v2, v2, v5

    add-int/2addr v5, v3

    iget v3, v0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    and-int/2addr v3, v5

    iput v3, v0, Landroidx/collection/CircularIntArray;->head:I

    if-ltz v2, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCodec$BufferInfo;

    iget v4, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_2

    :cond_5
    const/4 p1, -0x2

    if-ne v2, p1, :cond_6

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    :cond_6
    :goto_2
    monitor-exit v1

    return v2

    :cond_7
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_8
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecCryptoException:Landroid/media/MediaCodec$CryptoException;

    throw v0

    :cond_9
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    throw v0

    :cond_a
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    throw v0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public detachOutputSurface()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->detachOutputSurface()V

    return-void
.end method

.method public flush()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->flush()V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance v3, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queueInputBuffer(IIIJ)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->queueInputBuffer(IIIJ)V

    return-void
.end method

.method public queueSecureInputBuffer(ILandroidx/media3/decoder/CryptoInfo;JI)V
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->queueSecureInputBuffer(ILandroidx/media3/decoder/CryptoInfo;JI)V

    return-void
.end method

.method public registerOnBufferAvailableListener(Lcom/google/android/gms/tasks/zza;)Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->onBufferAvailableListener:Lcom/google/android/gms/tasks/zza;

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 7

    const/16 v0, 0x21

    const/16 v1, 0x1e

    const/16 v2, 0x23

    const/4 v3, 0x1

    :try_start_0
    iget v4, p0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->shutdown()V

    iget-object v4, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v5, v4, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v3, v4, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    iget-object v6, v4, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z

    invoke-virtual {v4}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v4, p0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    if-nez v4, :cond_4

    :try_start_3
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-lt v4, v2, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/MenuHostHelper;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroidx/core/view/MenuHostHelper;->removeMediaCodec(Landroid/media/MediaCodec;)V

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    return-void

    :goto_2
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/core/view/MenuHostHelper;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroidx/core/view/MenuHostHelper;->removeMediaCodec(Landroid/media/MediaCodec;)V

    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    throw v0

    :cond_4
    return-void

    :goto_3
    iget-boolean v5, p0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    if-nez v5, :cond_8

    :try_start_4
    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v5, v1, :cond_5

    if-ge v5, v0, :cond_5

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    if-lt v5, v2, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/MenuHostHelper;

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroidx/core/view/MenuHostHelper;->removeMediaCodec(Landroid/media/MediaCodec;)V

    :cond_6
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    goto :goto_6

    :goto_5
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_7

    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/core/view/MenuHostHelper;

    if-eqz v1, :cond_7

    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroidx/core/view/MenuHostHelper;->removeMediaCodec(Landroid/media/MediaCodec;)V

    :cond_7
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    throw v0

    :cond_8
    :goto_6
    throw v4
.end method

.method public releaseOutputBuffer(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public releaseOutputBuffer(IJ)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public setOnFrameRenderedListener(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;I)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method
