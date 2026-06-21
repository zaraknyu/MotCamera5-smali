.class public final synthetic Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 0

    .line 2
    const/16 p1, 0xb

    iput p1, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 37

    move-object/from16 v0, p0

    iget v1, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->$r8$classId:I

    const/16 v2, 0x8

    const/16 v3, 0xa

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ActivityBase;

    iget-boolean v1, v0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    if-eqz v1, :cond_0

    iput-boolean v9, v0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ActivityBase;->onResumeTasks()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/timepicker/RadialViewGroup;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams$1()V

    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_2
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v1, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    iput-boolean v1, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    return-void

    :pswitch_3
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    return-void

    :pswitch_4
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacv;

    iput-boolean v9, v0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zacv;->continueSettlingToState(I)V

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    if-ne v2, v4, :cond_2

    iget v0, v0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_5
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void

    :pswitch_6
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    iget-object v2, v0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :goto_1
    return-void

    :pswitch_7
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :pswitch_8
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v1, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTracker:Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

    iget-object v2, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mRunnableScheduler:Landroidx/work/impl/DefaultRunnableScheduler;

    iget-wide v3, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTimeout:J

    iget-object v0, v2, Landroidx/work/impl/DefaultRunnableScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_9
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_4

    invoke-interface {v0, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    return-void

    :pswitch_a
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_b
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->updateProgress()V

    return-void

    :pswitch_c
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/ui/DefaultTimeBar;

    invoke-virtual {v0, v9}, Landroidx/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return-void

    :pswitch_d
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_5

    iget-object v2, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v3, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v2, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_7
    iput-object v7, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v7, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    return-void

    :pswitch_e
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v2, :cond_8

    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_8
    iget-wide v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v7, 0x1

    sub-long/2addr v2, v7

    iput-wide v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_9

    monitor-exit v1

    goto :goto_3

    :cond_9
    if-gez v2, :cond_a

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    :cond_a
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    monitor-exit v1

    :goto_3
    return-void

    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :pswitch_f
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_b

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Lcom/google/android/gms/tasks/zzs;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iput-boolean v8, v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->hasPendingReportedSkippedSilence:Z

    iput-wide v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    :cond_b
    return-void

    :pswitch_10
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(I)V

    const/16 v3, 0x404

    invoke-virtual {v0, v1, v3, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->release()V

    return-void

    :pswitch_11
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    :try_start_6
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverMessage(Landroidx/media3/exoplayer/PlayerMessage;)V
    :try_end_6
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_6 .. :try_end_6} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Unexpected error delivering message on external thread."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_12
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionIdState:Lcom/motorola/camera/AppFeatures;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {v0}, Landroidx/appcompat/app/ActionBar;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    iget-object v2, v1, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v1, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_13
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    iget-object v1, v0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Landroidx/compose/runtime/Latch;

    iget-boolean v1, v1, Landroidx/compose/runtime/Latch;->_isOpen:Z

    if-eqz v1, :cond_c

    iget-object v0, v0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(IZ)V

    :cond_c
    return-void

    :pswitch_14
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Latch;

    iget-object v1, v0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v0, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_15
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    iget-object v1, v0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_14

    iget-object v0, v0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->this$0:Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-virtual {v0}, Landroidx/media3/common/util/NetworkTypeObserver;->getNetworkType()I

    move-result v0

    iget-object v10, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    monitor-enter v10

    :try_start_7
    iget v1, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkType:I

    if-eqz v1, :cond_d

    iget-boolean v3, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->resetOnNetworkTypeChange:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v3, :cond_d

    monitor-exit v10

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    goto/16 :goto_8

    :cond_d
    if-ne v1, v0, :cond_e

    :try_start_8
    iget-object v1, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->countryCode:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_e

    monitor-exit v10

    goto/16 :goto_9

    :cond_e
    :try_start_9
    iput v0, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkType:I

    if-eq v0, v8, :cond_13

    if-eqz v0, :cond_13

    if-ne v0, v2, :cond_f

    goto :goto_7

    :cond_f
    iget-object v1, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->countryCode:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->context:Landroid/content/Context;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-eqz v1, :cond_10

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->countryCode:Ljava/lang/String;

    :cond_11
    invoke-virtual {v10, v0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v0

    iput-wide v0, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    iget-object v0, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v2, :cond_12

    iget-wide v2, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    move v11, v2

    goto :goto_6

    :cond_12
    move v11, v9

    :goto_6
    iget-wide v12, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v14, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    invoke-virtual/range {v10 .. v15}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    iput-wide v0, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    iput-wide v5, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iput-wide v5, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iput-wide v5, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    iget-object v0, v10, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    iput v1, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    iput v9, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    iput v9, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    monitor-exit v10

    goto :goto_9

    :cond_13
    :goto_7
    monitor-exit v10

    goto :goto_9

    :goto_8
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :cond_14
    :goto_9
    return-void

    :pswitch_16
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    const-string v1, "measureAndLayout"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_b
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1, v8}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "checkForSemanticsChanges"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_c
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkForSemanticsChanges()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iput-boolean v9, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    return-void

    :catchall_4
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_5
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :pswitch_17
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    iput-boolean v9, v0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v3, :cond_15

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->sendMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    return-void

    :cond_15
    const-string v0, "The ACTION_HOVER_EXIT event was not cleared."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_18
    const-string v1, "Invalid content capture ID"

    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui_release()Z

    move-result v3

    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    iget-object v6, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    if-nez v3, :cond_16

    goto/16 :goto_25

    :cond_16
    invoke-virtual {v6, v8}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    iget-object v3, v5, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v8, v5, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v10, v8

    sub-int/2addr v10, v4

    const/4 v15, 0x7

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move/from16 v18, v4

    if-ltz v10, :cond_1b

    move v4, v9

    const-wide/16 v19, 0x80

    :goto_a
    aget-wide v11, v8, v4

    const-wide/16 v21, 0xff

    not-long v13, v11

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    and-long v13, v13, v16

    cmp-long v13, v13, v16

    if-eqz v13, :cond_1a

    sub-int v13, v4, v10

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    move v14, v9

    :goto_b
    if-ge v14, v13, :cond_19

    and-long v23, v11, v21

    cmp-long v23, v23, v19

    if-gez v23, :cond_18

    shl-int/lit8 v23, v4, 0x3

    add-int v23, v23, v14

    move/from16 p0, v15

    aget v15, v3, v23

    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->bufferedEvents:Ljava/util/ArrayList;

    new-instance v24, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    move/from16 v30, v10

    iget-wide v9, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesSnapshotTimestampMillis:J

    sget-object v28, Landroidx/compose/ui/contentcapture/ContentCaptureEventType;->VIEW_DISAPPEAR:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    const/16 v29, 0x0

    move-wide/from16 v26, v9

    move/from16 v25, v15

    invoke-direct/range {v24 .. v29}, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;-><init>(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/room/ObservedTableVersions;)V

    move-object/from16 v9, v24

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v7, v9}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_17
    move/from16 v30, v10

    goto :goto_c

    :cond_18
    move/from16 v30, v10

    move/from16 p0, v15

    :goto_c
    shr-long/2addr v11, v2

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    move/from16 v15, p0

    move/from16 v10, v30

    const/4 v9, 0x0

    goto :goto_b

    :cond_19
    move/from16 v30, v10

    move/from16 p0, v15

    if-ne v13, v2, :cond_1c

    move/from16 v10, v30

    goto :goto_d

    :cond_1a
    move/from16 p0, v15

    :goto_d
    if-eq v4, v10, :cond_1c

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    move/from16 v15, p0

    const/4 v9, 0x0

    goto :goto_a

    :cond_1b
    move/from16 p0, v15

    const-wide/16 v19, 0x80

    const-wide/16 v21, 0xff

    :cond_1c
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->sendContentCaptureAppearEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V

    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v3

    iget-object v4, v3, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v7, v3, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_37

    const/4 v9, 0x0

    :goto_e
    aget-wide v10, v7, v9

    not-long v12, v10

    shl-long v12, v12, p0

    and-long/2addr v12, v10

    and-long v12, v12, v16

    cmp-long v12, v12, v16

    if-eqz v12, :cond_36

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v12, :cond_35

    and-long v14, v10, v21

    cmp-long v14, v14, v19

    if-gez v14, :cond_34

    shl-int/lit8 v14, v9, 0x3

    add-int/2addr v14, v13

    aget v14, v4, v14

    invoke-virtual {v5, v14}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v3, v14}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v14, :cond_1d

    iget-object v14, v14, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    goto :goto_10

    :cond_1d
    const/4 v14, 0x0

    :goto_10
    if-eqz v14, :cond_33

    move/from16 v24, v2

    iget v2, v14, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    iget-object v14, v14, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v14, v14, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    if-nez v15, :cond_27

    iget-object v15, v14, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    move-object/from16 v25, v1

    iget-object v1, v14, Landroidx/collection/MutableScatterMap;->metadata:[J

    move-object/from16 v26, v3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_26

    move-object/from16 v27, v1

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    const/4 v1, 0x0

    :goto_11
    aget-wide v6, v27, v1

    move-wide/from16 v30, v10

    not-long v10, v6

    shl-long v10, v10, p0

    and-long/2addr v10, v6

    and-long v10, v10, v16

    cmp-long v10, v10, v16

    if-eqz v10, :cond_25

    sub-int v10, v1, v3

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v10, :cond_24

    and-long v32, v6, v21

    cmp-long v32, v32, v19

    if-gez v32, :cond_22

    shl-int/lit8 v32, v1, 0x3

    add-int v32, v32, v11

    aget-object v32, v15, v32

    move-object/from16 v33, v4

    move-object/from16 v4, v32

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-wide/from16 v34, v6

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v14, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1e

    const/4 v4, 0x0

    :cond_1e
    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1f

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_13

    :cond_1f
    const/4 v4, 0x0

    :goto_13
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    if-nez v6, :cond_20

    goto :goto_14

    :cond_20
    move/from16 v32, v8

    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->newAutofillId(J)Landroid/view/autofill/AutofillId;

    move-result-object v7

    if-eqz v7, :cond_21

    iget-object v6, v6, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->mWrappedObj:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v6, v7, v4}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_21
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :cond_22
    move-object/from16 v33, v4

    move-wide/from16 v34, v6

    :cond_23
    :goto_14
    move/from16 v32, v8

    :goto_15
    shr-long v6, v34, v24

    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v32

    move-object/from16 v4, v33

    goto :goto_12

    :cond_24
    move-object/from16 v33, v4

    move/from16 v32, v8

    move/from16 v4, v24

    if-ne v10, v4, :cond_32

    goto :goto_16

    :cond_25
    move-object/from16 v33, v4

    move/from16 v32, v8

    :goto_16
    if-eq v1, v3, :cond_32

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v10, v30

    move/from16 v8, v32

    move-object/from16 v4, v33

    const/16 v24, 0x8

    goto/16 :goto_11

    :cond_26
    move-object/from16 v33, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v32, v8

    move-wide/from16 v30, v10

    goto/16 :goto_1f

    :cond_27
    move-object/from16 v25, v1

    move-object/from16 v26, v3

    move-object/from16 v33, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v32, v8

    move-wide/from16 v30, v10

    iget-object v1, v14, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v3, v14, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_32

    const/4 v6, 0x0

    :goto_17
    aget-wide v7, v3, v6

    not-long v10, v7

    shl-long v10, v10, p0

    and-long/2addr v10, v7

    and-long v10, v10, v16

    cmp-long v10, v10, v16

    if-eqz v10, :cond_31

    sub-int v10, v6, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v10, :cond_30

    and-long v34, v7, v21

    cmp-long v27, v34, v19

    if-gez v27, :cond_2e

    shl-int/lit8 v27, v6, 0x3

    add-int v27, v27, v11

    aget-object v27, v1, v27

    move-object/from16 v34, v1

    move-object/from16 v1, v27

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-object/from16 v27, v3

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, v15, Landroidx/compose/ui/platform/SemanticsNodeCopy;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    :cond_28
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_29

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_19

    :cond_29
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v14, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2a

    const/4 v3, 0x0

    :cond_2a
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2b

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_1a

    :cond_2b
    const/4 v3, 0x0

    :goto_1a
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    if-nez v3, :cond_2c

    goto :goto_1c

    :cond_2c
    move-wide/from16 v35, v7

    int-to-long v7, v2

    invoke-virtual {v3, v7, v8}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->newAutofillId(J)Landroid/view/autofill/AutofillId;

    move-result-object v7

    if-eqz v7, :cond_2d

    iget-object v3, v3, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->mWrappedObj:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v3, v7, v1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_2d
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :goto_1b
    const/16 v1, 0x8

    goto :goto_1d

    :cond_2e
    move-object/from16 v34, v1

    move-object/from16 v27, v3

    :cond_2f
    :goto_1c
    move-wide/from16 v35, v7

    goto :goto_1b

    :goto_1d
    shr-long v7, v35, v1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v27

    move-object/from16 v1, v34

    goto :goto_18

    :cond_30
    move-object/from16 v34, v1

    move-object/from16 v27, v3

    const/16 v1, 0x8

    if-ne v10, v1, :cond_32

    goto :goto_1e

    :cond_31
    move-object/from16 v34, v1

    move-object/from16 v27, v3

    :goto_1e
    if-eq v6, v4, :cond_32

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v27

    move-object/from16 v1, v34

    goto/16 :goto_17

    :cond_32
    :goto_1f
    const/16 v1, 0x8

    goto :goto_20

    :cond_33
    const-string v0, "no value for specified key"

    invoke-static {v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    throw v0

    :cond_34
    move-object/from16 v25, v1

    move-object/from16 v26, v3

    move-object/from16 v33, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v32, v8

    move-wide/from16 v30, v10

    move v1, v2

    :goto_20
    shr-long v10, v30, v1

    add-int/lit8 v13, v13, 0x1

    move v2, v1

    move-object/from16 v1, v25

    move-object/from16 v3, v26

    move-object/from16 v6, v28

    move-object/from16 v7, v29

    move/from16 v8, v32

    move-object/from16 v4, v33

    goto/16 :goto_f

    :cond_35
    move-object/from16 v25, v1

    move v1, v2

    move-object/from16 v26, v3

    move-object/from16 v33, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v32, v8

    if-ne v12, v1, :cond_38

    move/from16 v8, v32

    goto :goto_21

    :cond_36
    move-object/from16 v25, v1

    move-object/from16 v26, v3

    move-object/from16 v33, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    :goto_21
    if-eq v9, v8, :cond_38

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v25

    move-object/from16 v3, v26

    move-object/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v33

    const/16 v2, 0x8

    goto/16 :goto_e

    :cond_37
    move-object/from16 v28, v6

    :cond_38
    invoke-virtual {v5}, Landroidx/collection/MutableIntObjectMap;->clear()V

    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v1

    iget-object v2, v1, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v3, v1, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_3c

    const/4 v6, 0x0

    :goto_22
    aget-wide v7, v1, v6

    not-long v9, v7

    shl-long v9, v9, p0

    and-long/2addr v9, v7

    and-long v9, v9, v16

    cmp-long v9, v9, v16

    if-eqz v9, :cond_3b

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_23
    if-ge v10, v9, :cond_3a

    and-long v11, v7, v21

    cmp-long v11, v11, v19

    if-gez v11, :cond_39

    shl-int/lit8 v11, v6, 0x3

    add-int/2addr v11, v10

    aget v12, v2, v11

    aget-object v11, v3, v11

    check-cast v11, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    new-instance v13, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object v11, v11, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v14

    invoke-direct {v13, v11, v14}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    invoke-virtual {v5, v12, v13}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_39
    const/16 v11, 0x8

    shr-long/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_3a
    const/16 v11, 0x8

    if-ne v9, v11, :cond_3c

    goto :goto_24

    :cond_3b
    const/16 v11, 0x8

    :goto_24
    if-eq v6, v4, :cond_3c

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_3c
    new-instance v1, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    iput-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkingForSemanticsChanges:Z

    :goto_25
    return-void

    :pswitch_19
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    invoke-static {v0}, Landroidx/compose/material/ripple/RippleHostView;->$r8$lambda$kwnYusj11673lL3l--Z3fgj8B_w(Landroidx/compose/material/ripple/RippleHostView;)V

    return-void

    :pswitch_1a
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentDialog;

    invoke-static {v0}, Landroidx/activity/ComponentDialog;->$r8$lambda$qrzmfDOyDuplJFtpJLozn3P9EZI(Landroidx/activity/ComponentDialog;)V

    return-void

    :pswitch_1b
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    iget-object v1, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    :cond_3d
    return-void

    :pswitch_1c
    iget-object v0, v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/LottieTask;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieTask;->notifyListenersInternal()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
.end method
