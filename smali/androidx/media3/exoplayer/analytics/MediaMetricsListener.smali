.class public final Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public activeSessionId:Ljava/lang/String;

.field public audioUnderruns:I

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final bandwidthBytes:Ljava/util/HashMap;

.field public final bandwidthTimeMs:Ljava/util/HashMap;

.field public final context:Landroid/content/Context;

.field public currentAudioFormat:Landroidx/media3/common/Format;

.field public currentNetworkType:I

.field public currentPlaybackState:I

.field public currentTextFormat:Landroidx/media3/common/Format;

.field public currentVideoFormat:Landroidx/media3/common/Format;

.field public discontinuityReason:I

.field public droppedFrames:I

.field public hasFatalError:Z

.field public ioErrorType:I

.field public isSeeking:Z

.field public metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public pendingAudioFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public pendingPlayerError:Landroidx/media3/common/PlaybackException;

.field public pendingTextFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public pendingVideoFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public final playbackSession:Landroid/media/metrics/PlaybackSession;

.field public playedFrames:I

.field public reportedEventsForCurrentSession:Z

.field public final sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

.field public final startTimeMs:J

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Landroidx/media3/common/util/Log;->get()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->period:Landroidx/media3/common/Timeline$Period;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentNetworkType:I

    new-instance p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iput-object p0, p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    return-void
.end method


# virtual methods
.method public final canReportPendingFormatUpdate(Landroidx/sqlite/db/SimpleSQLiteQuery;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final finishCurrentSession()V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v0

    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v3, 0xd

    invoke-direct {v2, v3, p0, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    return-void
.end method

.method public final maybeUpdateTimelineMetadata(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget p2, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)V

    iget-object p1, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    const/4 p2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {v2, p1}, Landroidx/media3/common/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, p2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-wide v4, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v4, v6

    if-eqz p1, :cond_6

    iget-boolean p1, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez p1, :cond_6

    iget-boolean p1, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_6

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-nez p1, :cond_6

    iget-wide v4, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move p2, v3

    :goto_2
    invoke-virtual {v0, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    return-void
.end method

.method public final onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->finishCurrentSession()V

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final reportTrackChangeEvent(IJLandroidx/media3/common/Format;)V
    .locals 4

    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_a

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object v1, p4, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_0
    iget-object v1, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_1
    iget-object v1, p4, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_2
    iget v1, p4, Landroidx/media3/common/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_3
    iget v1, p4, Landroidx/media3/common/Format;->width:I

    if-eq v1, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4
    iget v1, p4, Landroidx/media3/common/Format;->height:I

    if-eq v1, v2, :cond_5

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_5
    iget v1, p4, Landroidx/media3/common/Format;->channelCount:I

    if-eq v1, v2, :cond_6

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_6
    iget v1, p4, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v1, v2, :cond_7

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7
    iget-object v1, p4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const-string v3, "-"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, p2

    array-length v2, v1

    if-lt v2, v0, :cond_8

    aget-object v0, v1, p3

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_9

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_9
    iget p2, p4, Landroidx/media3/common/Format;->frameRate:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_b

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_1

    :cond_a
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_b
    :goto_1
    iput-boolean p3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    new-instance p2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 p3, 0xa

    invoke-direct {p2, p3, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
