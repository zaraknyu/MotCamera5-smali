.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;
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

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->$r8$classId:I

    const/16 v1, 0x1b

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    sget v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->$r8$clinit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ltz v1, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eq v3, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->currentAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->uiOrientation:I

    rsub-int v3, v3, 0x168

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    const/high16 v7, 0x43b40000    # 360.0f

    if-gez v6, :cond_3

    add-float/2addr v3, v7

    :cond_3
    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_4

    sub-float/2addr v3, v7

    :cond_4
    add-float/2addr v1, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v3

    new-array v2, v2, [F

    aput v3, v2, v5

    aput v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v5, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->animDuration:J

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda4;

    const/4 v5, 0x6

    invoke-direct {v3, v5, v0}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;

    invoke-direct {v3, v1, v4, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->currentAnimation:Landroid/animation/ValueAnimator;

    :cond_5
    return-void

    :pswitch_0
    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/common/base/Splitter;

    iget-object p0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->stop()V

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;->COMPLETE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$TranscodeStatus;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->COMPLETE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$onProcessingComplete$1;

    invoke-direct {v4, p0, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$onProcessingComplete$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, v3, v4, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v5, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_6

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    :try_start_1
    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v6

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v7, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v10, Lcom/motorola/camera/background/common/msg/MsgType;->SUSPEND_PROCESSING:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v9, Lcom/motorola/camera/background/common/TaskId;

    invoke-direct {v9, v5}, Lcom/motorola/camera/background/common/TaskId;-><init>(I)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    sget-object v8, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v6 .. v11}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    iget v3, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceClientId:I

    invoke-interface {v0, v3}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->unregisterClient(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v4, "JobMgrService registerClient() exception: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v5, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    :cond_7
    monitor-exit v1

    :goto_2
    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/service/CameraForegroundServiceManager$1;

    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0x1a

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v1, 0x8

    invoke-direct {v0, v3, v1, v5, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/saving/SaveImageService;

    iget-object v2, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->poll()Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    move-result-object v0

    iget-object v6, p0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Landroidx/compose/runtime/OffsetApplier;

    if-eqz v6, :cond_8

    iget v7, v6, Landroidx/compose/runtime/OffsetApplier;->offset:I

    iget v6, v6, Landroidx/compose/runtime/OffsetApplier;->nesting:I

    invoke-static {v7, v6, v3}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Landroidx/compose/runtime/OffsetApplier;

    iget-object v3, v3, Landroidx/compose/runtime/OffsetApplier;->applier:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;

    const/4 v7, 0x7

    invoke-direct {v6, v3, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_8
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsOnlyCaptureRecord:Z

    if-eqz v2, :cond_9

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v0, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_6

    :cond_9
    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v3, :cond_c

    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    move v4, v5

    :cond_c
    :goto_5
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    if-nez v3, :cond_e

    if-eqz v4, :cond_e

    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-nez v3, :cond_d

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/motorola/camera/saving/SaveImageService;->mImageStyleProcessingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_6

    :cond_e
    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/SaveImageService;->addImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    :goto_6
    return-void

    :goto_7
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/storage/MediaFile;

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/SaveListener;

    invoke-interface {v1, p0}, Lcom/motorola/camera/saving/SaveListener;->onMediaSaveComplete(Lcom/motorola/camera/storage/MediaFile;)V

    goto :goto_8

    :cond_f
    return-void

    :pswitch_7
    check-cast p0, Landroidx/room/RoomConnectionManager;

    move v1, v5

    move v3, v1

    move v6, v3

    move v7, v6

    move v8, v7

    :cond_10
    :goto_9
    if-nez v1, :cond_1b

    const/4 v9, 0x4

    :try_start_5
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    if-eqz v0, :cond_17

    sget-object v10, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_16

    if-eq v0, v4, :cond_15

    if-eq v0, v2, :cond_14

    const/4 v10, 0x3

    if-eq v0, v10, :cond_13

    if-eq v0, v9, :cond_12

    const/4 v10, 0x5

    if-ne v0, v10, :cond_11

    move v7, v4

    goto :goto_9

    :cond_11
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_12
    move v6, v4

    goto :goto_9

    :cond_13
    move v8, v5

    goto :goto_9

    :cond_14
    move v8, v4

    goto :goto_9

    :cond_15
    :goto_a
    move v1, v4

    goto :goto_9

    :cond_16
    :try_start_6
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->processInput()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move v3, v4

    goto :goto_9

    :catch_2
    move-exception v0

    move v3, v4

    goto :goto_b

    :cond_17
    if-eqz v3, :cond_10

    if-nez v6, :cond_18

    :try_start_7
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->processInput()V

    :cond_18
    if-nez v7, :cond_19

    if-nez v8, :cond_19

    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->processOutput()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_19
    if-eqz v6, :cond_10

    if-eqz v7, :cond_10

    goto :goto_a

    :goto_b
    iget-object v10, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "exception in codecLooper: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v10, p0, Landroidx/room/RoomConnectionManager;->isConfigured:Z

    if-eqz v10, :cond_1a

    sget-object v10, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v11, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v12, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v13, 0x7f12017f

    invoke-direct {v12, v13}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v9, v12, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v12, v10, v11}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_1a
    iget-object v9, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    invoke-interface {v9, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleError(Ljava/lang/Exception;)V

    goto/16 :goto_9

    :cond_1b
    return-void

    :pswitch_8
    check-cast p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->stop()V

    iput-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    :cond_1c
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/motorola/camera/utility/EGLHelper;->destroySurface()V

    iput-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    :cond_1d
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    :cond_1e
    return-void

    :pswitch_9
    check-cast p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->stop()V

    iput-object v3, p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mVideoCodecHelper:Landroidx/room/RoomConnectionManager;

    :cond_1f
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/motorola/camera/utility/EGLHelper;->destroySurface()V

    iput-object v3, p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    :cond_20
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mCodecSurface:Landroid/view/Surface;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mCodecSurface:Landroid/view/Surface;

    :cond_21
    return-void

    :pswitch_a
    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/jms/BgJobTransferService;

    const-string p0, "BgJobTransferService: WatchDog triggered - killing JobMgrService pid = "

    const-string v0, "BgJobTransferService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BgJobTransferService: WatchDog triggered - JobRefCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    monitor-enter v1

    :try_start_8
    iget v3, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-exit v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v0, v0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->getPid()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    monitor-enter v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    iget v2, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    monitor-exit v1

    if-lez v2, :cond_22

    const-string v2, "BgJobTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    :catch_3
    const-string p0, "BgJobTransferService"

    const-string v0, "JMS not responding"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_c
    monitor-enter v1

    :try_start_e
    iget-object p0, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-string v2, "BgJobTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Watch Dog: exception: for seq ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v5, v2}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_e

    :cond_23
    monitor-exit v1

    monitor-enter v1

    :try_start_f
    iput v5, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    iget-object p0, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    monitor-exit v1

    return-void

    :catchall_4
    move-exception v0

    move-object p0, v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw p0

    :goto_e
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw p0

    :catchall_5
    move-exception v0

    move-object p0, v0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw p0

    :pswitch_b
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void

    :pswitch_c
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mRequests:Ljava/util/ArrayList;

    :goto_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_25

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v3, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mCameraId:Ljava/lang/String;

    iput-object v3, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v0, v5, v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RequestListener;->onRequest(IILcom/motorola/camera/fsm/RequestWrapper;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->onComplete(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_25
    return-void

    :pswitch_d
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;

    new-instance v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const v2, 0x7f12016f

    iput v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v2, 0x7f12016e

    iput v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    new-instance v2, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f120140

    iput p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f120157

    iput p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_e
    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void

    :pswitch_f
    move-object v8, p0

    check-cast v8, Lcom/motorola/camera/AppFeatures;

    iget-object p0, v8, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object p0, v8, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Ljava/lang/String;

    iget-object p0, v8, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p0, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/motorola/camera/settings/SettingsHelper;->shouldAbortCaptureBeforeClose(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)Z

    move-result v0

    iget-object v10, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    move-object v12, v9

    new-instance v9, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v14, 0x1

    const/4 v11, 0x0

    move-object v13, v10

    move-object v10, v7

    invoke-direct/range {v9 .. v14}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    move-object v10, v13

    invoke-virtual {v0, v9}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    goto :goto_10

    :cond_26
    move-object v12, v9

    :goto_10
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v1, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/device/CameraStateManager;

    sget-object v2, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSING:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v1, v7, v2}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-eqz p0, :cond_27

    move v11, v5

    goto :goto_11

    :cond_27
    move v11, v4

    :goto_11
    new-instance v6, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;

    move-object v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;Z)V

    invoke-virtual {v0, v6}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void

    :pswitch_10
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->close(Z)V

    return-void

    :pswitch_11
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->close(Z)V

    return-void

    :pswitch_12
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mHandleLockRunnable:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    return-void

    :pswitch_13
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    return-void

    :pswitch_14
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TONE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_15
    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    iput-boolean v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchAllowed:Z

    return-void

    :pswitch_16
    check-cast p0, Landroid/database/Cursor;

    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :pswitch_17
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->showBlinkAnimationAndClose()V

    return-void

    :pswitch_18
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->acquireCliWakeLock()V

    return-void

    :pswitch_19
    check-cast p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_1a
    check-cast p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_1b
    check-cast p0, Lcom/motorola/camera/CameraApp;

    sget-object v0, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    if-eqz v1, :cond_28

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->init(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->deinit()V

    goto :goto_12

    :cond_28
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->init(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    :cond_29
    :goto_12
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v0, :cond_2a

    invoke-static {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->initIfNot(Landroid/content/Context;)V

    :cond_2a
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    return-void

    :pswitch_1c
    check-cast p0, Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$wKel3_mRSiry-3OOCzhIUVVqNm4(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

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
