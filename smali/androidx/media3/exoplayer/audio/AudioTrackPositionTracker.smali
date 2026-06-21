.class public final Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

.field public audioTrack:Landroid/media/AudioTrack;

.field public audioTrackPlaybackSpeed:F

.field public bufferSize:I

.field public bufferSizeUs:J

.field public clock:Landroidx/media3/common/util/SystemClock;

.field public endPlaybackHeadPosition:J

.field public expectRawPlaybackHeadReset:Z

.field public forceResetWorkaroundTimeMs:J

.field public getLatencyMethod:Ljava/lang/reflect/Method;

.field public hasData:Z

.field public isOutputPcm:Z

.field public lastLatencySampleTimeUs:J

.field public lastPlayheadSampleTimeUs:J

.field public lastPositionUs:J

.field public lastRawPlaybackHeadPositionSampleTimeMs:J

.field public lastSampleUsedGetTimestampMode:Z

.field public lastSystemTimeUs:J

.field public latencyUs:J

.field public final listener:Landroidx/room/ObservedTableVersions;

.field public needsPassthroughWorkarounds:Z

.field public nextPlayheadOffsetIndex:I

.field public notifiedPositionIncreasing:Z

.field public outputSampleRate:I

.field public passthroughWorkaroundPauseOffset:J

.field public playheadOffsetCount:I

