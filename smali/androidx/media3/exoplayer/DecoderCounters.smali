.class public final Landroidx/media3/exoplayer/DecoderCounters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public decoderInitCount:I

.field public decoderReleaseCount:I

.field public droppedBufferCount:I

.field public droppedInputBufferCount:I

.field public droppedToKeyframeCount:I

.field public maxConsecutiveDroppedBufferCount:I

.field public queuedInputBufferCount:I

.field public renderedOutputBufferCount:I

.field public skippedInputBufferCount:I

.field public skippedOutputBufferCount:I

.field public totalVideoFrameProcessingOffsetUs:J

.field public videoFrameProcessingOffsetCount:I


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 15

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    iget v1, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    iget v2, p0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    iget v3, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    iget v4, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    iget v5, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v6, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    iget v7, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    iget v8, p0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget v9, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    iget-wide v10, p0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget p0, p0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    sget v12, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, ",\n decoderReleases="

    const-string v13, "\n queuedInputBuffers="

    const-string v14, "DecoderCounters {\n decoderInits="

    invoke-static {v0, v1, v14, v12, v13}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n skippedInputBuffers="

    const-string v12, "\n renderedOutputBuffers="

    invoke-static {v0, v2, v1, v3, v12}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n skippedOutputBuffers="

    const-string v2, "\n droppedBuffers="

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n droppedInputBuffers="

    const-string v2, "\n maxConsecutiveDroppedBuffers="

    invoke-static {v0, v6, v1, v7, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n droppedToKeyframeEvents="

    const-string v2, "\n totalVideoFrameProcessingOffsetUs="

    invoke-static {v0, v8, v1, v9, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n videoFrameProcessingOffsetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
