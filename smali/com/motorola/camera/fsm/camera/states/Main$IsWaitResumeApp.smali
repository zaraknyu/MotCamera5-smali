.class public final Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showUnavailableBurstModeToast(I)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object p0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/4 p0, 0x1

    iput-boolean p0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mDismissOnCaptureStart:Z

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 7

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "CLOSED"

    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrBurstEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mShutterBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p1

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    monitor-enter p2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mLastShutterTime:J

    sub-long/2addr v3, v5

    iget-wide v5, p2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mDuration:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    monitor-exit p2

    if-eqz p1, :cond_2

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    monitor-enter p0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mLastShutterTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_3
    :goto_2
    return v1

    :pswitch_2
    invoke-static {p1, v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->canDoNextCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    if-ne v1, p0, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1

    :pswitch_4
    sget-object p0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez p0, :cond_6

    sget-object p0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :cond_6
    :goto_4
    return v1

    :pswitch_5
    sget-object p0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p0, p0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;

    if-nez p0, :cond_8

    sget-object p0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p0, p0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :cond_8
    :goto_5
    return v1

    :pswitch_6
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_9

    const-string p0, "ENABLE"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    return v1

    :pswitch_7
    instance-of p0, p2, Landroid/os/Bundle;

    if-eqz p0, :cond_a

    check-cast p2, Landroid/os/Bundle;

    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string p1, "CAPTURE_TRIGGER"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p0, p1, :cond_a

    goto :goto_7

    :cond_a
    move v1, v2

    :goto_7
    return v1

    :pswitch_8
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isAutoFocus()Z

    move-result p0

    return p0

    :pswitch_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p0

    if-ne v1, p0, :cond_b

    goto :goto_8

    :cond_b
    move v1, v2

    :goto_8
    return v1

    :pswitch_a
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_d

    if-eqz p0, :cond_d

    :cond_c
    :goto_9
    move p0, v2

    goto/16 :goto_d

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode(I)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result p0

    if-nez p0, :cond_e

    const p0, 0x7f120120

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;->showUnavailableBurstModeToast(I)V

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result p0

    if-eqz p0, :cond_f

    const p0, 0x7f12011f

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;->showUnavailableBurstModeToast(I)V

    goto :goto_9

    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p0

    const p1, 0x7f12011e

    if-eqz p0, :cond_10

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;->showUnavailableBurstModeToast(I)V

    goto :goto_9

    :cond_10
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result p2

    if-nez p2, :cond_11

    const p0, 0x7f120121

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;->showUnavailableBurstModeToast(I)V

    goto :goto_9

    :cond_11
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result p2

    if-nez p2, :cond_c

    const/16 p2, 0x30

    if-ne p0, p2, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isNightVisionMode()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p2

    if-eqz p2, :cond_13

    goto :goto_9

    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_IS_SUPPORT_BURST_SHOT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v3, v0, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    if-eqz p2, :cond_14

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_a

    :cond_14
    move p2, v1

    :goto_a
    if-nez p2, :cond_15

    goto/16 :goto_9

    :cond_15
    const/16 p2, 0xc

    if-eq p0, p2, :cond_16

    const/16 p2, 0x12

    if-eq p0, p2, :cond_16

    const/16 p2, 0x27

    if-eq p0, p2, :cond_16

    const/16 p2, 0x28

    if-eq p0, p2, :cond_16

    const/16 p2, 0x33

    if-eq p0, p2, :cond_16

    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_BURST_SHOT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumSet;

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result p0

    if-nez p0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p0

    if-nez p0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result p0

    if-nez p0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result p0

    if-nez p0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result p0

    if-nez p0, :cond_16

    move p0, v1

    goto :goto_b

    :cond_16
    move p0, v2

    :goto_b
    if-nez p0, :cond_17

    goto/16 :goto_9

    :cond_17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_18

    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_BURST_SHOT_FRONT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumSet;

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    move p0, v1

    goto :goto_c

    :cond_18
    move p0, v2

    :goto_c
    if-eqz p0, :cond_19

    goto/16 :goto_9

    :cond_19
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_1a

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v0

    if-le v0, p2, :cond_1a

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/Main$IsWaitResumeApp;->showUnavailableBurstModeToast(I)V

    goto/16 :goto_9

    :cond_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE_FRONT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/util/Size;

    if-eqz p0, :cond_1b

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result p1

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result p0

    if-le p1, p0, :cond_1b

    goto/16 :goto_9

    :cond_1b
    move p0, v1

    :goto_d
    if-nez p0, :cond_1c

    :goto_e
    move v1, v2

    goto :goto_f

    :cond_1c
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkSaveQueueIsFull(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "MultiShotStates"

    const-string p1, "Save queue is full now, please wait for a while."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1d
    :goto_f
    return v1

    :pswitch_b
    sget-boolean p0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_10

    :cond_1e
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ALL_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object p0, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_10
    return v1

    :pswitch_c
    invoke-static {}, Lcom/motorola/camera/Util;->isVendorOrSampleModuleInstalled()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :pswitch_d
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/CaptureIntent;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CHECK_LOCATION_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    invoke-static {}, Lcom/motorola/camera/LocationManager;->applyLocationPersistedValues()V

    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isQuickDrawLaunch()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    monitor-enter v0

    :try_start_6
    iget-boolean v3, v0, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    if-eqz v3, :cond_1f

    iget-boolean v3, v0, Lcom/motorola/camera/PermissionsManager;->mRequestAlwaysOptionalPermissions:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_1f

    move v3, v1

    goto :goto_11

    :catchall_3
    move-exception p0

    goto :goto_15

    :cond_1f
    move v3, v2

    :goto_11
    monitor-exit v0

    if-eqz v3, :cond_20

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_12

    :cond_20
    move v0, v2

    :goto_12
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_21

    if-eqz v0, :cond_22

    :cond_21
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-nez p1, :cond_22

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_22

    if-nez p2, :cond_22

    if-nez p0, :cond_22

    move p0, v1

    goto :goto_13

    :cond_22
    move p0, v2

    :goto_13
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;)Z

    move-result p1

    if-eqz p0, :cond_23

    if-nez p1, :cond_23

    goto :goto_14

    :cond_23
    move v1, v2

    :goto_14
    return v1

    :goto_15
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :pswitch_e
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "HISTORY_STATE"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-ne v1, p0, :cond_24

    goto :goto_16

    :cond_24
    move v1, v2

    :goto_16
    return v1

    :pswitch_f
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "IS_FOLD_FULL_SCREEN"

    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :pswitch_10
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "IS_FOLD_DUAL_PANE_SCREEN"

    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :pswitch_11
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_25

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result p0

    if-eqz p0, :cond_25

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p0

    if-eqz p0, :cond_25

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_17

    :cond_25
    move v1, v2

    :goto_17
    return v1

    :pswitch_12
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isMirrorMode()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_18

    :cond_26
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    if-ne v1, p0, :cond_27

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_19

    :cond_27
    :goto_18
    move v1, v2

    :goto_19
    return v1

    :pswitch_13
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->EXP_COMP:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "VALUE"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisableRoiMode(Z)Z

    move-result p1

    if-nez p1, :cond_28

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_1a

    :cond_28
    move v1, v2

    :goto_1a
    return v1

    :pswitch_14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_1b

    :cond_29
    move v1, v2

    :goto_1b
    return v1

    :pswitch_15
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_2a

    const-string p0, "SETTING"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    :cond_2a
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_1d

    :cond_2b
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "PREVIOUS_VALUE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/VideoHelper;->isSuperSlowMotionFrameRate(I)Z

    move-result p2

    if-eqz p2, :cond_2c

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result p2

    if-ne p0, p2, :cond_2c

    goto :goto_1c

    :cond_2c
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result p2

    if-ne p1, p2, :cond_2d

    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->isSuperSlowMotionFrameRate(I)Z

    move-result p0

    if-eqz p0, :cond_2d

    :goto_1c
    move v2, v1

    :cond_2d
    xor-int/2addr v1, v2

    :goto_1d
    return v1

    :pswitch_16
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2e

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    sget-object p1, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-ne p0, p1, :cond_2e

    goto :goto_1e

    :cond_2e
    move v1, v2

    :goto_1e
    return v1

    :pswitch_17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result p0

    xor-int/2addr p0, v1

    if-ne v1, p0, :cond_2f

    goto :goto_1f

    :cond_2f
    move v1, v2

    :goto_1f
    return v1

    :pswitch_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_20

    :cond_30
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "SETTING"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_39

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v0, "PREVIOUS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p0, :cond_33

    if-eqz p2, :cond_32

    if-eq p2, v1, :cond_31

    goto :goto_20

    :cond_31
    if-nez p1, :cond_35

    goto :goto_21

    :cond_32
    if-eqz p1, :cond_35

    goto :goto_21

    :cond_33
    if-eqz p2, :cond_36

    if-eq p2, v1, :cond_34

    goto :goto_20

    :cond_34
    if-eqz p1, :cond_35

    goto :goto_21

    :cond_35
    :goto_20
    move v1, v2

    goto :goto_21

    :cond_36
    if-ne p1, v1, :cond_39

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/VideoFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCodecVideoSize()Landroid/util/Size;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_37

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result p0

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result p1

    if-le p0, p1, :cond_38

    :cond_37
    move v2, v1

    :cond_38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_39
    :goto_21
    return v1

    :pswitch_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorTone()Z

    move-result p0

    if-eqz p0, :cond_43

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLimitedRearSingleBokehMode()Z

    move-result p0

    if-eqz p0, :cond_3a

    move p0, v1

    goto :goto_22

    :cond_3a
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    xor-int/2addr p0, v1

    :goto_22
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x4

    if-gt p1, p2, :cond_3b

    goto :goto_23

    :cond_3b
    move v1, v2

    :goto_23
    if-nez p0, :cond_3f

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getHighResolutionSizes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3f

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/motorola/camera/settings/SettingsHelper;->getPersistPictureSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->$r8$clinit:I

    invoke-static {v3}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkq;->getResolutions(Lcom/motorola/camera/PreviewSize$AspectRatio;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-boolean p2, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    if-nez p2, :cond_3c

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v2

    :cond_3d
    if-eqz v0, :cond_3f

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-eqz v2, :cond_3e

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0, p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->handlePictureSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)V

    goto :goto_24

    :cond_3e
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p1, p2, p0, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    :cond_3f
    :goto_24
    if-nez v1, :cond_43

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getHighResolutionSizes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_43

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/motorola/camera/settings/SettingsHelper;->getPersistPictureSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->$r8$clinit:I

    invoke-static {v1}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkq;->getResolutions(Lcom/motorola/camera/PreviewSize$AspectRatio;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-boolean p2, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    if-nez p2, :cond_40

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result p0

    move v2, p0

    :cond_41
    if-eqz v0, :cond_43

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-eqz v2, :cond_42

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0, p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->handlePictureSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)V

    goto :goto_25

    :cond_42
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p1, p2, p0, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    :cond_43
    :goto_25
    return v2

    :pswitch_1a
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_44

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_44

    check-cast p2, Landroid/os/Bundle;

    const-string p0, "TEN_BIT_MODE_SWITCH_CASE"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_EXIT_TEN_BIT_MODE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne p1, p0, :cond_44

    goto :goto_26

    :cond_44
    move v1, v2

    :goto_26
    return v1

    :pswitch_1b
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-nez p1, :cond_45

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p1

    if-eqz p1, :cond_46

    :cond_45
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_46

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isDisableExternalDisplayVideoSize()Z

    move-result v2

    :cond_46
    return v2

    :pswitch_1c
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "WAIT_RESUME_APP"

    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return p2

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
