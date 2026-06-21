.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final allowedJoiningTimeMs:J

.field public clock:Landroidx/media3/common/util/SystemClock;

.field public firstFrameState:I

.field public frameReadyWithoutSurface:Z

.field public final frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field public final frameTimingEvaluator:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

.field public hasOutputSurface:Z

.field public initialPositionUs:J

.field public joiningDeadlineMs:J

.field public joiningRenderNextFrameImmediately:Z

.field public lastPresentationTimeUs:J

.field public lastReleaseRealtimeUs:J

.field public playbackSpeed:F

.field public started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    new-instance p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    sget-object p1, Landroidx/media3/common/util/SystemClock;->DEFAULT:Landroidx/media3/common/util/SystemClock;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    return-void
.end method


# virtual methods
.method public final getFrameReleaseAction(JJJJZZLandroidx/media3/extractor/mp4/BoxParser$BtrtData;)I
    .locals 26

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v4, p3

    move-object/from16 v8, p11

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v8, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    iput-wide v6, v8, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->maxBitrate:J

    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    cmp-long v3, v9, v6

    if-nez v3, :cond_0

    iput-wide v4, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    :cond_0
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    cmp-long v3, v9, v1

    const-wide/16 v11, -0x1

    const/4 v15, 0x0

    move-wide/from16 v16, v6

    const/4 v7, 0x1

    if-eqz v3, :cond_9

    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    const-wide/16 v18, 0x3e8

    iget-wide v13, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    cmp-long v6, v13, v11

    if-eqz v6, :cond_1

    iput-wide v13, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iget-wide v13, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iput-wide v13, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    :cond_1
    iget-wide v13, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v20, 0x1

    add-long v13, v13, v20

    iput-wide v13, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-object v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    mul-long v13, v1, v18

    move-wide/from16 v22, v11

    iget-object v11, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v11, v13, v14}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    iget-object v11, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v11}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v11

    if-eqz v11, :cond_3

    iput-boolean v15, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    :cond_2
    const-wide/16 v24, 0x0

    goto :goto_2

    :cond_3
    iget-wide v11, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    cmp-long v11, v11, v16

    if-eqz v11, :cond_2

    iget-boolean v11, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v11, :cond_5

    iget-object v11, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    const-wide/16 v24, 0x0

    iget-wide v9, v11, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    cmp-long v12, v9, v24

    if-nez v12, :cond_4

    move v9, v15

    goto :goto_0

    :cond_4
    iget-object v11, v11, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    sub-long v9, v9, v20

    const-wide/16 v20, 0xf

    rem-long v9, v9, v20

    long-to-int v9, v9

    aget-boolean v9, v11, v9

    :goto_0
    if-eqz v9, :cond_6

    goto :goto_1

    :cond_5
    const-wide/16 v24, 0x0

    :goto_1
    iget-object v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v9}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->reset()V

    iget-object v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v10, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    invoke-virtual {v9, v10, v11}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    :cond_6
    iput-boolean v7, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    iget-object v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v9, v13, v14}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    :goto_2
    iget-boolean v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v9, :cond_7

    iget-object v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v9}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-object v10, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-object v10, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-object v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-boolean v15, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    :cond_7
    iput-wide v13, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    iget-object v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v9}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v15

    goto :goto_3

    :cond_8
    iget v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    add-int/2addr v9, v7

    :goto_3
    iput v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    iput-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    goto :goto_4

    :cond_9
    move-wide/from16 v22, v11

    const-wide/16 v18, 0x3e8

    const-wide/16 v24, 0x0

    :goto_4
    sub-long/2addr v1, v4

    long-to-double v1, v1

    iget v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    float-to-double v9, v3

    div-double/2addr v1, v9

    double-to-long v1, v1

    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v3, :cond_a

    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v9

    sub-long v9, v9, p5

    sub-long/2addr v1, v9

    :cond_a
    move-wide v2, v1

    iput-wide v2, v8, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    const/4 v9, 0x3

    if-eqz p9, :cond_b

    if-nez p10, :cond_b

    :goto_5
    move/from16 p1, v9

    goto/16 :goto_f

    :cond_b
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->hasOutputSurface:Z

    if-nez v1, :cond_d

    iput-boolean v7, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    const/4 v7, 0x1

    move/from16 v6, p10

    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldIgnoreFrame(JJZZ)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_e

    :cond_c
    iget-boolean v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v0, :cond_25

    iget-wide v0, v8, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    goto :goto_5

    :cond_d
    iget-wide v4, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v1, v4, v16

    const-wide/16 v10, -0x7530

    const/4 v12, 0x2

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    if-nez v1, :cond_f

    :cond_e
    move v1, v15

    goto :goto_7

    :cond_f
    iget v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    if-eqz v1, :cond_13

    if-eq v1, v7, :cond_10

    if-eq v1, v12, :cond_12

    if-ne v1, v9, :cond_11

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iget-wide v13, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    sub-long/2addr v4, v13

    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v1, :cond_e

    cmp-long v1, v2, v10

    if-gez v1, :cond_e

    const-wide/32 v1, 0x186a0

    cmp-long v1, v4, v1

    if-lez v1, :cond_e

    :cond_10
    :goto_6
    move v1, v7

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    cmp-long v1, p3, p7

    if-ltz v1, :cond_e

    goto :goto_6

    :cond_13
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    :goto_7
    if-eqz v1, :cond_14

    return v15

    :cond_14
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v1, :cond_25

    iget-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    cmp-long v1, p3, v1

    if-nez v1, :cond_15

    goto/16 :goto_10

    :cond_15
    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iget-wide v4, v8, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    mul-long v4, v4, v18

    add-long/2addr v4, v1

    iget-wide v13, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    cmp-long v6, v13, v22

    if-eqz v6, :cond_19

    iget-object v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    iget-object v6, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    iget-object v13, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v13}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v13

    if-eqz v13, :cond_17

    iget-object v6, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v13, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    cmp-long v20, v13, v24

    move/from16 p1, v9

    move-wide/from16 p5, v10

    if-nez v20, :cond_16

    move-wide/from16 v9, v24

    goto :goto_8

    :cond_16
    iget-wide v9, v6, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    div-long/2addr v9, v13

    goto :goto_8

    :cond_17
    move/from16 p1, v9

    move-wide/from16 p5, v10

    move-wide/from16 v9, v16

    :goto_8
    iget-wide v13, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    move/from16 p2, v12

    move-wide/from16 v20, v13

    iget-wide v12, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    move v11, v7

    iget-wide v7, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    sub-long/2addr v12, v7

    mul-long/2addr v12, v9

    long-to-float v6, v12

    iget v7, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v6, v7

    float-to-long v6, v6

    add-long v13, v20, v6

    sub-long v6, v4, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x1312d00

    cmp-long v6, v6, v8

    if-gtz v6, :cond_18

    move-wide v4, v13

    goto :goto_9

    :cond_18
    move-wide/from16 v6, v24

    iput-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    move-wide/from16 v6, v22

    iput-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iput-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    goto :goto_9

    :cond_19
    move/from16 p1, v9

    move-wide/from16 p5, v10

    move/from16 p2, v12

    move v11, v7

    :goto_9
    iget-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    iput-wide v4, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iget-object v6, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v6, :cond_1e

    iget-wide v7, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    cmp-long v7, v7, v16

    if-nez v7, :cond_1a

    goto :goto_c

    :cond_1a
    iget-wide v6, v6, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    cmp-long v8, v6, v16

    if-nez v8, :cond_1b

    goto :goto_c

    :cond_1b
    iget-wide v8, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    sub-long v12, v4, v6

    div-long/2addr v12, v8

    mul-long/2addr v12, v8

    add-long/2addr v12, v6

    cmp-long v6, v4, v12

    if-gtz v6, :cond_1c

    sub-long v6, v12, v8

    goto :goto_a

    :cond_1c
    add-long/2addr v8, v12

    move-wide v6, v12

    move-wide v12, v8

    :goto_a
    sub-long v8, v12, v4

    sub-long/2addr v4, v6

    cmp-long v4, v8, v4

    if-gez v4, :cond_1d

    goto :goto_b

    :cond_1d
    move-wide v12, v6

    :goto_b
    iget-wide v3, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    sub-long v4, v12, v3

    :cond_1e
    :goto_c
    move-object/from16 v8, p11

    iput-wide v4, v8, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->maxBitrate:J

    sub-long/2addr v4, v1

    div-long v1, v4, v18

    iput-wide v1, v8, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v3, v3, v16

    if-eqz v3, :cond_1f

    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    if-nez v3, :cond_1f

    move v6, v11

    goto :goto_d

    :cond_1f
    move v6, v15

    :goto_d
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    move-wide/from16 v3, p3

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldIgnoreFrame(JJZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_e
    const/4 v0, 0x4

    return v0

    :cond_20
    iget-wide v0, v8, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    cmp-long v2, v0, p5

    if-gez v2, :cond_21

    if-nez p10, :cond_21

    move v15, v11

    :cond_21
    if-eqz v15, :cond_23

    if-eqz v6, :cond_22

    :goto_f
    return p1

    :cond_22
    return p2

    :cond_23
    const-wide/32 v2, 0xc350

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    goto :goto_10

    :cond_24
    return v11

    :cond_25
    :goto_10
    const/4 v0, 0x5

    return v0
.end method

.method public final isReady(Z)Z
    .locals 8

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->hasOutputSurface:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    if-eqz p1, :cond_1

    :cond_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return v0

    :cond_1
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long p1, v3, v1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    return v0

    :cond_3
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return v3
.end method

.method public final join(Z)V
    .locals 4

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    return-void
.end method

.method public final lowerFirstFrameState(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    return-void
.end method

.method public final onStarted()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v3, 0x0

    invoke-static {v3}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->this$0:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->access$000(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public final onStopped()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method
