.class public final Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAutoFocusMoving$com$motorola$camera$fsm$camera$states$RoiStates$RoiSetRunnable$1(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->onAutoFocusMoving(Z)V

    return-void
.end method

.method public final onAutoFocusInactive(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onAutoFocusMoving(Z)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void

    :pswitch_1
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLensMovementBehavior:Lcom/google/android/gms/tasks/zzr;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAutoFocusScan(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->onAutoFocusMoving(Z)V

    return-void
.end method

.method public final onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->onAutoFocusMoving(Z)V

    return-void
.end method

.method public onFocusModeChanged(I)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_AUTO_FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onFocusModeChanged$com$motorola$camera$fsm$camera$subfsms$AutoFocusStateMachine$AutoFocusMovingCallback(I)V
    .locals 0

    return-void
.end method

.method public final onManualFocusCompleted()V
    .locals 0

    return-void
.end method

.method public final onManualFocusStarted()V
    .locals 0

    return-void
.end method
