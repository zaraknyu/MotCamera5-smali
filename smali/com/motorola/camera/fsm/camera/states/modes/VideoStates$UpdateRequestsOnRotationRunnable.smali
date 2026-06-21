.class public final Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;->$r8$classId:I

    const/16 v1, 0x8

    .line 2
    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;->$r8$classId:I

    const/16 p1, 0x8

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 3
    move-object v0, p3

    check-cast v0, Landroid/os/Bundle;

    .line 4
    const-string v1, "SETTING"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 9
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 10
    invoke-static {p2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 11
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 12
    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->resetState()V

    .line 14
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    new-array v2, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 17
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 23
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v3, 0x0

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 27
    :cond_2
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isISOAuto()Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 29
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 30
    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 32
    const-string v1, "ORIENTATION"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 33
    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eq v0, v1, :cond_4

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRequestsOnRotationRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
