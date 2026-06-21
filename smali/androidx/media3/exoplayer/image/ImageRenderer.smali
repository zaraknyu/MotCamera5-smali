.class public final Landroidx/media3/exoplayer/image/ImageRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"


# instance fields
.field public codecNeedsInitialization:Z

.field public currentTileIndex:I

.field public decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

.field public final decoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

.field public decoderReinitializationState:I

.field public firstFrameState:I

.field public final flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public imageOutput:Landroidx/media3/exoplayer/image/ImageOutput;

.field public inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public inputFormat:Landroidx/media3/common/Format;

.field public inputStreamEnded:Z

.field public largestQueuedPresentationTimeUs:J

.field public lastProcessedOutputBufferTimeUs:J

.field public nextTileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

.field public outputBitmap:Landroid/graphics/Bitmap;

.field public outputStreamEnded:Z

.field public outputStreamInfo:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

.field public final pendingOutputStreamChanges:Ljava/util/ArrayDeque;

.field public readyToOutputTiles:Z

.field public tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)V
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    sget-object p1, Landroidx/media3/exoplayer/image/ImageOutput;->NO_OP:Landroidx/media3/exoplayer/image/ImageOutput$1;

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->imageOutput:Landroidx/media3/exoplayer/image/ImageOutput;

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    sget-object p1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->lastProcessedOutputBufferTimeUs:J

    iput v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    return-void
.end method


