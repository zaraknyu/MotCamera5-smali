.class public final synthetic Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/work/multiprocess/RemoteDispatcher;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Lambda;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget v1, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v1, v0, p0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Lambda;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    iget-object v3, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    if-eqz v3, :cond_0

    sget-object v4, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-virtual {v3, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    new-instance v2, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1, p0}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    check-cast p1, Landroidx/work/multiprocess/IListenableWorkerImpl;

    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->workerParameters:Landroidx/work/WorkerParameters;

    invoke-direct {v1, v0, p0}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;)V

    invoke-static {v1}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    const-string v0, "marshall(remoteWorkRequest)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/multiprocess/IListenableWorkerImpl$Stub$Proxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    sget-object v1, Landroidx/work/multiprocess/IListenableWorkerImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p1, Landroidx/work/multiprocess/IListenableWorkerImpl$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    .line 271
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    iget-object v4, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    .line 273
    invoke-virtual {v4, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getSessionForMediaPeriodId(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v1, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 274
    iget p0, p0, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    :goto_0
    return-void

    .line 275
    :cond_1
    iput-object v2, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void

    .line 276
    :cond_2
    iput-object v2, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void

    .line 277
    :cond_3
    iput-object v2, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method

.method public invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v0, v0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Player;

    move-object/from16 v3, p1

    check-cast v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 1
    iget-object v2, v2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    .line 2
    new-instance v4, Landroid/util/SparseArray;

    .line 3
    iget-object v5, v1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 5
    invoke-direct {v4, v6}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    .line 6
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 7
    invoke-virtual {v1, v7}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v8

    .line 8
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {v4, v8, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v2, v1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 13
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_31

    :cond_1
    move v2, v6

    .line 14
    :goto_1
    iget-object v5, v1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    const/4 v7, 0x1

    const/16 v8, 0xb

    if-ge v2, v5, :cond_d

    .line 16
    invoke-virtual {v1, v2}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v5

    .line 17
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 18
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_6

    .line 19
    iget-object v10, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 20
    monitor-enter v10

    .line 21
    :try_start_0
    iget-object v5, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v5, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    .line 24
    iget-object v7, v9, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iput-object v7, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    .line 25
    iget-object v7, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 26
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 28
    iget-object v11, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v8, v5, v11}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->tryResolvingToNewTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 29
    invoke-virtual {v8, v9}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 30
    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 31
    iget-boolean v11, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    if-eqz v11, :cond_2

    .line 32
    iget-object v11, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    .line 33
    iget-object v12, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 34
    invoke-virtual {v10, v8}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 35
    :cond_4
    iget-object v11, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 36
    iget-object v8, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    .line 37
    invoke-virtual {v11, v9, v8}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_2

    .line 38
    :cond_5
    invoke-virtual {v10, v9}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v10

    goto :goto_9

    :goto_4
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    if-ne v5, v8, :cond_c

    .line 40
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget v8, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->discontinuityReason:I

    .line 41
    monitor-enter v5

    .line 42
    :try_start_2
    iget-object v10, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 43
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    move v7, v6

    .line 44
    :goto_5
    iget-object v8, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 45
    :cond_8
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 46
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 47
    invoke-virtual {v10, v9}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 48
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 49
    iget-boolean v11, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    if-eqz v11, :cond_8

    .line 50
    iget-object v11, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    .line 51
    iget-object v12, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v7, :cond_9

    if-eqz v11, :cond_9

    .line 52
    iget-boolean v12, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_9
    :goto_7
    if-eqz v11, :cond_a

    .line 53
    invoke-virtual {v5, v10}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 54
    :cond_a
    iget-object v11, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 55
    iget-object v10, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    .line 56
    invoke-virtual {v11, v9, v10}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_6

    .line 57
    :cond_b
    invoke-virtual {v5, v9}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    monitor-exit v5

    goto :goto_9

    :goto_8
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 59
    :cond_c
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-virtual {v5, v9}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 60
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 61
    iget-object v2, v1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 62
    invoke-virtual {v2, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 63
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v5, :cond_e

    .line 66
    iget-object v5, v2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateTimelineMetadata(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 67
    :cond_e
    iget-object v2, v1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x2

    .line 68
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 69
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v2, :cond_16

    .line 70
    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v2

    .line 71
    iget-object v2, v2, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 72
    invoke-virtual {v2, v6}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object v2

    .line 73
    :goto_a
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Itr;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Itr;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/common/Tracks$Group;

    move v15, v6

    .line 74
    :goto_b
    iget v8, v14, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v15, v8, :cond_10

    .line 75
    iget-object v8, v14, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    aget-boolean v8, v8, v15

    if-eqz v8, :cond_f

    .line 76
    iget-object v8, v14, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 77
    iget-object v8, v8, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 78
    aget-object v8, v8, v15

    .line 79
    iget-object v8, v8, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz v8, :cond_f

    goto :goto_c

    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_10
    const/16 v8, 0xb

    goto :goto_a

    :cond_11
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_16

    .line 80
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    move v14, v6

    .line 81
    :goto_d
    iget v15, v8, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v14, v15, :cond_15

    .line 82
    iget-object v15, v8, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    aget-object v15, v15, v14

    .line 83
    iget-object v15, v15, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 84
    sget-object v11, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v15, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v8, 0x3

    goto :goto_e

    .line 85
    :cond_12
    sget-object v11, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v15, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    move v8, v5

    goto :goto_e

    .line 86
    :cond_13
    sget-object v11, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v15, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v8, 0x6

    goto :goto_e

    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_15
    move v8, v7

    .line 87
    :goto_e
    invoke-virtual {v2, v8}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_16
    const/16 v2, 0x3f3

    .line 88
    iget-object v8, v1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 89
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 90
    iget v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    add-int/2addr v2, v7

    iput v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    .line 91
    :cond_17
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingPlayerError:Landroidx/media3/common/PlaybackException;

    const/4 v8, 0x5

    const/4 v5, 0x4

    if-nez v2, :cond_18

    move v13, v7

    const/16 v8, 0xd

    const/4 v15, 0x6

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x9

    goto/16 :goto_1f

    .line 92
    :cond_18
    iget v14, v2, Landroidx/media3/common/PlaybackException;->errorCode:I

    .line 93
    iget-object v15, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    iget v12, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->ioErrorType:I

    if-ne v12, v5, :cond_19

    move v12, v7

    goto :goto_f

    :cond_19
    move v12, v6

    :goto_f
    const/16 v5, 0x3e9

    if-ne v14, v5, :cond_1a

    .line 94
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    invoke-direct {v5, v12, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_10
    const/16 v8, 0xd

    const/4 v15, 0x6

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x9

    goto/16 :goto_1e

    .line 95
    :cond_1a
    instance-of v5, v2, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v5, :cond_1c

    .line 96
    move-object v5, v2

    check-cast v5, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 97
    iget v13, v5, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v13, v7, :cond_1b

    move v13, v7

    goto :goto_11

    :cond_1b
    move v13, v6

    .line 98
    :goto_11
    iget v5, v5, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    goto :goto_12

    :cond_1c
    move v5, v6

    move v13, v5

    .line 99
    :goto_12
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 100
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    instance-of v11, v7, Ljava/io/IOException;

    const/16 v19, 0x19

    const/16 v20, 0x1a

    const/16 v6, 0x17

    if-eqz v11, :cond_31

    .line 102
    instance-of v5, v7, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v5, :cond_1d

    .line 103
    check-cast v7, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v5, v7, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 104
    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v6, v8, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    move-object v5, v6

    goto :goto_10

    .line 105
    :cond_1d
    instance-of v5, v7, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    if-nez v5, :cond_1e

    instance-of v5, v7, Landroidx/media3/common/ParserException;

    if-eqz v5, :cond_1f

    :cond_1e
    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v11, 0x0

    const/4 v13, 0x7

    const/4 v15, 0x6

    goto/16 :goto_1a

    .line 106
    :cond_1f
    instance-of v5, v7, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-nez v5, :cond_20

    instance-of v11, v7, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    if-eqz v11, :cond_21

    :cond_20
    const/16 v6, 0x9

    const/4 v11, 0x0

    goto/16 :goto_16

    :cond_21
    const/16 v5, 0x3ea

    if-ne v14, v5, :cond_22

    .line 107
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_10

    .line 108
    :cond_22
    instance-of v5, v7, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    if-eqz v5, :cond_29

    .line 109
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 110
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    instance-of v7, v5, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v7, :cond_23

    .line 112
    check-cast v5, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v5}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {v5}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v5

    .line 114
    invoke-static {v5}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x1b

    goto :goto_13

    :pswitch_0
    move/from16 v6, v20

    goto :goto_13

    :pswitch_1
    move/from16 v6, v19

    goto :goto_13

    :pswitch_2
    const/16 v6, 0x1c

    goto :goto_13

    :pswitch_3
    const/16 v6, 0x18

    .line 115
    :goto_13
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v7, v6, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    move-object v5, v7

    goto/16 :goto_10

    .line 116
    :cond_23
    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v7, v6, :cond_24

    instance-of v7, v5, Landroid/media/MediaDrmResetException;

    if-eqz v7, :cond_24

    .line 117
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v7, 0x0

    const/16 v11, 0x1b

    invoke-direct {v5, v11, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_10

    :cond_24
    const/4 v7, 0x0

    .line 118
    instance-of v11, v5, Landroid/media/NotProvisionedException;

    if-eqz v11, :cond_25

    .line 119
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x18

    invoke-direct {v5, v12, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_10

    .line 120
    :cond_25
    instance-of v11, v5, Landroid/media/DeniedByServerException;

    if-eqz v11, :cond_26

    .line 121
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x1d

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_10

    .line 122
    :cond_26
    instance-of v11, v5, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    if-eqz v11, :cond_27

    .line 123
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_10

    .line 124
    :cond_27
    instance-of v5, v5, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v5, :cond_28

    .line 125
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x1c

    invoke-direct {v5, v14, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_10

    .line 126
    :cond_28
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_10

    .line 127
    :cond_29
    instance-of v5, v7, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    if-eqz v5, :cond_2b

    .line 128
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_2b

    .line 129
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 132
    instance-of v6, v5, Landroid/system/ErrnoException;

    if-eqz v6, :cond_2a

    check-cast v5, Landroid/system/ErrnoException;

    iget v5, v5, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EACCES:I

    if-ne v5, v6, :cond_2a

    .line 133
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x20

    const/4 v11, 0x0

    invoke-direct {v5, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_10

    :cond_2a
    const/4 v11, 0x0

    .line 134
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x1f

    invoke-direct {v5, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_10

    :cond_2b
    const/4 v11, 0x0

    .line 135
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x9

    invoke-direct {v5, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_14
    move/from16 v18, v6

    const/16 v8, 0xd

    const/4 v15, 0x6

    :goto_15
    const/16 v16, 0x8

    const/16 v17, 0x7

    goto/16 :goto_1e

    .line 136
    :goto_16
    invoke-static {v15}, Landroidx/media3/common/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/media3/common/util/NetworkTypeObserver;->getNetworkType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2c

    .line 137
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v7, 0x3

    invoke-direct {v5, v7, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_14

    .line 138
    :cond_2c
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    .line 139
    instance-of v13, v12, Ljava/net/UnknownHostException;

    if-eqz v13, :cond_2d

    .line 140
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v15, 0x6

    invoke-direct {v5, v15, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    move/from16 v18, v6

    const/16 v8, 0xd

    goto :goto_15

    :cond_2d
    const/4 v15, 0x6

    .line 141
    instance-of v12, v12, Ljava/net/SocketTimeoutException;

    if-eqz v12, :cond_2e

    .line 142
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x7

    invoke-direct {v5, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_17
    move/from16 v18, v6

    move/from16 v17, v13

    const/16 v8, 0xd

    const/16 v16, 0x8

    goto/16 :goto_1e

    :cond_2e
    const/4 v13, 0x7

    if-eqz v5, :cond_2f

    .line 143
    check-cast v7, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget v5, v7, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2f

    .line 144
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v7, 0x4

    invoke-direct {v5, v7, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_17

    .line 145
    :cond_2f
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x8

    invoke-direct {v5, v7, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_18
    move/from16 v18, v6

    move/from16 v16, v7

    move/from16 v17, v13

    :goto_19
    const/16 v8, 0xd

    goto/16 :goto_1e

    .line 146
    :goto_1a
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    if-eqz v12, :cond_30

    const/16 v12, 0xa

    goto :goto_1b

    :cond_30
    const/16 v12, 0xb

    .line 147
    :goto_1b
    invoke-direct {v5, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_18

    :cond_31
    const/4 v8, 0x0

    const/16 v11, 0x1b

    const/16 v12, 0x18

    const/16 v14, 0x1c

    const/4 v15, 0x6

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x9

    if-eqz v13, :cond_33

    if-eqz v5, :cond_32

    const/4 v11, 0x1

    if-ne v5, v11, :cond_33

    .line 148
    :cond_32
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x23

    invoke-direct {v5, v6, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_19

    :cond_33
    if-eqz v13, :cond_34

    const/4 v11, 0x3

    if-ne v5, v11, :cond_34

    .line 149
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0xf

    invoke-direct {v5, v6, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_19

    :cond_34
    if-eqz v13, :cond_35

    const/4 v11, 0x2

    if-ne v5, v11, :cond_35

    .line 150
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v5, v6, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_19

    .line 151
    :cond_35
    instance-of v5, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v5, :cond_36

    .line 152
    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v5, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 153
    invoke-static {v5}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v5

    .line 154
    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0xd

    invoke-direct {v6, v8, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_1c
    move-object v5, v6

    goto/16 :goto_1e

    :cond_36
    const/16 v8, 0xd

    .line 155
    instance-of v5, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    const/16 v6, 0xe

    if-eqz v5, :cond_37

    .line 156
    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    iget v5, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    .line 157
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v7, v6, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    move-object v5, v7

    goto :goto_1e

    .line 158
    :cond_37
    instance-of v5, v7, Ljava/lang/OutOfMemoryError;

    if-eqz v5, :cond_38

    .line 159
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_1e

    .line 160
    :cond_38
    instance-of v5, v7, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    if-eqz v5, :cond_39

    .line 161
    check-cast v7, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v5, v7, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->audioTrackState:I

    .line 162
    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x11

    invoke-direct {v6, v7, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_1c

    .line 163
    :cond_39
    instance-of v5, v7, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    if-eqz v5, :cond_3a

    .line 164
    check-cast v7, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    iget v5, v7, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->errorCode:I

    .line 165
    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x12

    invoke-direct {v6, v7, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_1c

    .line 166
    :cond_3a
    instance-of v5, v7, Landroid/media/MediaCodec$CryptoException;

    if-eqz v5, :cond_3b

    .line 167
    check-cast v7, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v7}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    .line 168
    invoke-static {v5}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    const/16 v14, 0x1b

    goto :goto_1d

    :pswitch_4
    move/from16 v14, v20

    goto :goto_1d

    :pswitch_5
    move/from16 v14, v19

    goto :goto_1d

    :pswitch_6
    move v14, v12

    .line 169
    :goto_1d
    :pswitch_7
    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v6, v14, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_1c

    .line 170
    :cond_3b
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x16

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 171
    :goto_1e
    new-instance v6, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v6}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v11, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v11, v9, v11

    .line 172
    invoke-virtual {v6, v11, v12}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    iget v7, v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    .line 173
    invoke-virtual {v6, v7}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    iget v5, v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    .line 174
    invoke-virtual {v6, v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v5

    .line 175
    invoke-virtual {v5, v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v2

    .line 177
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v7, 0xc

    invoke-direct {v6, v7, v3, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v13, 0x1

    .line 178
    iput-boolean v13, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    const/4 v2, 0x0

    .line 179
    iput-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingPlayerError:Landroidx/media3/common/PlaybackException;

    .line 180
    :goto_1f
    iget-object v2, v1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x2

    .line 181
    invoke-virtual {v2, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 182
    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v11}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v5

    .line 184
    invoke-virtual {v2, v13}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v6

    const/4 v7, 0x3

    .line 185
    invoke-virtual {v2, v7}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v2

    if-nez v5, :cond_3c

    if-nez v6, :cond_3c

    if-eqz v2, :cond_42

    :cond_3c
    if-nez v5, :cond_3e

    .line 186
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    goto :goto_20

    .line 187
    :cond_3d
    iput-object v7, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    const/4 v13, 0x1

    .line 188
    invoke-virtual {v3, v13, v9, v10, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;)V

    goto :goto_20

    :cond_3e
    const/4 v7, 0x0

    :goto_20
    if-nez v6, :cond_40

    .line 189
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    goto :goto_21

    .line 190
    :cond_3f
    iput-object v7, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    const/4 v11, 0x0

    .line 191
    invoke-virtual {v3, v11, v9, v10, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;)V

    :cond_40
    :goto_21
    if-nez v2, :cond_42

    .line 192
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_22

    .line 193
    :cond_41
    iput-object v7, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    const/4 v11, 0x2

    .line 194
    invoke-virtual {v3, v11, v9, v10, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;)V

    .line 195
    :cond_42
    :goto_22
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Landroidx/sqlite/db/SimpleSQLiteQuery;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v2, v2, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Format;

    iget v5, v2, Landroidx/media3/common/Format;->height:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_44

    .line 196
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    :goto_23
    const/4 v2, 0x0

    goto :goto_24

    .line 197
    :cond_43
    iput-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    const/4 v13, 0x1

    .line 198
    invoke-virtual {v3, v13, v9, v10, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;)V

    goto :goto_23

    .line 199
    :goto_24
    iput-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 200
    :cond_44
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Landroidx/sqlite/db/SimpleSQLiteQuery;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 201
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v2, v2, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Format;

    .line 202
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    :goto_25
    const/4 v2, 0x0

    goto :goto_26

    .line 203
    :cond_45
    iput-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    const/4 v7, 0x0

    .line 204
    invoke-virtual {v3, v7, v9, v10, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;)V

    goto :goto_25

    .line 205
    :goto_26
    iput-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 206
    :cond_46
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Landroidx/sqlite/db/SimpleSQLiteQuery;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 207
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v2, v2, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Format;

    .line 208
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    :goto_27
    const/4 v2, 0x0

    goto :goto_28

    .line 209
    :cond_47
    iput-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    const/4 v11, 0x2

    .line 210
    invoke-virtual {v3, v11, v9, v10, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;)V

    goto :goto_27

    .line 211
    :goto_28
    iput-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 212
    :cond_48
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    .line 213
    invoke-static {v2}, Landroidx/media3/common/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/util/NetworkTypeObserver;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :pswitch_8
    const/4 v14, 0x1

    goto :goto_29

    :pswitch_9
    move/from16 v14, v17

    goto :goto_29

    :pswitch_a
    move/from16 v14, v16

    goto :goto_29

    :pswitch_b
    const/4 v14, 0x3

    goto :goto_29

    :pswitch_c
    move v14, v15

    goto :goto_29

    :pswitch_d
    const/4 v14, 0x5

    goto :goto_29

    :pswitch_e
    const/4 v14, 0x4

    goto :goto_29

    :pswitch_f
    const/4 v14, 0x2

    goto :goto_29

    :pswitch_10
    move/from16 v14, v18

    goto :goto_29

    :pswitch_11
    const/4 v14, 0x0

    .line 214
    :goto_29
    iget v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentNetworkType:I

    if-eq v14, v2, :cond_49

    .line 215
    iput v14, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentNetworkType:I

    .line 216
    new-instance v2, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v2}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 217
    invoke-virtual {v2, v14}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    iget-wide v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v5, v9, v5

    .line 218
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v2

    .line 220
    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v7, 0xb

    invoke-direct {v6, v7, v3, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 221
    :cond_49
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v2

    const/4 v11, 0x2

    const/4 v7, 0x0

    if-eq v2, v11, :cond_4a

    .line 222
    iput-boolean v7, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->isSeeking:Z

    .line 223
    :cond_4a
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 224
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v2, :cond_4b

    .line 225
    iput-boolean v7, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->hasFatalError:Z

    const/16 v5, 0xa

    goto :goto_2a

    .line 226
    :cond_4b
    iget-object v2, v1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    const/16 v5, 0xa

    .line 227
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v13, 0x1

    .line 228
    iput-boolean v13, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->hasFatalError:Z

    .line 229
    :cond_4c
    :goto_2a
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v2

    .line 230
    iget-boolean v6, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->isSeeking:Z

    if-eqz v6, :cond_4d

    const/4 v8, 0x5

    :goto_2b
    const/4 v13, 0x1

    goto/16 :goto_2d

    .line 231
    :cond_4d
    iget-boolean v6, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->hasFatalError:Z

    if-eqz v6, :cond_4e

    goto :goto_2b

    :cond_4e
    const/4 v7, 0x4

    if-ne v2, v7, :cond_4f

    const/16 v8, 0xb

    goto :goto_2b

    :cond_4f
    const/16 v8, 0xc

    const/4 v11, 0x2

    if-ne v2, v11, :cond_54

    .line 232
    iget v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz v2, :cond_53

    if-eq v2, v11, :cond_53

    if-ne v2, v8, :cond_50

    goto :goto_2c

    .line 233
    :cond_50
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_51

    move/from16 v8, v17

    goto :goto_2b

    .line 234
    :cond_51
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 235
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-eqz v0, :cond_52

    move v8, v5

    goto :goto_2b

    :cond_52
    move v8, v15

    goto :goto_2b

    :cond_53
    :goto_2c
    move v8, v11

    goto :goto_2b

    :cond_54
    const/4 v11, 0x3

    if-ne v2, v11, :cond_56

    .line 236
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_55

    move v8, v7

    goto :goto_2b

    .line 237
    :cond_55
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 238
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-eqz v0, :cond_53

    move/from16 v8, v18

    goto :goto_2b

    :cond_56
    const/4 v13, 0x1

    if-ne v2, v13, :cond_57

    .line 239
    iget v0, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz v0, :cond_57

    goto :goto_2d

    .line 240
    :cond_57
    iget v8, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 241
    :goto_2d
    iget v0, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eq v0, v8, :cond_58

    .line 242
    iput v8, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 243
    iput-boolean v13, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 244
    new-instance v0, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 245
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v0

    iget-wide v5, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long/2addr v9, v5

    .line 246
    invoke-virtual {v0, v9, v10}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v0

    .line 248
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v6, 0xe

    invoke-direct {v5, v6, v3, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    :cond_58
    iget-object v0, v1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x404

    .line 250
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 251
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 252
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    monitor-enter v2

    .line 255
    :try_start_4
    iget-object v1, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-eqz v1, :cond_59

    .line 256
    iget-object v3, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    goto :goto_2e

    :catchall_2
    move-exception v0

    goto :goto_30

    .line 259
    :cond_59
    :goto_2e
    iget-object v1, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 260
    :cond_5a
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 263
    iget-boolean v4, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    if-eqz v4, :cond_5a

    .line 264
    iget-object v4, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    if-eqz v4, :cond_5a

    .line 265
    iget-object v3, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    .line 266
    invoke-virtual {v4, v0, v3}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2f

    .line 267
    :cond_5b
    monitor-exit v2

    return-void

    :goto_30
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_5c
    :goto_31
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/transition/Transition;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    invoke-virtual {v0}, Landroidx/transition/Transition;->cancel()V

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->run()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/Preference;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->showResetDialog(Landroid/content/Context;)V

    return-void
.end method
