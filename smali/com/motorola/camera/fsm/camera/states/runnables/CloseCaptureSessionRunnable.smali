.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mStopMlModels:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->mStopMlModels:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->mStopMlModels:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->mStopMlModels:Z

    return-void
.end method

.method public static closeAllCameraSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;)V
    .locals 13

    sget-object v6, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v6, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->getOpenSessionCameraIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    sget-boolean v2, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeCameraSessions size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CloseCaptureSessionRunnable"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_1
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ClosCaptureSessionThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    invoke-static {p0, v8}, Lcom/motorola/camera/settings/SettingsHelper;->shouldAbortCaptureBeforeClose(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)Z

    move-result v0

    iget-object v11, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v7, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v12, 0x1

    const/4 v9, 0x0

    move-object v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    invoke-virtual {v6, v7}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    :cond_2
    iget-object v0, v6, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    sget-object v3, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSING:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0, v8, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/motorola/camera/AppFeatures;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/AppFeatures;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/util/ListIterator;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    new-instance v7, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;

    move-object v10, p2

    move-object v9, v0

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;Z)V

    invoke-virtual {v6, v7}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    :cond_4
    return-void
.end method

.method public static closeAllSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;Lcom/motorola/camera/device/callables/CameraListener;Z)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    :cond_0
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->isQueueEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;-><init>(JLcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;)V

    const-string p0, "cancelAllJobs: add McfStateAdapter  "

    sget-object p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->isQueueEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    sget-boolean p0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "McfStateMachine"

    const-string p2, "cancelAllJobs: All mcf jobs are cancelled"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    iget-object p2, v7, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mBundle:Landroid/os/Bundle;

    const-string v0, "CANCELLED"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-boolean p2, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p2, :cond_2

    const-string p2, "McfStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v7, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    iget-object p0, v7, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCancelSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfCancelInterface;

    check-cast p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->cancelAllJobs(Z)V

    goto :goto_0

    :cond_3
    move p3, v2

    :cond_4
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_5

    invoke-static {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllCameraSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;)V

    :cond_5
    return-void

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllCameraSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->mStopMlModels:Z

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/motorola/camera/CameraKpi;

    const/16 p3, 0x18

    invoke-direct {p1, p3, p0, p2}, Lcom/motorola/camera/CameraKpi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    sget-object p3, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 7
    iget-object v0, p3, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/device/CameraStateManager;->mCameraAvailableStatusMap:Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 10
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance v0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;

    .line 12
    iget-object v1, p3, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    .line 13
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;Lcom/motorola/camera/CameraKpi;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 14
    invoke-virtual {p3, v0}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void

    .line 15
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 16
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_1

    .line 17
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object p3, Lcom/motorola/camera/CameraKpi$KPI;->CLOSE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p1, p3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1
    const/4 p1, 0x0

    .line 19
    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->mStopMlModels:Z

    invoke-static {p2, p1, p0, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
