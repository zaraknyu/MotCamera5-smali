.class public final Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mEnable:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->$r8$classId:I

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 7

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->$r8$classId:I

    const-string v1, "ENABLE"

    const-string v2, "MODE"

    const-string v3, "SETTING"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getModeSupportFacing(IZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getNumberOfCameras()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-boolean v6, v3, Lcom/motorola/camera/settings/SettingsManager;->mHasExternalCamera:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v1, p2, v2, v6}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "canTransition: sensor missing, getNumberOfCameras: %d, hasBackCamera: %s, hasFrontCamera: %s, hasExternalCamera: %s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "SwitchGuardRunnable"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "IS_EXTERNAL_CAMERA"

    iget-boolean v1, v3, Lcom/motorola/camera/settings/SettingsManager;->mHasExternalCamera:Z

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p0, v0, :cond_3

    move v4, v5

    :cond_3
    return v4

    :pswitch_0
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "HAL_PROCESSING"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isSwHwQcfaShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p0, p2, :cond_4

    move v4, v5

    :cond_4
    return v4

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p1, p0, :cond_5

    move v4, v5

    :cond_5
    return v4

    :pswitch_2
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    sget-object p2, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const-string v0, "Auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v5

    goto :goto_2

    :cond_6
    move p1, v4

    :goto_2
    if-ne p0, p1, :cond_7

    move v4, v5

    :cond_7
    return v4

    :pswitch_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v5

    goto :goto_3

    :cond_8
    move p1, v4

    :goto_3
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p1, p0, :cond_9

    move v4, v5

    :cond_9
    return v4

    :pswitch_4
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ENABLE_VSTAB_STOP_DETECTION"

    invoke-virtual {p1, p2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopOptimizationSupported()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    move p1, v5

    goto :goto_4

    :cond_b
    move p1, v4

    :goto_4
    if-ne p0, p1, :cond_c

    move v4, v5

    :cond_c
    return v4

    :pswitch_5
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    move p1, v4

    goto :goto_6

    :cond_e
    :goto_5
    move p1, v5

    :goto_6
    if-ne p0, p1, :cond_f

    move v4, v5

    :cond_f
    return v4

    :pswitch_6
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "SMOOTH_ZOOM_JUMP"

    invoke-virtual {p2, p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p1, p0, :cond_10

    move v4, v5

    :cond_10
    return v4

    :pswitch_7
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result p2

    if-nez p2, :cond_12

    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result p2

    if-eqz p2, :cond_13

    :cond_12
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iget-boolean p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    xor-int/2addr p1, v5

    goto :goto_7

    :cond_13
    move p1, v4

    :goto_7
    if-ne p0, p1, :cond_14

    move v4, v5

    :cond_14
    return v4

    :pswitch_8
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {p1}, Lcom/motorola/camera/settings/CaptureIntent;->getExtraOutput()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_15

    move p1, v5

    goto :goto_8

    :cond_15
    move p1, v4

    :goto_8
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p1, p0, :cond_16

    move v4, v5

    :cond_16
    return v4

    :pswitch_9
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-ne p0, p1, :cond_17

    move v4, v5

    :cond_17
    return v4

    :pswitch_a
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "QCFA_SHOT"

    invoke-virtual {p1, p2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p2

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result p1

    if-nez p1, :cond_18

    move p1, v5

    goto :goto_9

    :cond_18
    move p1, v4

    :goto_9
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p0, p1, :cond_19

    move v4, v5

    :cond_19
    return v4

    :pswitch_b
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    if-ne p0, p1, :cond_1a

    move v4, v5

    :cond_1a
    return v4

    :pswitch_c
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "TIMER"

    invoke-virtual {p2, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1b

    move p1, v5

    goto :goto_a

    :cond_1b
    move p1, v4

    :goto_a
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p1, p0, :cond_1c

    move v4, v5

    :cond_1c
    return v4

    :pswitch_d
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    sget-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p1, p1, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    if-ne p0, p1, :cond_1d

    move v4, v5

    :cond_1d
    return v4

    :pswitch_e
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ROI_INNER"

    invoke-virtual {p1, p2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p0, p1, :cond_1e

    move v4, v5

    :cond_1e
    return v4

    :pswitch_f
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f

    move p1, v5

    goto :goto_b

    :cond_1f
    move p1, v4

    :goto_b
    if-ne p0, p1, :cond_20

    move v4, v5

    :cond_20
    return v4

    :pswitch_10
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result p1

    if-ne p0, p1, :cond_21

    move v4, v5

    :cond_21
    return v4

    :pswitch_11
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p1, p0, :cond_22

    move v4, v5

    :cond_22
    return v4

    :pswitch_12
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_d

    :cond_23
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result p1

    if-eq p0, p1, :cond_2f

    goto/16 :goto_e

    :cond_24
    const-string p0, "PREVIOUS_VALUE"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2f

    goto/16 :goto_e

    :cond_25
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_e

    :cond_26
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result p1

    if-eq p0, p1, :cond_2f

    goto/16 :goto_e

    :cond_27
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_VIDEO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoSupported()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result p1

    if-eq p0, p1, :cond_2f

    goto :goto_e

    :cond_28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_2a

    :cond_29
    move v4, p0

    goto :goto_f

    :cond_2a
    xor-int/lit8 v4, p0, 0x1

    goto :goto_f

    :cond_2b
    const-string p1, "CAMERA_TYPE"

    const-class v0, Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/settings/CameraType;

    if-eqz p1, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    if-ne p1, p2, :cond_2c

    move p1, v5

    goto :goto_c

    :cond_2c
    move p1, v4

    :goto_c
    if-eq p0, p1, :cond_2f

    goto :goto_e

    :cond_2d
    :goto_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOn()Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result p1

    if-eq p0, p1, :cond_2f

    goto :goto_e

    :cond_2e
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Lcom/motorola/camera/VideoFormat;)Z

    move-result p1

    xor-int/2addr p1, v5

    if-ne p0, p1, :cond_2f

    :goto_e
    move v4, v5

    :cond_2f
    :goto_f
    return v4

    :pswitch_13
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_PORTRAIT_HD:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result p1

    if-eqz p1, :cond_30

    :goto_10
    move v4, v5

    goto :goto_12

    :cond_30
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p2

    if-nez p2, :cond_31

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isCliZoomBlendingApplicableToVideoMode()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result p2

    if-eqz p2, :cond_32

    :cond_31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result p2

    if-nez p2, :cond_32

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Lcom/motorola/camera/VideoFormat;)Z

    move-result p1

    if-nez p1, :cond_33

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result p1

    if-eqz p1, :cond_33

    :cond_32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_34

    :cond_33
    move p1, v5

    goto :goto_11

    :cond_34
    move p1, v4

    :goto_11
    if-ne p0, p1, :cond_35

    goto :goto_10

    :cond_35
    :goto_12
    return v4

    :pswitch_14
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_15

    :cond_36
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupportedByCurrentCamera(Z)Z

    move-result p1

    if-nez p1, :cond_38

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnlyInBackMain()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_13

    :cond_37
    move p1, v4

    goto :goto_14

    :cond_38
    :goto_13
    move p1, v5

    :goto_14
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p0, p1, :cond_39

    :goto_15
    move v4, v5

    :cond_39
    return v4

    :pswitch_15
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result p1

    if-eqz p1, :cond_3b

    sget-object p1, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    const-string p2, "mediaVolumes"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_16

    :cond_3a
    move p1, v4

    goto :goto_17

    :cond_3b
    :goto_16
    move p1, v5

    :goto_17
    if-ne p0, p1, :cond_3c

    move v4, v5

    :cond_3c
    return v4

    :pswitch_16
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_3f

    check-cast p2, Landroid/os/Bundle;

    const-string v0, "ORIENTATION"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3f

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_3f

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_3f

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-eqz p0, :cond_3d

    rem-int/lit16 p1, v0, 0xb4

    if-eqz p1, :cond_3e

    :cond_3d
    if-nez p0, :cond_3f

    rem-int/lit16 v0, v0, 0xb4

    const/16 p0, 0x5a

    if-ne v0, p0, :cond_3f

    :cond_3e
    move v4, v5

    :cond_3f
    return v4

    :pswitch_17
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "SKIP"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p0, p1, :cond_40

    move v4, v5

    :cond_40
    return v4

    :pswitch_18
    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_41

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p2

    if-eq p1, p2, :cond_41

    move p1, v4

    goto :goto_18

    :cond_41
    move p1, v5

    :goto_18
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p1, p0, :cond_42

    move v4, v5

    :cond_42
    return v4

    :pswitch_19
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p1, p0, :cond_43

    move v4, v5

    :cond_43
    return v4

    :pswitch_1a
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    if-ne p0, p1, :cond_44

    move v4, v5

    :cond_44
    return v4

    :pswitch_data_0
    .packed-switch 0x0
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