.field public final playheadOffsets:[J

.field public previousModePositionUs:J

.field public previousModeSystemTimeUs:J

.field public rawPlaybackHeadPosition:J

.field public rawPlaybackHeadWrapCount:J

.field public smoothedPlayheadOffsetUs:J

.field public stopPlaybackHeadPosition:J

.field public stopTimestampUs:J

.field public sumRawPlaybackHeadPosition:J


# direct methods
.method public constructor <init>(Landroidx/room/ObservedTableVersions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/room/ObservedTableVersions;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    sget-object p1, Landroidx/media3/common/util/SystemClock;->DEFAULT:Landroidx/media3/common/util/SystemClock;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    return-void
.end method


# virtual methods
.method public final getCurrentPositionUs()J
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/room/ObservedTableVersions;

    iget-object v1, v1, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/16 v14, 0x3e8

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    div-long v6, v18, v14

    move-wide/from16 v18, v14

    iget-wide v14, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    sub-long v14, v6, v14

    const-wide/16 v22, 0x7530

    cmp-long v5, v14, v22

    if-ltz v5, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v14

    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v5, v14, v15}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v14

    cmp-long v5, v14, v10

    if-nez v5, :cond_0

    move/from16 v23, v3

    goto/16 :goto_c

    :cond_0
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iget v8, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    cmpl-float v22, v8, v3

    if-nez v22, :cond_1

    move/from16 v23, v3

    goto :goto_0

    :cond_1
    long-to-double v14, v14

    move/from16 v23, v3

    float-to-double v3, v8

    div-double/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    :goto_0
    sub-long/2addr v14, v6

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    aput-wide v14, v3, v5

    iget v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    add-int/2addr v4, v13

    const/16 v5, 0xa

    rem-int/2addr v4, v5

    iput v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iget v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v4, v5, :cond_2

    add-int/2addr v4, v13

    iput v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    :cond_2
    iput-wide v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    iput-wide v10, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    move v4, v12

    :goto_1
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v4, v5, :cond_4

    iget-wide v14, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    aget-wide v24, v3, v4

    int-to-long v10, v5

    div-long v24, v24, v10

    add-long v10, v24, v14

    iput-wide v10, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_3
    move/from16 v23, v3

    :cond_4
    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v3, :cond_5

    goto/16 :goto_c

    :cond_5
    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    if-eqz v4, :cond_12

    iget-object v8, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v14, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v14, v6, v14

    const-wide/32 v24, 0x7a120

    iget-wide v10, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v10, v14, v10

    if-gez v10, :cond_6

    :goto_2
    move-wide/from16 v26, v6

    goto/16 :goto_5

    :cond_6
    iput-wide v6, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    iget-object v10, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10, v8}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-wide v14, v8, Landroid/media/AudioTimestamp;->framePosition:J

    move-wide/from16 v26, v6

    iget-wide v5, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampRawPositionFrames:J

    cmp-long v11, v5, v14

    if-lez v11, :cond_8

    iget-boolean v11, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset:Z

    if-eqz v11, :cond_7

    move-object v11, v8

    iget-wide v7, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->accumulatedRawTimestampFramePosition:J

    add-long/2addr v7, v5

    iput-wide v7, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->accumulatedRawTimestampFramePosition:J

    iput-boolean v12, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset:Z

    goto :goto_3

    :cond_7
    move-object v11, v8

    iget-wide v5, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->rawTimestampFramePositionWrapCount:J

    goto :goto_3

    :cond_8
    move-object v11, v8

    :goto_3
    iput-wide v14, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampRawPositionFrames:J

    iget-wide v5, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->accumulatedRawTimestampFramePosition:J

    add-long/2addr v14, v5

    iget-wide v5, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->rawTimestampFramePositionWrapCount:J

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    add-long/2addr v14, v5

    iput-wide v14, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampPositionFrames:J

    goto :goto_4

    :cond_9
    move-wide/from16 v26, v6

    move-object v11, v8

    :goto_4
    iget v5, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    if-eqz v5, :cond_f

    if-eq v5, v13, :cond_d

    if-eq v5, v9, :cond_c

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    const/4 v7, 0x4

    if-ne v5, v7, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_b
    if-eqz v10, :cond_13

    invoke-virtual {v3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_6

    :cond_c
    if-nez v10, :cond_13

    invoke-virtual {v3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_6

    :cond_d
    if-eqz v10, :cond_e

    iget-wide v5, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampPositionFrames:J

    iget-wide v14, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long v5, v5, v14

    if-lez v5, :cond_13

    invoke-virtual {v3, v9}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_6

    :cond_e
    invoke-virtual {v3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_6

    :cond_f
    if-eqz v10, :cond_11

    iget-wide v5, v11, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v5, v5, v18

    iget-wide v14, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long v5, v5, v14

    if-ltz v5, :cond_10

    iget-wide v5, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampPositionFrames:J

    iput-wide v5, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    invoke-virtual {v3, v13}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_6

    :cond_10
    :goto_5
    move v10, v12

    goto :goto_6

    :cond_11
    iget-wide v5, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long v5, v26, v5

    cmp-long v5, v5, v24

    if-lez v5, :cond_13

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_6

    :cond_12
    const-wide/32 v24, 0x7a120

    goto/16 :goto_2

    :cond_13
    :goto_6
    const-string v8, "DefaultAudioSink"

    if-nez v10, :cond_14

    move-wide/from16 v10, v26

    const-wide/32 v28, 0x4c4b40

    goto/16 :goto_a

    :cond_14
    if-eqz v4, :cond_15

    iget-object v10, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v10, v10, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v10, v10, v18

    goto :goto_7

    :cond_15
    move-wide/from16 v10, v20

    :goto_7
    if-eqz v4, :cond_16

    iget-wide v14, v4, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampPositionFrames:J

    :goto_8
    const-wide/32 v28, 0x4c4b40

    goto :goto_9

    :cond_16
    const-wide/16 v14, -0x1

    goto :goto_8

    :goto_9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v5

    iget v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v4, v5, v6}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v4

    sub-long v30, v10, v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(J)J

    move-result-wide v30

    cmp-long v6, v30, v28

    const-string v7, ", "

    if-lez v6, :cond_17

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Spurious audio timestamp (system clock mismatch): "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v26

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_a

    :cond_17
    move-wide/from16 v32, v26

    iget v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v6, v14, v15}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v26

    sub-long v26, v26, v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    cmp-long v6, v26, v28

    if-lez v6, :cond_18

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Spurious audio timestamp (frame position mismatch): "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v32

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_a

    :cond_18
    move-wide/from16 v10, v32

    const/4 v7, 0x4

    iget v4, v3, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    if-ne v4, v7, :cond_19

    invoke-virtual {v3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    :cond_19
    :goto_a
    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    if-eqz v3, :cond_1c

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1c

    iget-wide v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    sub-long v6, v10, v4

    cmp-long v4, v6, v24

    if-ltz v4, :cond_1c

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    mul-long v5, v5, v18

    iget-wide v14, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    sub-long/2addr v5, v14

    iput-wide v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/16 v14, 0x0

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    cmp-long v3, v5, v28

    if-lez v3, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring impossibly large audio latency: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    iput-wide v14, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    iput-object v4, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    :cond_1a
    :goto_b
    iput-wide v10, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    goto :goto_c

    :cond_1b
    move-wide/from16 v18, v14

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const/high16 v23, 0x3f800000    # 1.0f

    :cond_1c
    :goto_c
    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    div-long v3, v3, v18

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    iget v5, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    if-ne v5, v9, :cond_1d

    move v12, v13

    goto :goto_d

    :cond_1d
    const/4 v12, 0x0

    :goto_d
    if-eqz v12, :cond_20

    if-eqz v6, :cond_1e

    iget-wide v7, v6, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->lastTimestampPositionFrames:J

    goto :goto_e

    :cond_1e
    const-wide/16 v7, -0x1

    :goto_e
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v5, v7, v8}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v7

    if-eqz v6, :cond_1f

    iget-object v5, v6, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v5, v5, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v5, v5, v18

    move-wide/from16 v20, v5

    :cond_1f
    sub-long v5, v3, v20

    iget v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    invoke-static {v9, v5, v6}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(FJ)J

    move-result-wide v5

    add-long/2addr v5, v7

    goto :goto_10

    :cond_20
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-nez v5, :cond_22

    iget-wide v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    cmp-long v5, v5, v20

    if-eqz v5, :cond_21

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getSimulatedPlaybackHeadPositionAfterStop()J

    move-result-wide v5

    iget v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v7, v5, v6}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v5

    goto :goto_f

    :cond_21
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v5

    iget v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v7, v5, v6}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v5

    goto :goto_f

    :cond_22
    iget-wide v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-long/2addr v5, v3

    iget v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    invoke-static {v7, v5, v6}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(FJ)J

    move-result-wide v5

    :goto_f
    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    sub-long/2addr v5, v7

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    cmp-long v7, v7, v20

    if-eqz v7, :cond_23

    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    iget v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v9, v7, v8}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(IJ)J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_23
    :goto_10
    iget-boolean v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    if-eq v7, v12, :cond_24

    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    iput-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    :cond_24
    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    sub-long v7, v3, v7

    const-wide/32 v9, 0xf4240

    cmp-long v11, v7, v9

    if-gez v11, :cond_25

    iget-wide v14, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    iget v11, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    invoke-static {v11, v7, v8}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(FJ)J

    move-result-wide v16

    add-long v16, v16, v14

    mul-long v7, v7, v18

    div-long/2addr v7, v9

    mul-long/2addr v5, v7

    sub-long v14, v18, v7

    mul-long v14, v14, v16

    add-long/2addr v14, v5

    div-long v5, v14, v18

    :cond_25
    iget-boolean v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    if-nez v7, :cond_27

    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    cmp-long v7, v5, v7

    if-lez v7, :cond_27

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_27

    iput-boolean v13, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    sub-long v7, v5, v7

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v7

    iget v2, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    cmpl-float v9, v2, v23

    if-nez v9, :cond_26

    goto :goto_11

    :cond_26
    long-to-double v7, v7

    float-to-double v9, v2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    :goto_11
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v7

    sub-long/2addr v9, v7

    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    if-eqz v1, :cond_27

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v1, v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object v2, v1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_27

    new-instance v7, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1, v9, v10}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/tinder/StateMachine;J)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    iput-wide v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    iput-boolean v12, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    return-wide v5
