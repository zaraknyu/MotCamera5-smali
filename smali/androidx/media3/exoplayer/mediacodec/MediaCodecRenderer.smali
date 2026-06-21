.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"


# static fields
.field public static final ADAPTATION_WORKAROUND_BUFFER:[B


# instance fields
.field public final assumedMinimumCodecOperatingRate:F

.field public availableCodecInfos:Ljava/util/ArrayDeque;

.field public final buffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public final bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

.field public bypassDrainAndReinitialize:Z

.field public bypassEnabled:Z

.field public final bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public bypassSampleBufferPending:Z

.field public codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

.field public codecAdaptationWorkaroundMode:I

.field public final codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field public codecDrainAction:I

.field public codecDrainState:I

.field public codecDrmSession:Lcom/google/android/gms/tasks/zzad;

.field public codecHasOutputMediaFormat:Z

.field public codecHotswapDeadlineMs:J

.field public codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public codecInputFormat:Landroidx/media3/common/Format;

.field public codecNeedsAdaptationWorkaroundBuffer:Z

.field public codecNeedsEosFlushWorkaround:Z

.field public codecNeedsEosOutputExceptionWorkaround:Z

.field public codecNeedsEosPropagation:Z

.field public codecNeedsSosFlushWorkaround:Z

.field public codecOperatingRate:F

.field public codecOutputMediaFormat:Landroid/media/MediaFormat;

.field public codecOutputMediaFormatChanged:Z

.field public codecReceivedBuffers:Z

.field public codecReceivedEos:Z

.field public codecReconfigurationState:I

.field public codecReconfigured:Z

.field public currentPlaybackSpeed:F

.field public decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field public inputFormat:Landroidx/media3/common/Format;

.field public inputIndex:I

.field public inputStreamEnded:Z

.field public isDecodeOnlyOutputBuffer:Z

.field public isLastOutputBuffer:Z

.field public largestQueuedPresentationTimeUs:J

.field public lastBufferInStreamPresentationTimeUs:J

.field public lastOutputBufferProcessedRealtimeMs:J

.field public lastProcessedOutputBufferTimeUs:J

.field public final mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;

.field public mediaCrypto:Landroid/media/MediaCrypto;

.field public needToNotifyOutputFormatChangeAfterStreamChange:Z

.field public final noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public final oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public outputFormat:Landroidx/media3/common/Format;

.field public outputIndex:I

.field public outputStreamEnded:Z

.field public outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

.field public pendingOutputEndOfStream:Z

.field public final pendingOutputStreamChanges:Ljava/util/ArrayDeque;

.field public pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

.field public preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field public final renderTimeLimitMs:J

.field public shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field public sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

.field public targetPlaybackSpeed:F

.field public waitingForFirstSampleInFormat:Z

.field public wakeupListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;F)V
    .locals 3

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;->DEFAULT$1:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;

    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance p1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-direct {p1, p3}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    const/16 v0, 0x20

    iput v0, p1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->maxSampleCount:I

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-virtual {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p1, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v2, p1, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    iput p2, p1, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    iput p3, p1, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final bypassRender(JJ)Z
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    const/4 v15, 0x1

    xor-int/2addr v1, v15

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    iget-object v6, v1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget v9, v1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    iget-wide v10, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v12, v0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    iget-wide v4, v1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    invoke-virtual {v0, v12, v13, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnly(JJ)Z

    move-result v12

    invoke-virtual {v1, v3}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v13

    iget-object v14, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide/from16 v3, p3

    move-object v15, v1

    move-wide/from16 v1, p1

    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v15, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer$1(J)V

    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_14

    :cond_1
    move-object v15, v1

    :goto_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    const/4 v2, 0x0

    return v2

    :cond_2
    const/4 v2, 0x0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_3

    invoke-virtual {v15, v3}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->append(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    :cond_3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v1, :cond_6

    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_1
    const/16 v17, 0x1

    goto/16 :goto_15

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v1, :cond_6

    move/from16 v16, v2

    goto/16 :goto_14

    :cond_6
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    const/16 v17, 0x1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v1}, Landroidx/room/concurrent/FileLock;->clear()V

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    :goto_2
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v4

    const/4 v5, -0x5

    if-eq v4, v5, :cond_22

    const/4 v5, -0x4

    if-eq v4, v5, :cond_8

    const/4 v1, -0x3

    if-ne v4, v1, :cond_7

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    goto/16 :goto_13

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_8
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    iget-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    goto/16 :goto_13

    :cond_9
    iget-wide v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iget-wide v7, v3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/high16 v6, 0x20000000

    invoke-virtual {v5, v6}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    iget-wide v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    :cond_b
    iget-boolean v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    const/16 v6, 0x8

    const/16 v7, 0xff

    const/4 v8, 0x0

    const-string v9, "audio/opus"

    if-eqz v5, :cond_d

    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const/16 v10, 0xb

    aget-byte v10, v5, v10

    and-int/2addr v10, v7

    shl-int/2addr v10, v6

    const/16 v11, 0xa

    aget-byte v5, v5, v11

    and-int/2addr v5, v7

    or-int/2addr v5, v10

    iget-object v10, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v10}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v10

    iput v5, v10, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v10}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    :cond_c
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v5, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    :cond_d
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    if-eqz v5, :cond_1e

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iput-object v5, v3, Landroidx/media3/decoder/DecoderInputBuffer;->format:Landroidx/media3/common/Format;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleInputBufferSupplementalData(Landroidx/media3/decoder/DecoderInputBuffer;)V

    :cond_e
    iget-wide v9, v0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    iget-wide v11, v3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    sub-long/2addr v9, v11

    const-wide/32 v11, 0x13880

    cmp-long v5, v9, v11

    if-gtz v5, :cond_1e

    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iget-object v9, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v10

    iget-object v11, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/Buffer;->position()I

    move-result v11

    sub-int/2addr v10, v11

    if-nez v10, :cond_f

    goto/16 :goto_10

    :cond_f
    iget v10, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x3

    if-ne v10, v12, :cond_11

    :cond_10
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [B

    :cond_11
    iget-object v5, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v10

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v12

    sub-int v13, v12, v10

    add-int/lit16 v14, v13, 0xff

    div-int/2addr v14, v7

    add-int/lit8 v16, v14, 0x1b

    add-int v16, v16, v13

    iget v4, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    if-ne v4, v11, :cond_13

    if-eqz v8, :cond_12

    array-length v4, v8

    add-int/lit8 v4, v4, 0x1c

    goto :goto_3

    :cond_12
    const/16 v4, 0x2f

    :goto_3
    add-int/lit8 v18, v4, 0x2c

    add-int v16, v18, v16

    :goto_4
    move/from16 p1, v6

    move/from16 v6, v16

    goto :goto_5

    :cond_13
    move v4, v2

    goto :goto_4

    :goto_5
    iget-object v7, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_14

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_14
    iget-object v6, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_6
    iget-object v6, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v2, 0x16

    if-ne v7, v11, :cond_18

    if-eqz v8, :cond_17

    const/16 v22, 0x1

    const/16 v23, 0x1

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v6

    invoke-static/range {v18 .. v23}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    array-length v7, v8

    move/from16 p4, v12

    int-to-long v11, v7

    shr-long v18, v11, p1

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-nez v7, :cond_15

    const/4 v7, 0x1

    goto :goto_7

    :cond_15
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_16

    long-to-int v7, v11

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    array-length v12, v8

    add-int/lit8 v12, v12, 0x1c

    move/from16 p1, v4

    const/4 v4, 0x0

    invoke-static {v7, v11, v12, v4}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    array-length v4, v8

    add-int/lit8 v4, v4, 0x1c

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "out of range: %s"

    invoke-static {v2, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move/from16 p1, v4

    move/from16 p4, v12

    sget-object v4, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_8
    sget-object v4, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_9
    const/4 v4, 0x0

    goto :goto_a

    :cond_18
    move/from16 p1, v4

    move/from16 p4, v12

    goto :goto_9

    :goto_a
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v4

    const/4 v12, 0x1

    if-le v4, v12, :cond_19

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    goto :goto_b

    :cond_19
    const/4 v4, 0x0

    :goto_b
    invoke-static {v7, v4}, Landroidx/media3/extractor/AacUtil;->getPacketDurationUs(BB)J

    move-result-wide v7

    const-wide/32 v11, 0xbb80

    mul-long/2addr v7, v11

    const-wide/32 v11, 0xf4240

    div-long/2addr v7, v11

    long-to-int v4, v7

    iget v7, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    add-int/2addr v7, v4

    iput v7, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    int-to-long v7, v7

    iget v4, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v23, 0x0

    move/from16 v21, v4

    move-object/from16 v18, v6

    move-wide/from16 v19, v7

    move/from16 v22, v14

    invoke-static/range {v18 .. v23}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v14, :cond_1b

    const/16 v7, 0xff

    if-lt v13, v7, :cond_1a

    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit16 v8, v13, -0xff

    move v13, v8

    goto :goto_d

    :cond_1a
    int-to-byte v8, v13

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v13, 0x0

    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1b
    move/from16 v4, p4

    :goto_e
    if-ge v10, v4, :cond_1c

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_1c
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget v4, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int v4, v4, p1

    add-int/lit8 v4, v4, 0x2c

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v7

    sub-int/2addr v5, v7

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v7}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result v2

    add-int/lit8 v4, p1, 0x42

    invoke-virtual {v6, v4, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_f

    :cond_1d
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v8

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v4, v5, v8, v7}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result v4

    invoke-virtual {v6, v2, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_f
    iget v2, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    iput-object v6, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v2, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object v2, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v4, v9, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    :cond_1e
    :goto_10
    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_11

    :cond_1f
    iget-wide v4, v0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    iget-wide v6, v15, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    invoke-virtual {v0, v4, v5, v6, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnly(JJ)Z

    move-result v2

    iget-wide v6, v3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {v0, v4, v5, v6, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnly(JJ)Z

    move-result v4

    if-ne v2, v4, :cond_20

    :goto_11
    invoke-virtual {v15, v3}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->append(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    const/4 v12, 0x1

    goto :goto_12

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_2

    :goto_12
    iput-boolean v12, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    goto :goto_13

    :cond_22
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/room/concurrent/FileLock;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    :cond_23
    :goto_13
    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v15}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    :cond_24
    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :goto_14
    return v16

    :goto_15
    return v17
.end method

.method public abstract canReuseCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
.end method

.method public createDecoderException(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 0

    new-instance p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)V

    return-object p0
.end method

.method public final disableBypass()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    return-void
.end method

.method public final drainAndUpdateCodecDrmSessionV23()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    return v1
.end method

.method public final drainOutputBuffer(JJ)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v15, 0x1

    const/4 v2, 0x0

    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    if-ltz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v5, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_1
    move/from16 v16, v2

    goto/16 :goto_6

    :cond_2
    invoke-interface {v5, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v1, :cond_7

    const/4 v3, -0x2

    if-ne v1, v3, :cond_4

    iput-boolean v15, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v2, :cond_3

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    iput-boolean v15, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    return v15

    :cond_3
    iput-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    iput-boolean v15, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    return v15

    :cond_4
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_5

    iget v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_6
    iget-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_1

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    iget-object v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v2

    :cond_7
    iget-boolean v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v4, :cond_8

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    invoke-interface {v5, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(I)V

    return v15

    :cond_8
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_9

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v2

    :cond_9
    iput v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    invoke-interface {v5, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_a

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v8

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_a
    iget-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_b

    move v1, v15

    goto :goto_1

    :cond_b
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-wide v10, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    cmp-long v1, v10, v6

    if-eqz v1, :cond_c

    cmp-long v1, v10, v8

    if-gtz v1, :cond_c

    move v1, v15

    goto :goto_2

    :cond_c
    move v1, v2

    :goto_2
    iput-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    invoke-virtual {v0, v8, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    :goto_3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_d

    :try_start_1
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v14, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x1

    move/from16 v16, v2

    move/from16 v17, v15

    move-wide/from16 v1, p1

    move-object v15, v3

    move-wide/from16 v3, p3

    :try_start_2
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    move/from16 v16, v2

    :catch_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    goto :goto_6

    :cond_d
    move/from16 v16, v2

    move/from16 v17, v15

    move-object v15, v3

    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget v8, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v14, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_11

    iget-wide v1, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer$1(J)V

    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    move/from16 v2, v17

    goto :goto_5

    :cond_e
    move/from16 v2, v16

    :goto_5
    if-nez v2, :cond_f

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    :cond_f
    const/4 v1, -0x1

    iput v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_10

    return v17

    :cond_10
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_11
    :goto_6
    return v16
.end method

.method public final feedInputBuffer()Z
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    const/4 v8, 0x0

    if-eqz v2, :cond_1b

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_1b

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-gez v0, :cond_2

    invoke-interface {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueInputBufferIndex()I

    move-result v0

    iput v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    :cond_2
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v0, v13, :cond_4

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const-wide/16 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJ)V

    iput v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput-object v11, v10, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    :goto_0
    iput v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    return v8

    :cond_4
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_5

    iput-boolean v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iget-object v0, v10, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x26

    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJ)V

    iput v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput-object v11, v10, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    return v13

    :cond_5
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v13, :cond_7

    move v0, v8

    :goto_1
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, v10, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_7
    iget-object v0, v10, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v3, v1, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v3}, Landroidx/room/concurrent/FileLock;->clear()V

    :try_start_0
    invoke-virtual {v1, v3, v10, v8}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v4
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x3

    if-ne v4, v5, :cond_8

    invoke-virtual {v1}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-wide v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    return v8

    :cond_8
    const/4 v5, -0x5

    if-ne v4, v5, :cond_a

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v9, :cond_9

    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_9
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/room/concurrent/FileLock;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    return v13

    :cond_a
    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v9, :cond_b

    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_b
    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v0, :cond_c

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v8

    :cond_c
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_d

    goto/16 :goto_5

    :cond_d
    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const-wide/16 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJ)V

    iput v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput-object v11, v10, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return v8

    :cond_e
    iget-boolean v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v3, :cond_f

    invoke-virtual {v10, v13}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v9, :cond_10

    iput v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    return v13

    :cond_f
    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldDiscardDecoderInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    return v13

    :cond_11
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v10, v3}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v4, v10, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    if-nez v0, :cond_12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_12
    iget-object v5, v4, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-nez v5, :cond_13

    new-array v5, v13, [I

    iput-object v5, v4, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v6, v4, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v5, v6, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_13
    iget-object v4, v4, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    aget v5, v4, v8

    add-int/2addr v5, v0

    aput v5, v4, v8

    :cond_14
    :goto_2
    iget-wide v5, v10, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_16

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    iget-object v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5, v6, v4}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    goto :goto_3

    :cond_15
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    iget-object v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5, v6, v4}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    :goto_3
    iput-boolean v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    :cond_16
    iget-wide v14, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-virtual {v1}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_17

    const/high16 v0, 0x20000000

    invoke-virtual {v10, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    iget-wide v14, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v14, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    :cond_18
    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleInputBufferSupplementalData(Landroidx/media3/decoder/DecoderInputBuffer;)V

    :cond_19
    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V

    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecBufferFlags(Landroidx/media3/decoder/DecoderInputBuffer;)I

    move-result v7

    if-eqz v3, :cond_1a

    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v4, v10, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueSecureInputBuffer(ILandroidx/media3/decoder/CryptoInfo;JI)V

    goto :goto_4

    :cond_1a
    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v0, v10, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    move-wide/from16 v16, v5

    move v5, v7

    move-wide/from16 v6, v16

    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJ)V

    :goto_4
    iput v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput-object v11, v10, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    iput v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v1, v13

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    return v13

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v13

    :cond_1b
    :goto_5
    return v8
.end method

.method public final flushCodec()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    throw v0
.end method

.method public final flushOrReleaseCodec()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    if-lt v0, v2, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3
.end method

.method public final getAvailableCodecInfos(Z)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getDecoderInfos(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getDecoderInfos(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Drm session requires secure decoder for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecRenderer"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0

    :cond_1
    return-object v2
.end method

.method public getCodecBufferFlags(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCodecNeedsEosPropagation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getCodecOperatingRateV23(F[Landroidx/media3/common/Format;)F
.end method

.method public abstract getDecoderInfos(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;
.end method

.method public abstract getMediaCodecConfiguration(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Lcom/motorola/camera/fsm/Fsm;
.end method

.method public abstract handleInputBufferSupplementalData(Landroidx/media3/decoder/DecoderInputBuffer;)V
.end method

.method public final initCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .locals 12

    const-string v0, "createCodec:"

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x17

    if-ge v2, v4, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    iget v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    iget-object v7, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v6, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(F[Landroidx/media3/common/Format;)F

    move-result v6

    :goto_0
    iget v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    iget-object v6, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v1, p2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getMediaCodecConfiguration(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Lcom/motorola/camera/fsm/Fsm;

    move-result-object p2

    const/16 v8, 0x1f

    if-lt v2, v8, :cond_2

    iget-object v8, p0, Landroidx/media3/exoplayer/BaseRenderer;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v8

    sget-object v9, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v8, v9}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p2, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v9, Landroid/media/MediaFormat;

    const-string v10, "log-session-id"

    invoke-virtual {v8}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    invoke-interface {v0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->createAdapter(Lcom/motorola/camera/fsm/Fsm;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    new-instance v0, Lcom/google/android/gms/tasks/zza;

    const/16 v8, 0x10

    invoke-direct {v0, v8, p0}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->registerOnBufferAvailableListener(Lcom/google/android/gms/tasks/zza;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p2, v3

    move v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v1}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Format exceeds selected codec\'s capabilities ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MediaCodecRenderer"

    invoke-static {v9, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    const/4 p2, 0x2

    const/16 v1, 0x19

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gt v2, v1, :cond_5

    const-string v10, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v11, "SM-T585"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SM-A510"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SM-A520"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SM-J700"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    move v10, p2

    goto :goto_2

    :cond_5
    const/16 v10, 0x18

    if-ge v2, v10, :cond_8

    const-string v10, "OMX.Nvidia.h264.decode"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_6
    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v11, "flounder"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "flounder_lte"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "grouper"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string/jumbo v11, "tilapia"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    move v10, v9

    goto :goto_2

    :cond_8
    move v10, v8

    :goto_2
    iput v10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    const/16 v10, 0x1d

    if-ne v2, v10, :cond_9

    const-string v11, "c2.android.aac.decoder"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v11, v9

    goto :goto_3

    :cond_9
    move v11, v8

    :goto_3
    iput-boolean v11, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    if-gt v2, v0, :cond_a

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v9

    goto :goto_4

    :cond_a
    move v0, v8

    :goto_4
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    const/16 v0, 0x15

    if-ne v2, v0, :cond_b

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v9

    goto :goto_5

    :cond_b
    move v0, v8

    :goto_5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-gt v2, v1, :cond_c

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_c
    if-gt v2, v10, :cond_d

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "AFTS"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecNeedsEosPropagation()Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    :goto_6
    move v8, v9

    :cond_10
    iput-boolean v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-ne p1, p2, :cond_11

    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    :cond_11
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/2addr p2, v9

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    sub-long v6, v3, v6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecInitialized(JLjava/lang/String;J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final isDecodeOnly(JJ)Z
    .locals 1

    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "audio/opus"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sub-long/2addr p1, p3

    const-wide/32 p3, 0x13880

    cmp-long p0, p1, p3

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isReady()Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long p0, v3, v5

    if-gez p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final maybeInitCodecOrBypass()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldUseBypass(Landroidx/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    if-nez v0, :cond_1

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/opus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, v2, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->maxSampleCount:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x20

    iput v0, v2, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->maxSampleCount:I

    :goto_0
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    return-void

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/gms/tasks/zzad;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/gms/tasks/zzad;

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzad;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v6

    sget-boolean v7, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v7, :cond_5

    instance-of v7, v6, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzad;->getState()I

    move-result v7

    if-eq v7, v3, :cond_4

    if-eq v7, v4, :cond_5

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzad;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, v0, v1, v5, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_5
    if-nez v6, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzad;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v2

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_6
    instance-of v2, v6, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v2, :cond_7

    check-cast v6, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v5, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_2
    :try_start_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzad;->getState()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_8

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzad;->getState()I

    move-result v2

    if-ne v2, v4, :cond_9

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_6

    :cond_8
    :goto_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/gms/tasks/zzad;

    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/tasks/zzad;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    move v3, v5

    :goto_4
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    return-void

    :goto_6
    const/16 v2, 0xfa1

    invoke-virtual {p0, v1, v0, v5, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_b
    :goto_7
    return-void
.end method

.method public final maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v6, p2

    iget-object v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v10, 0x0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getAvailableCodecInfos(Z)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    const v2, -0xc34e

    invoke-direct {v1, v9, v0, v6, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;ZI)V

    throw v1

    :cond_1
    :goto_2
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_7

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitializeProcessingPipeline(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v1, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_4
    return-void

    :cond_3
    move-object/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v7, v12}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->initCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initialize decoder: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaCodecRenderer"

    invoke-static {v2, v0, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Decoder init failed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v9, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    instance-of v0, v4, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_4

    move-object v0, v4

    check-cast v0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_5

    :cond_4
    move-object v8, v10

    :goto_5
    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v0, :cond_5

    iput-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_6

    :cond_5
    new-instance v13, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    iget-object v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v19}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;)V

    iput-object v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw v0

    :cond_7
    iput-object v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    return-void

    :cond_8
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    const v1, -0xc34f

    invoke-direct {v0, v9, v10, v6, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;ZI)V

    throw v0
.end method

.method public maybeInitializeProcessingPipeline(Landroidx/media3/common/Format;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract onCodecError(Ljava/lang/Exception;)V
.end method

.method public abstract onCodecInitialized(JLjava/lang/String;J)V
.end method

.method public abstract onCodecReleased(Ljava/lang/String;)V
.end method

.method public onDisabled()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    return-void
.end method

.method public onInputFormatChanged(Landroidx/room/concurrent/FileLock;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    iget-object v1, p1, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    const-string/jumbo v4, "video/av01"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v1

    :goto_0
    iget-object p1, p1, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/zzad;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Lcom/google/android/gms/tasks/zzad;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Lcom/google/android/gms/tasks/zzad;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_3
    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    iput-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    return-object v4

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez p1, :cond_5

    iput-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    return-object v4

    :cond_5
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/gms/tasks/zzad;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    const/16 v5, 0x17

    const/4 v6, 0x3

    const/4 v9, 0x2

    if-ne v2, v4, :cond_6

    goto/16 :goto_2

    :cond_6
    if-eqz v4, :cond_22

    if-nez v2, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzad;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v10

    if-nez v10, :cond_8

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzad;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v11

    if-eqz v11, :cond_22

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto/16 :goto_a

    :cond_9
    instance-of v10, v10, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-nez v10, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzad;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzad;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto/16 :goto_a

    :cond_b
    sget v10, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge v10, v5, :cond_c

    goto/16 :goto_a

    :cond_c
    sget-object v10, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzad;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzad;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_a

    :cond_d
    iget-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-nez v2, :cond_f

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzad;->getState()I

    move-result v2

    if-eq v2, v9, :cond_22

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzad;->getState()I

    move-result v2

    if-eq v2, v6, :cond_e

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zzad;->getState()I

    move-result v2

    const/4 v10, 0x4

    if-ne v2, v10, :cond_f

    :cond_e
    iget-object v2, v8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/tasks/zzad;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_a

    :cond_f
    :goto_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-eq v2, v4, :cond_10

    move v2, v0

    goto :goto_3

    :cond_10
    move v2, v3

    :goto_3
    if-eqz v2, :cond_12

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v4, v5, :cond_11

    goto :goto_4

    :cond_11
    move v4, v3

    goto :goto_5

    :cond_12
    :goto_4
    move v4, v0

    :goto_5
    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual {p0, v1, v7, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->canReuseCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v4

    iget v5, v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v5, :cond_1d

    const/16 v10, 0x10

    if-eq v5, v0, :cond_19

    if-eq v5, v9, :cond_15

    if-ne v5, v6, :cond_14

    invoke-virtual {p0, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_9

    :cond_13
    iput-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_6
    move v10, v9

    goto/16 :goto_9

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_15
    invoke-virtual {p0, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v11

    if-nez v11, :cond_16

    goto :goto_9

    :cond_16
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iget v10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eq v10, v9, :cond_18

    if-ne v10, v0, :cond_17

    iget v10, v8, Landroidx/media3/common/Format;->width:I

    iget v11, v7, Landroidx/media3/common/Format;->width:I

    if-ne v10, v11, :cond_17

    iget v10, v8, Landroidx/media3/common/Format;->height:I

    iget v11, v7, Landroidx/media3/common/Format;->height:I

    if-ne v10, v11, :cond_17

    goto :goto_7

    :cond_17
    move v0, v3

    :cond_18
    :goto_7
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_6

    :cond_19
    invoke-virtual {p0, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v11

    if-nez v11, :cond_1a

    goto :goto_9

    :cond_1a
    iput-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_6

    :cond_1b
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v2, :cond_1f

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_1c

    iput v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_6

    :cond_1c
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_8

    :cond_1d
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v2, :cond_1e

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_8

    :cond_1e
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_1f
    :goto_8
    move v10, v3

    :goto_9
    if-eqz v5, :cond_21

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-ne v0, p1, :cond_20

    iget p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    if-ne p0, v6, :cond_21

    :cond_20
    new-instance v5, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v5

    :cond_21
    return-object v4

    :cond_22
    :goto_a
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz p1, :cond_23

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_b

    :cond_23
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :goto_b
    new-instance v5, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x80

    invoke-direct/range {v5 .. v10}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v5

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v1, v3, v0}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public abstract onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
.end method

.method public onOutputStreamOffsetUsChanged()V
    .locals 0

    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p3, p2, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    iput p1, p2, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    const/4 p1, 0x2

    iput p1, p2, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->clear()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public onProcessedOutputBuffer$1(J)V
    .locals 3

    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract onProcessedStreamChange()V
.end method

.method public onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0

    return-void
.end method

.method public onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 12

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    new-instance v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v0, v4, v0

    if-ltz v0, :cond_3

    :cond_1
    new-instance v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    :cond_2
    return-void

    :cond_3
    new-instance v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final processEndOfStream()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    return-void
.end method

.method public abstract processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
.end method

.method public final readSourceOmittingSampleData(I)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/room/concurrent/FileLock;

    invoke-virtual {v0}, Landroidx/room/concurrent/FileLock;->clear()V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const/4 v2, 0x4

    or-int/2addr p1, v2

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/room/concurrent/FileLock;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 v3, -0x5

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/room/concurrent/FileLock;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    return v4

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1, v2}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final releaseCodec()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->release()V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecReleased(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/gms/tasks/zzad;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    return-void

    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/gms/tasks/zzad;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    throw v1

    :goto_3
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    :try_start_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_4
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/gms/tasks/zzad;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    throw v1

    :goto_5
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/gms/tasks/zzad;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    throw v1
.end method

.method public render(JJ)V
    .locals 11

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :catch_1
    move-exception p1

    goto/16 :goto_b

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassRender(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_7

    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_7

    iget-wide v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    cmp-long v4, v9, v7

    if-gez v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v0

    :goto_3
    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long p3, p1, v5

    if-eqz p3, :cond_9

    iget-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p3, v2

    cmp-long p1, p3, p1

    if-gez p1, :cond_8

    goto :goto_5

    :cond_8
    move p1, v1

    goto :goto_6

    :cond_9
    :goto_5
    move p1, v0

    :goto_6
    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :cond_b
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    iget-object v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    :goto_7
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    monitor-enter p1

    monitor-exit p1
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_8
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    array-length p4, p3

    if-lez p4, :cond_10

    aget-object p3, p3, v1

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "android.media.MediaCodec"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    :goto_9
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    if-eqz p2, :cond_d

    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    if-eqz p2, :cond_d

    move v1, v0

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_e
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createDecoderException(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    move-result-object p1

    iget p2, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    const/16 p3, 0x44d

    if-ne p2, p3, :cond_f

    const/16 p2, 0xfa6

    goto :goto_a

    :cond_f
    const/16 p2, 0xfa3

    :goto_a
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, p1, p3, v1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_10
    throw p1

    :goto_b
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p3

    invoke-static {p3}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result p3

    invoke-virtual {p0, p1, p2, v1, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_11
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    throw v0
.end method

.method public abstract renderToEndOfStream()V
.end method

.method public resetCodecStateForFlush()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    return-void
.end method

.method public final resetCodecStateForRelease()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    return-void
.end method

.method public final setCodecDrmSession(Lcom/google/android/gms/tasks/zzad;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/zzad;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzad;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lcom/google/android/gms/tasks/zzad;

    return-void
.end method

.method public final setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V
    .locals 4

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputStreamOffsetUsChanged()V

    :cond_0
    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    return-void
.end method

.method public shouldDiscardDecoderInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldUseBypass(Landroidx/media3/common/Format;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->supportsFormat(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;)I

    move-result p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    .line 3
    throw p0
.end method

.method public abstract supportsFormat(Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;Landroidx/media3/common/Format;)I
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final updateCodecOperatingRate(Landroidx/media3/common/Format;)Z
    .locals 5

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(F[Landroidx/media3/common/Format;)F

    move-result p1

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v3, v0, p1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, p1, v3

    if-nez v4, :cond_4

    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz p1, :cond_3

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    :cond_6
    :goto_1
    return v2
.end method

.method public final updateDrmSessionV23()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzad;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v0

    instance-of v1, v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v3, 0x1776

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lcom/google/android/gms/tasks/zzad;)V

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void
.end method

.method public final updateOutputFormatForTime(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Format;

    if-nez p1, :cond_0

    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Format;

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    :cond_2
    return-void
.end method