# virtual methods
.method public final drainOutput(J)Z
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-eq v2, v3, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->dequeueOutputBuffer()Landroidx/media3/decoder/DecoderOutputBuffer;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->releaseDecoderResources()V

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->maybeInitCodec()V

    return v1

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->release()V

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    iput-boolean v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    return v1

    :cond_4
    iget-object v6, v0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->bitmap:Landroid/graphics/Bitmap;

    const-string v7, "Non-EOS buffer came back from the decoder without bitmap."

    invoke-static {v6, v7}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->bitmap:Landroid/graphics/Bitmap;

    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->release()V

    :cond_5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget v6, v0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v0, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    if-ne v6, v5, :cond_6

    if-eq v0, v5, :cond_7

    :cond_6
    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    if-eq v0, v7, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v1

    :goto_0
    iget-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget-object v7, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget v7, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    iget-object v8, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-static {v8}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v8, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v9}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget v9, v9, Landroidx/media3/common/Format;->tileCountHorizontal:I

    div-int/2addr v8, v9

    iget-object v9, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v10}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget v10, v10, Landroidx/media3/common/Format;->tileCountVertical:I

    div-int/2addr v9, v10

    iget-object v10, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget v10, v10, Landroidx/media3/common/Format;->tileCountHorizontal:I

    rem-int v11, v7, v10

    mul-int/2addr v11, v8

    div-int/2addr v7, v10

    mul-int/2addr v7, v9

    iget-object v10, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-static {v10, v11, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    :cond_9
    iget-object v7, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    :goto_1
    iput-object v7, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Ljava/lang/Object;

    :goto_2
    iget-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileBitmap:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v7, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget-wide v7, v7, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    sub-long p1, v7, p1

    iget v9, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-ne v9, v3, :cond_a

    move v3, v5

    goto :goto_3

    :cond_a
    move v3, v1

    :goto_3
    iget v9, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    if-eqz v9, :cond_d

    if-eq v9, v5, :cond_c

    if-ne v9, v4, :cond_b

    move v3, v1

    goto :goto_4

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_c
    move v3, v5

    :cond_d
    :goto_4
    if-nez v3, :cond_f

    const-wide/16 v9, 0x7530

    cmp-long p1, p1, v9

    if-gez p1, :cond_e

    goto :goto_5

    :cond_e
    move p1, v1

    goto :goto_6

    :cond_f
    :goto_5
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->imageOutput:Landroidx/media3/exoplayer/image/ImageOutput;

    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide v9, p2, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->streamOffsetUs:J

    sub-long/2addr v7, v9

    invoke-interface {p1, v7, v8, v6}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    move p1, v5

    :goto_6
    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-wide p1, p1, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->lastProcessedOutputBufferTimeUs:J

    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide v6, v1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    cmp-long v1, p1, v6

    if-ltz v1, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iput-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    goto :goto_7

    :cond_11
    iput v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    const/4 p1, 0x0

    if-eqz v0, :cond_12

    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-static {p2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget p2, p2, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget v0, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget v1, v1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v5

    if-ne p2, v0, :cond_13

    :cond_12
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    :cond_13
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    return v5

    :cond_14
    :goto_8
    return v1
.end method

.method public final feedInputBuffer(J)Z
    .locals 12

    iget-boolean v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v0}, Landroidx/room/concurrent/FileLock;->clear()V

    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    if-eqz v2, :cond_15

    iget v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    iget-boolean v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputStreamEnded:Z

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v2, :cond_2

    goto/16 :goto_9

    :cond_2
    iget v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v2, v3, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iput v6, p1, Landroidx/media3/decoder/Buffer;->flags:I

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->queueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iput-object v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iput v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    return v1

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v4, -0x5

    const/4 v7, 0x1

    if-eq v2, v4, :cond_14

    const/4 v0, -0x4

    if-eq v2, v0, :cond_5

    const/4 p0, -0x3

    if-ne v2, p0, :cond_4

    goto/16 :goto_9

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v7

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    if-eqz v0, :cond_9

    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->queueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iput v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->currentTileIndex:I

    :cond_9
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v7, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    goto/16 :goto_7

    :cond_a
    new-instance v3, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->currentTileIndex:I

    iget-wide v8, v2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v4, v3, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->tileIndex:I

    iput-wide v8, v3, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    iput-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->currentTileIndex:I

    iget-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    if-nez v2, :cond_11

    const-wide/16 v2, 0x7530

    sub-long v10, v8, v2

    cmp-long v10, v10, p1

    if-gtz v10, :cond_b

    add-long/2addr v2, v8

    cmp-long v2, p1, v2

    if-gtz v2, :cond_b

    move v2, v7

    goto :goto_1

    :cond_b
    move v2, v1

    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v3, :cond_c

    iget-wide v10, v3, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->presentationTimeUs:J

    cmp-long v3, v10, p1

    if-gtz v3, :cond_c

    cmp-long p1, p1, v8

    if-gez p1, :cond_c

    move p1, v7

    goto :goto_2

    :cond_c
    move p1, v1

    :goto_2
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {p2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget p2, p2, Landroidx/media3/common/Format;->tileCountHorizontal:I

    const/4 v3, -0x1

    if-eq p2, v3, :cond_e

    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget v8, p2, Landroidx/media3/common/Format;->tileCountVertical:I

    if-eq v8, v3, :cond_e

    iget p2, p2, Landroidx/media3/common/Format;->tileCountHorizontal:I

    mul-int/2addr v8, p2

    sub-int/2addr v8, v7

    if-ne v4, v8, :cond_d

    goto :goto_3

    :cond_d
    move p2, v1

    goto :goto_4

    :cond_e
    :goto_3
    move p2, v7

    :goto_4
    if-nez v2, :cond_10

    if-nez p1, :cond_10

    if-eqz p2, :cond_f

    goto :goto_5

    :cond_f
    move p2, v1

    goto :goto_6

    :cond_10
    :goto_5
    move p2, v7

    :goto_6
    iput-boolean p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    if-eqz p1, :cond_11

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    :goto_7
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iput-boolean v7, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputStreamEnded:Z

    iput-object v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    return v1

    :cond_12
    iget-wide p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-wide v1, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    if-eqz v0, :cond_13

    iput-object v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    goto :goto_8

    :cond_13
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    :goto_8
    iget-boolean p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    xor-int/2addr p0, v7

    return p0

    :cond_14
    iget-object p1, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/Format;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    iput-boolean v7, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->codecNeedsInitialization:Z

    iput v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    return v7

    :cond_15
    :goto_9
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "ImageRenderer"

    return-object p0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    if-eqz p1, :cond_1

    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    sget-object p2, Landroidx/media3/exoplayer/image/ImageOutput;->NO_OP:Landroidx/media3/exoplayer/image/ImageOutput$1;

    :cond_2
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->imageOutput:Landroidx/media3/exoplayer/image/ImageOutput;

    return-void
.end method

.method public final isEnded()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public final isReady()Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final maybeInitCodec()V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->codecNeedsInitialization:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    check-cast v1, Landroidx/room/ObservedTableVersions;

    invoke-virtual {v1, v0}, Landroidx/room/ObservedTableVersions;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result v2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/image/ImageDecoderException;

    const-string v1, "Provided decoder factory can\'t create decoder for format."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v2, 0xfa5

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->release()V

    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    iget-object v1, v1, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;-><init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    iput-boolean v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->codecNeedsInitialization:Z

    return-void
.end method

.method public final onDisabled()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    sget-object v0, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->releaseDecoderResources()V

    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->imageOutput:Landroidx/media3/exoplayer/image/ImageOutput;

    invoke-interface {p0}, Landroidx/media3/exoplayer/image/ImageOutput;->onDisabled()V

    return-void
.end method

.method public final onEnabled(ZZ)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    const/4 p1, 0x1

    iget p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputStreamEnded:Z

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->tileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->nextTileInfo:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-boolean p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->readyToOutputTiles:Z

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->flush()V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final onRelease()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->releaseDecoderResources()V

    return-void
.end method

.method public final onReset()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->releaseDecoderResources()V

    const/4 v0, 0x1

    iget v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->firstFrameState:I

    return-void
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide p1, p1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    cmp-long p6, p2, v0

    if-eqz p6, :cond_1

    iget-wide v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->lastProcessedOutputBufferTimeUs:J

    cmp-long p6, v2, v0

    if-eqz p6, :cond_0

    cmp-long p2, v2, p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    invoke-direct {p2, v0, v1, p4, p5}, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;-><init>(JJ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    new-instance p1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    invoke-direct {p1, v0, v1, p4, p5}, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;-><init>(JJ)V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    return-void
.end method

.method public final releaseDecoderResources()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderReinitializationState:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    :cond_0
    return-void
.end method

.method public final render(JJ)V
    .locals 3

    iget-boolean p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez p3, :cond_3

    iget-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p3}, Landroidx/room/concurrent/FileLock;->clear()V

    iget-object p4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->flagsOnlyBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p4}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const/4 v0, 0x2

    invoke-virtual {p0, p3, p4, v0}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v0

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object p3, p3, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p3, Landroidx/media3/common/Format;

    invoke-static {p3}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputFormat:Landroidx/media3/common/Format;

    iput-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->codecNeedsInitialization:Z

    goto :goto_1

    :cond_1
    const/4 p1, -0x4

    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p4, p1}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->inputStreamEnded:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->outputStreamEnded:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoder:Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    if-nez p3, :cond_4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->maybeInitCodec()V

    :cond_4
    :try_start_0
    const-string p3, "drainAndFeedDecoder"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->drainOutput(J)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->feedInputBuffer(J)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/image/ImageDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/16 p2, 0xfa3

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p3, p2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->decoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    check-cast p0, Landroidx/room/ObservedTableVersions;

    invoke-virtual {p0, p1}, Landroidx/room/ObservedTableVersions;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result p0

    return p0
.end method
