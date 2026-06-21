.class public final Landroidx/media3/common/audio/SonicAudioProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/audio/AudioProcessor;


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public inputBytes:J

.field public inputEnded:Z

.field public outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public outputBytes:J

.field public pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public pendingOutputSampleRate:I

.field public pendingSonicRecreation:Z

.field public pitch:F

.field public shortBuffer:Ljava/nio/ShortBuffer;

.field public sonic:Landroidx/media3/common/audio/Sonic;

.field public speed:F


# virtual methods
.method public final configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 3

    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    :cond_0
    iput-object p1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    new-instance v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v2, v0, p1, v1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    iput-object v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    return-object v2

    :cond_1
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0
.end method

.method public final flush()V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/common/audio/SonicAudioProcessor;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-boolean v3, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    if-eqz v3, :cond_0

    new-instance v4, Landroidx/media3/common/audio/Sonic;

    iget v7, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v8, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v5, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->speed:F

    iget v6, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pitch:F

    iget v9, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-direct/range {v4 .. v9}, Landroidx/media3/common/audio/Sonic;-><init>(FFIII)V

    iput-object v4, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->sonic:Landroidx/media3/common/audio/Sonic;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->sonic:Landroidx/media3/common/audio/Sonic;

    if-eqz v0, :cond_1

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    :cond_1
    :goto_0
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputBytes:J

    iput-wide v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBytes:J

    iput-boolean v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public final getOutput()Ljava/nio/ByteBuffer;
    .locals 8

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->sonic:Landroidx/media3/common/audio/Sonic;

    if-eqz v0, :cond_3

    iget v1, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iget v2, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget v2, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    mul-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_3

    iget-object v5, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    if-ge v5, v2, :cond_1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_1
    iget-object v5, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    iget v6, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    if-ltz v6, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    div-int/2addr v4, v1

    iget v6, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v6, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    mul-int v7, v4, v1

    invoke-virtual {v5, v6, v3, v7}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget v5, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v5, v4

    iput v5, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget-object v0, v0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    mul-int/2addr v5, v1

    invoke-static {v0, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBytes:J

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final isActive()Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pitch:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object p0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnded()Z
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputEnded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->sonic:Landroidx/media3/common/audio/Sonic;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    if-ltz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget p0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, p0

    mul-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public final queueEndOfStream()V
    .locals 11

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->sonic:Landroidx/media3/common/audio/Sonic;

    if-eqz v0, :cond_2

    iget v1, v0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v2, v0, Landroidx/media3/common/audio/Sonic;->speed:F

    iget v3, v0, Landroidx/media3/common/audio/Sonic;->pitch:F

    div-float/2addr v2, v3

    float-to-double v4, v2

    iget v2, v0, Landroidx/media3/common/audio/Sonic;->rate:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    iget v6, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int v7, v1, v6

    iget v8, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    int-to-double v9, v7

    div-double/2addr v9, v4

    int-to-double v4, v6

    add-double/2addr v9, v4

    iget-wide v4, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    add-double/2addr v9, v4

    iget v4, v0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    int-to-double v4, v4

    add-double/2addr v9, v4

    div-double/2addr v9, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v2

    double-to-int v2, v9

    add-int/2addr v8, v2

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    iget-object v2, v0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v3, v0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v3, v1

    invoke-virtual {v0, v2, v1, v4}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget v5, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int v6, v3, v5

    if-ge v4, v6, :cond_0

    iget-object v6, v0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    mul-int/2addr v5, v1

    add-int/2addr v5, v4

    aput-short v2, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    add-int/2addr v3, v1

    iput v3, v0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    invoke-virtual {v0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    iget v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    if-le v1, v8, :cond_1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    :cond_1
    iput v2, v0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iput v2, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    iput v2, v0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public final queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->sonic:Landroidx/media3/common/audio/Sonic;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputBytes:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputBytes:J

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    iget v3, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    div-int/2addr p0, v3

    mul-int v4, p0, v3

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, v0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v6, v0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    invoke-virtual {v0, v5, v6, p0}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v6, v0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    mul-int/2addr v6, v3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v5, v6, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget v1, v0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    add-int/2addr v1, p0

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    invoke-virtual {v0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->speed:F

    iput v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pitch:F

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->sonic:Landroidx/media3/common/audio/Sonic;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputBytes:J

    iput-wide v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->outputBytes:J

    iput-boolean v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method