.end method

.method public final getPlaybackHeadPosition()J
    .locals 12

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getSimulatedPlaybackHeadPositionAfterStop()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_9

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    int-to-long v6, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iget-boolean v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-ne v5, v4, :cond_2

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    iget-wide v10, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iput-wide v10, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    :cond_2
    iget-wide v10, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v6, v10

    :cond_3
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v10, 0x1d

    if-gt v4, v10, :cond_5

    cmp-long v4, v6, v8

    if-nez v4, :cond_4

    iget-wide v10, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    cmp-long v4, v10, v8

    if-lez v4, :cond_4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_4

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_8

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    goto :goto_1

    :cond_4
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    :cond_5
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    cmp-long v4, v2, v6

    if-lez v4, :cond_7

    iget-boolean v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset:Z

    if-eqz v4, :cond_6

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->sumRawPlaybackHeadPosition:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->sumRawPlaybackHeadPosition:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset:Z

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    :cond_7
    :goto_0
    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    :cond_8
    :goto_1
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    :cond_9
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->sumRawPlaybackHeadPosition:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getSimulatedPlaybackHeadPositionAfterStop()J
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    sub-long/2addr v0, v2

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(FJ)J

    move-result-wide v3

    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    int-to-long v5, v0

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final hasPendingData(J)Z
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getCurrentPositionUs()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    sget-object v6, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final resetSyncParams()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    return-void
.end method
