.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"


# instance fields
.field public final continueLoadingCheckIntervalBytes:I

.field public final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field public final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final loadableLoadErrorHandlingPolicy:Lokio/Timeout;

.field public mediaItem:Landroidx/media3/common/MediaItem;

.field public final progressiveMediaExtractorFactory:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

.field public final singleTrackFormat:Landroidx/media3/common/Format;

.field public timelineDurationUs:J

.field public timelineIsLive:Z

.field public timelineIsPlaceholder:Z

.field public timelineIsSeekable:Z

.field public transferListener:Landroidx/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;Landroidx/media3/exoplayer/drm/DrmSessionManager;Lokio/Timeout;ILandroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lokio/Timeout;

    iput p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    iput-object p7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->singleTrackFormat:Landroidx/media3/common/Format;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    return-void
.end method


# virtual methods
.method public final createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 15

    move-object/from16 v0, p1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v4, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    iget-object v5, v5, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/extractor/ExtractorsFactory;

    move-object v6, v3

    new-instance v3, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v5, v3, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    new-instance v5, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v7, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v7, v7, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    new-instance v7, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v10, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v10, v10, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7, v10, v9, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iget-wide v0, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v12

    const/4 v14, 0x0

    move-object v1, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-object v0, v6

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lokio/Timeout;

    iget v10, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    iget-object v11, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->singleTrackFormat:Landroidx/media3/common/Format;

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v14}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/core/view/MenuHostHelper;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lokio/Timeout;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/ProgressiveMediaSource;Landroidx/media3/exoplayer/upstream/DefaultAllocator;ILandroidx/media3/common/Format;JLandroidx/media3/exoplayer/util/ReleasableExecutor$1;)V

    return-object v0
.end method

.method public final declared-synchronized getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public final notifySourceInfoRefreshed()V
    .locals 6

    new-instance v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZLandroidx/media3/common/MediaItem;)V

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final onSourceInfoRefreshed(JLandroidx/media3/extractor/SeekMap;Z)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    :cond_0
    invoke-interface {p3}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result p3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iput-boolean p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public final prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public final releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 6

    check-cast p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-boolean p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    iget-object v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lcom/google/android/gms/tasks/zzad;

    if-eqz v4, :cond_0

    iget-object v5, v3, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzad;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iput-object v0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lcom/google/android/gms/tasks/zzad;

    iput-object v0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader;->downloadExecutor:Landroidx/media3/exoplayer/util/ReleasableExecutor$1;

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->cancel(Z)V

    :cond_2
    new-instance p0, Landroidx/lifecycle/LiveData$1;

    const/4 v3, 0x7

    invoke-direct {p0, v3, p1}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v1, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->val$releaseCallback:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    iget-object v1, v1, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iput-boolean v2, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->released:Z

    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final declared-synchronized updateMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
