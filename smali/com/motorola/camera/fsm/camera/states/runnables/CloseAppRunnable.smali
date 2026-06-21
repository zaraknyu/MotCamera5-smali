.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public final mCameraStatusListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

.field public mCancelled:Z

.field public mMcfClose:Z

.field public final mMcfCloseLock:Ljava/lang/Object;

.field public final mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

.field public final mStopCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfCloseLock:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mStopCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCameraStatusListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final close(Z)V
    .locals 5

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close cancelMcf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloseAppRunnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v3, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCameraStatusListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->cancelAllJobs()V

    :cond_2
    iget-object p1, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {p1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->closeCaptureSessions(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_3
    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public final closeCaptureSessions(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->getOpenSessionCameraIds()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const/4 v3, 0x1

    invoke-static {p1, v2, p0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    :try_start_0
    sget-boolean p0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "CloseAppRunnable"

    if-eqz p0, :cond_0

    :try_start_1
    const-string v3, "Waiting to close session"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    const-string p0, "Timeout waiting for camera close"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->onSessionClosed(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    const-string p0, "Camera session closed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    instance-of p1, p1, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 15

    move-object/from16 v7, p2

    .line 1
    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    .line 2
    :try_start_0
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v8, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 4
    iput-boolean v8, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    .line 5
    :cond_0
    monitor-exit v2

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v7, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "OUTSTANDING_QUEUE_SIZE"

    .line 7
    const-class v3, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v3

    .line 8
    :try_start_1
    sget-object v4, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 9
    iget-object v4, v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-exit v3

    .line 10
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 12
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 13
    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    .line 14
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 15
    invoke-virtual {v7, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    const/4 v9, 0x0

    .line 16
    iput-boolean v9, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCancelled:Z

    .line 17
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 18
    invoke-virtual {v7, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 21
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->isQueueEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 22
    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CloseAppRunnable"

    const-string v3, "MCF sm queue is not empty"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 24
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    .line 25
    sget-object v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    .line 26
    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 27
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 28
    const-string v5, "OUTQUSIZ"

    .line 29
    invoke-virtual {v0, v4, v5}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    .line 30
    monitor-enter v3

    .line 31
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v8

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    .line 32
    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;

    .line 33
    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;->mProgressList:Ljava/util/ArrayList;

    .line 34
    sget-object v10, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    .line 35
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v6, v9

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_e

    :cond_5
    :goto_2
    move v6, v8

    :goto_3
    and-int/2addr v4, v6

    goto :goto_1

    .line 36
    :cond_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_8

    .line 37
    sget-object v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    monitor-enter v3

    .line 38
    :try_start_3
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v8

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    .line 39
    iget-boolean v5, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mIsUnlockShutterEarlyDone:Z

    xor-int/2addr v5, v8

    and-int/2addr v4, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 40
    :cond_7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_8

    .line 41
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->cancelAllJobs()V

    goto :goto_6

    .line 42
    :goto_5
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 43
    :cond_8
    :goto_6
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 44
    iget-object v3, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager;

    .line 45
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCameraStatusListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/device/CameraStateManager;->addStateListener(Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;)V

    .line 46
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfCloseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 47
    :try_start_5
    iput-boolean v9, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfClose:Z

    .line 48
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->isQueueEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 50
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;->onQueueEmpty()V

    goto :goto_7

    :catchall_3
    move-exception v0

    goto/16 :goto_d

    .line 51
    :cond_9
    :goto_7
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 52
    const-string v10, "CloseAppRunnable"

    .line 53
    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    .line 54
    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->getOpenSessionCameraIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v4}, Lcom/motorola/camera/device/CameraStateManager;->getPreviewStatus(Ljava/lang/String;)I

    move-result v5

    if-ne v8, v5, :cond_a

    .line 58
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 59
    :cond_b
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 60
    :try_start_6
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v12

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 62
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mStopCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    .line 63
    iget-object v6, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result v0

    const/4 v14, 0x2

    if-eqz v0, :cond_d

    .line 65
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 66
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 67
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    if-eqz v0, :cond_c

    move v0, v14

    goto :goto_a

    :cond_c
    const/16 v0, 0x8

    :goto_a
    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 68
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;Landroid/os/Handler;)V

    invoke-static {v2, v0, v4, v6}, Lcom/google/zxing/Result;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    goto :goto_b

    .line 69
    :cond_d
    invoke-static {v2, v5, v4, v6}, Lcom/google/zxing/Result;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 70
    :goto_b
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 71
    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    .line 72
    invoke-virtual {v0, v14, v2}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    goto :goto_9

    .line 73
    :cond_e
    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_f

    const-string v2, "Waiting to stop preview streaming"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_f
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v11, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v0, :cond_12

    .line 75
    const-string v0, "Timeout waiting to stop preview streaming"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_10
    if-eqz v0, :cond_11

    .line 76
    const-string v0, "Stop preview streaming completed"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_11
    move v0, v9

    goto :goto_f

    :catch_0
    :cond_12
    :goto_c
    move v0, v8

    goto :goto_f

    .line 77
    :goto_d
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 78
    :goto_e
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 79
    :cond_13
    invoke-virtual {p0, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->closeCaptureSessions(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 80
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 81
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    .line 82
    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 83
    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 84
    const-string v2, "OUTQUSIZ"

    .line 85
    invoke-virtual {v0, v9, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    goto :goto_c

    .line 86
    :cond_14
    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_12

    .line 87
    const-string v0, "CloseAppRunnable"

    const-string v2, "allCameraSessionsClosed!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 88
    :goto_f
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 89
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    if-eqz v0, :cond_16

    .line 90
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 91
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 92
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_15

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "OPEN_CAMERA_ERROR"

    .line 93
    invoke-virtual {v0, v2, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v8

    goto :goto_10

    :cond_15
    move v0, v9

    .line 94
    :goto_10
    invoke-static {v7, p0, v0}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$ShotCreateCaptureRequests;->closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    .line 95
    iget-object v0, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    .line 96
    iget-object v0, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    .line 97
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    goto :goto_11

    .line 98
    :cond_16
    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "CloseAppRunnable"

    const-string v1, "Waiting for MCF to close!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_17
    :goto_11
    invoke-static {v9}, Lcom/motorola/camera/VideoHelper;->requestAudioFocus(Z)V

    .line 100
    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/DnDHandler;->muteNotifications(Z)V

    .line 101
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    .line 102
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLockedBut(Ljava/util/List;)V

    .line 103
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    .line 104
    iput-boolean v9, v0, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    .line 105
    iput-boolean v9, v0, Lcom/motorola/camera/PermissionsManager;->mOptionalPermissionsDenied:Z

    .line 106
    invoke-static {}, Lcom/google/android/gms/tasks/zzr;->getInstance()Lcom/google/android/gms/tasks/zzr;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v8}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/tasks/zzr;I)V

    const-string v0, "ShaderCache"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 108
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 109
    iput-object v1, v0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    .line 110
    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReviewListener(Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;)V

    .line 111
    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    .line 112
    monitor-exit v0

    return-void

    :catchall_4
    move-exception v0

    .line 113
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 114
    :goto_12
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
