.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public changeFrameRateStrategy:I

.field public final displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

.field public formatFrameRate:F

.field public frameIndex:J

.field public final frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

.field public lastAdjustedFrameIndex:J

.field public lastAdjustedReleaseTimeNs:J

.field public pendingLastAdjustedFrameIndex:J

.field public pendingLastAdjustedReleaseTimeNs:J

.field public playbackSpeed:F

.field public started:Z

.field public surface:Landroid/view/Surface;

.field public surfaceMediaFrameRate:F

.field public surfacePlaybackFrameRate:F

.field public vsyncDurationNs:J

.field public vsyncOffsetNs:J

.field public final vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    new-instance v1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v3, "display"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_0

    new-instance v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    invoke-direct {v3, p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/hardware/display/DisplayManager;)V

    :goto_0
    iput-object v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v3, :cond_2

    sget-object v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->INSTANCE:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    return-void
.end method

.method public static access$000(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    return-void

    :cond_0
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    return-void
.end method


# virtual methods
.method public final clearSurfaceFrameRate()V
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v0, v2, p0}, Landroid/view/Surface;->setFrameRate(FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "VideoFrameReleaseHelper"

    const-string v1, "Failed to call Surface.setFrameRate"

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateSurfaceMediaFrameRate()V
    .locals 9

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    iget-object v2, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v4, v2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v6, v2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    div-long/2addr v6, v4

    :goto_0
    long-to-double v4, v6

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v4

    double-to-float v2, v6

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    :goto_1
    iget v4, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v5, v2, v4

    if-nez v5, :cond_4

    goto :goto_5

    :cond_4
    cmpl-float v5, v2, v3

    if-eqz v5, :cond_7

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_7

    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v0, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    goto :goto_2

    :cond_5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-wide v3, 0x12a05f200L

    cmp-long v0, v0, v3

    if-ltz v0, :cond_6

    const v0, 0x3ca3d70a    # 0.02f

    goto :goto_3

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_9

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    iget v0, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    if-lt v0, v1, :cond_9

    :goto_4
    iput v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    :cond_9
    :goto_5
    return-void
.end method

.method public final updateSurfacePlaybackFrameRate(Z)V
    .locals 4

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    mul-float/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez p1, :cond_2

    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    cmpl-float p0, v1, v2

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    :goto_1
    :try_start_0
    invoke-virtual {v0, v1, p0}, Landroid/view/Surface;->setFrameRate(FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Failed to call Surface.setFrameRate"

    invoke-static {p1, v0, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
