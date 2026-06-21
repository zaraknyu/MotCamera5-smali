.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->$r8$classId:I

    const/16 v2, 0x15

    const/16 v3, 0x19

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->cleanUp()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkManagerImpl;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "id.toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroidx/work/impl/utils/RawQueries;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    sget-object v4, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    invoke-static {v7, v3}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    iget-object v2, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v2, v3, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroidx/work/impl/utils/RawQueries;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v0, v0, Landroidx/work/Configuration;->clock:Landroidx/work/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Landroidx/work/impl/model/Preference;

    const-string v4, "last_cancel_all_time_ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->insertPreference(Landroidx/work/impl/model/Preference;)V

    return-void

    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0

    :pswitch_2
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    iget-object v3, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->onConstraintChanged(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    return-void

    :pswitch_3
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/background/greedy/TimeLimiter;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/StartStopToken;

    iget-object v1, v1, Landroidx/work/impl/background/greedy/TimeLimiter;->launcher:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v1, v0, v4}, Lcom/motorola/camera/CameraKpi;->stopWork(Landroidx/work/impl/StartStopToken;I)V

    return-void

    :pswitch_4
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/room/TransactionExecutor;

    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v2}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    throw v0

    :pswitch_5
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/ui/PlayerView;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Landroidx/media3/ui/PlayerView;->$r8$lambda$LV2d0rIanLI_hEb4XhvJMfhVggk(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_6
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v4, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    iget-object v0, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    :cond_5
    return-void

    :pswitch_7
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/CameraKpi;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    new-instance v4, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v0, v3}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;I)V

    const/16 v0, 0x3fb

    invoke-virtual {v1, v2, v0, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_8
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/CameraKpi;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/VideoSize;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/common/VideoSize;)V

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_9
    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/tinder/StateMachine;

    iget-object v0, v0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->listener:Landroidx/media3/exoplayer/video/VideoSink$Listener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_a
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/SeekMap;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->setSeekMap(Landroidx/media3/extractor/SeekMap;)V

    return-void

    :pswitch_b
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/Consumer;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-interface {v1, v0}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_c
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzs;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v1, v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object v2, v1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_6

    new-instance v3, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0, v7}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/tinder/StateMachine;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :pswitch_d
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/tinder/StateMachine;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v3

    new-instance v4, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, v0, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;I)V

    const/16 v0, 0x3f4

    invoke-virtual {v1, v3, v0, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_e
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/media/metrics/PlaybackStateEvent;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v1, v0}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    return-void

    :pswitch_f
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/media/metrics/PlaybackMetrics;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v1, v0}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    return-void

    :pswitch_10
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/media/metrics/PlaybackErrorEvent;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v1, v0}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void

    :pswitch_11
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/media/metrics/NetworkEvent;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v1, v0}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    return-void

    :pswitch_12
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/media/metrics/TrackChangeEvent;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v1, v0}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void

    :pswitch_13
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v1, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->targetType:I

    sub-int/2addr v1, v2

    iput v1, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v2, :cond_7

    iget v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iput v2, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    iput-boolean v6, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    :cond_7
    if-nez v1, :cond_11

    iget-object v1, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    iput v2, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide/16 v2, 0x0

    iput-wide v2, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    :cond_8
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_9

    move v3, v6

    goto :goto_6

    :cond_9
    move v3, v7

    :goto_6
    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkState(Z)V

    move v3, v7

    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget-object v4, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Timeline;

    iput-object v5, v4, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    iget-boolean v2, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_10

    iget-object v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v9, v2, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v2, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v11, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v2, v9, v11

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    move v6, v7

    :cond_c
    :goto_8
    if-eqz v6, :cond_f

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_9

    :cond_d
    iget-object v2, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v2, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v1, v3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v4, v1

    move-wide v3, v4

    goto :goto_a

    :cond_e
    :goto_9
    iget-object v1, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    move-wide v3, v1

    :cond_f
    :goto_a
    move-wide v13, v3

    move v11, v6

    goto :goto_b

    :cond_10
    move-wide v13, v3

    move v11, v7

    :goto_b
    iput-boolean v7, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    iget-object v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroidx/media3/exoplayer/PlaybackInfo;

    iget v12, v8, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v8 .. v16}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    :cond_11
    return-void

    :pswitch_14
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/SecureCamera$1;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, v1, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/NetworkTypeObserver;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    if-nez v2, :cond_13

    :catch_1
    :cond_12
    move v4, v7

    goto :goto_d

    :cond_13
    :try_start_3
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    const/16 v9, 0x9

    const/4 v10, 0x6

    const/4 v11, 0x4

    if-eqz v8, :cond_18

    if-eq v8, v6, :cond_17

    if-eq v8, v11, :cond_18

    if-eq v8, v3, :cond_18

    if-eq v8, v10, :cond_16

    if-eq v8, v9, :cond_15

    const/16 v4, 0x8

    goto :goto_d

    :cond_15
    const/4 v4, 0x7

    goto :goto_d

    :cond_16
    :pswitch_15
    move v4, v3

    goto :goto_d

    :cond_17
    :pswitch_16
    move v4, v5

    goto :goto_d

    :cond_18
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_17
    move v4, v10

    goto :goto_d

    :pswitch_18
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_12

    move v4, v9

    goto :goto_d

    :pswitch_19
    move v4, v11

    goto :goto_d

    :cond_19
    :goto_c
    move v4, v6

    :goto_d
    :pswitch_1a
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v2, v5, :cond_1a

    if-ne v4, v3, :cond_1a

    :try_start_4
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;

    invoke-direct {v2, v1}, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;)V

    iget-object v4, v1, Landroidx/media3/common/util/NetworkTypeObserver;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v4, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_e

    :catch_2
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/NetworkTypeObserver;->updateNetworkType(I)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/NetworkTypeObserver;->updateNetworkType(I)V

    :goto_e
    return-void

    :pswitch_1b
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/NetworkTypeObserver;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/camera/SecureCamera$1;

    invoke-direct {v3, v5, v1}, Lcom/motorola/camera/SecureCamera$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :pswitch_1c
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/AppFeatures;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iget-object v3, v1, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    iput-object v0, v1, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/16 v4, 0xa

    invoke-virtual {v1, v6, v4, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    invoke-virtual {v1, v5, v4, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, v3, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1b
    return-void

    :pswitch_1d
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/WakeLockManager;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sput-object v1, Landroidx/appcompat/app/ActionBar;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/WakeLockManager;->open()Z

    return-void

    :pswitch_1e
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/core/content/res/CamUtils;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroidx/core/content/res/CamUtils;->onFontRetrieved(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_1f
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/util/LongSparseArray;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/name/FqNamesUtilKt;->doTranslation(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    return-void

    :pswitch_20
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/zzm;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/zzm;->scheduleNext()V

    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/zzm;->scheduleNext()V

    throw v0

    :pswitch_21
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/ComponentActivity;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    sget v2, Landroidx/activity/ComponentActivity;->$r8$clinit:I

    iget-object v2, v1, Landroidx/activity/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v3, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v7, v0, v1}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :pswitch_22
    iget-object v1, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/Processor;

    iget-object v0, v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v2, v1, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, v1, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/ExecutionListener;

    invoke-interface {v3, v0, v7}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_10

    :cond_1c
    monitor-exit v2

    return-void

    :goto_10
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_15
        :pswitch_19
        :pswitch_19
        :pswitch_17
        :pswitch_19
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
