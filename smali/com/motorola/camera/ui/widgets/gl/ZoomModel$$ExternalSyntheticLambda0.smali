.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda1(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->POSTCAPFRAME:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onPostViewFrame(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/McfAuxFrameData;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda13(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onMoonDetect(Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda14(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackGestureDetect;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onGestureDetect(Lcom/motorola/camera/mcf/McfCallbackGestureDetect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda15(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onMotNVDetect(Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda16(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onJGDRSD(Lcom/motorola/camera/mcf/McfCallbackJGDrsd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda2(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onArcsoftDRSD(Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    iget-object p1, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/DoubleStream;->mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    iget p0, p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->srMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneParams:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneParams:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_2
    return-void

    :goto_1
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda3(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onAutoCapture(Lcom/motorola/camera/mcf/McfCallbackAutoCapture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda4(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onBestShotVideoTrigger(Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda5(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onMotDRSDv2(Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda6(Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfRtDepthStatus;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget v0, p0, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_STATES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/FastSettingsManager;->MODE_MENU_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-nez v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12067b

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f120685

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f120673

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12067c

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12067e

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f120681

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v3, 0x4

    iput v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_2

    :pswitch_6
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SEGMENTATION_MODE:Z

    if-eqz v3, :cond_1

    const v3, 0x7f120678

    goto :goto_1

    :cond_1
    const v3, 0x7f120679

    :goto_1
    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/16 v3, 0xdac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    :goto_2
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onRealTimeDepthStatus(Lcom/motorola/camera/mcf/McfRtDepthStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    monitor-exit p1

    return-void

    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda7(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfSceneProp;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfSceneProp;->getKeys()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda21;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda8(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    sget-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-class v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v2

    if-nez v0, :cond_0

    monitor-exit v2

    goto :goto_1

    :cond_0
    :try_start_0
    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingRawScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    sget-boolean v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneLockedForCapture:Z

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateCurrentRawScene(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v2

    :goto_1
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-boolean p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private final accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda9(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onBSTDRSD(Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda18;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda9(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda8(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda7(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda6(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda5(Ljava/lang/Object;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda4(Ljava/lang/Object;)V

    return-void

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda3(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda2(Ljava/lang/Object;)V

    return-void

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda1(Ljava/lang/Object;)V

    return-void

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda16(Ljava/lang/Object;)V

    return-void

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda15(Ljava/lang/Object;)V

    return-void

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda14(Ljava/lang/Object;)V

    return-void

    :pswitch_d
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->accept$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$ExternalSyntheticLambda13(Ljava/lang/Object;)V

    return-void

    :pswitch_e
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackModelResults;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;->onModelResults(Lcom/motorola/camera/mcf/McfCallbackModelResults;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_f
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackBandingDetect;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_2
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onBandingDetect(Lcom/motorola/camera/mcf/McfCallbackBandingDetect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    monitor-enter v0

    :try_start_4
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    iget-object v2, p0, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_2
    monitor-exit v0

    return-void

    :goto_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackAIScene;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_6
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onAIScene(Lcom/motorola/camera/mcf/McfCallbackAIScene;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_7

    :cond_3
    monitor-exit v0

    return-void

    :goto_7
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :pswitch_12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    sget-object v1, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->-$$Nest$mcheckComplete(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;

    sget-object v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iput-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->setupZoomConfig()V

    iget-boolean p0, p1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mRecording:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->setVideoRecording(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
