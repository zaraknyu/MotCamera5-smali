.class public final Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;
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
    iput p1, p0, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 4

    iget p0, p0, Lcom/motorola/camera/states/runnables/guards/IsAnyVideoModeGuardRunnable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Landroid/os/Bundle;

    const-string p0, "CAMERA_TYPE"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "VIDEO_RECORDING"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    const-string v2, "ENABLE"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "CLI_ZOOM_ENABLE"

    invoke-virtual {p2, p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureOn()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeInCaptureState()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "SAME_ID"

    invoke-virtual {p2, p0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/motorola/camera/utility/ZoomHelper;->isKnifeSwitchState(I)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    :goto_0
    move v1, v3

    :cond_4
    :goto_1
    return v1

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->disableCameraTypeIfActivePhotoOn(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    const/4 p1, 0x0

    if-eqz p0, :cond_6

    new-instance p2, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-direct {p2, v0, p0, p1}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    invoke-static {p2}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    :cond_6
    return p1

    :pswitch_2
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    const-string p1, "VIDEO_RECORDING"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p2, 0x1

    :cond_7
    return p2

    :pswitch_3
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_9

    const-string v2, "FOCUS_LOCK_SENT"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    invoke-virtual {p0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    :cond_9
    return v0

    :pswitch_4
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_a

    move p2, p1

    :cond_a
    return p2

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_6
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "SETTING"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_b

    goto :goto_3

    :cond_b
    const/4 p1, 0x0

    :goto_3
    return p1

    :pswitch_7
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "PREVIOUS_VALUE"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string p1, "SDCARD_MOUNTED"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "MEDIA_VOLUME"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/storage/MediaVolume;

    if-nez p1, :cond_c

    invoke-virtual {p2}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x2

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_4

    :cond_c
    const/4 p0, 0x0

    :goto_4
    return p0

    :pswitch_8
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_d

    const-string p0, "MCF_PROCESSING"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_5

    :cond_d
    const/4 p0, 0x0

    :goto_5
    return p0

    :pswitch_9
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "LONG_PRESS"

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_a
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "HISTORY_STATE"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sget-object p2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p1, :cond_f

    if-eqz p0, :cond_e

    goto :goto_6

    :cond_e
    const/4 p0, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 p0, 0x1

    :goto_7
    return p0

    :pswitch_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    goto :goto_8

    :cond_10
    const/4 p1, 0x0

    :goto_8
    return p1

    :pswitch_c
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "IS_HIGH_RES_AUTO_SWITCH"

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_d
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    move p1, v1

    goto :goto_9

    :cond_11
    move p1, v0

    :goto_9
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getFullFrameExposureCompensation(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_12

    move p2, v1

    goto :goto_a

    :cond_12
    move p2, v0

    :goto_a
    or-int/2addr p1, p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I

    move-result p2

    if-eqz p2, :cond_13

    move p2, v1

    goto :goto_b

    :cond_13
    move p2, v0

    :goto_b
    or-int/2addr p1, p2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getFullFrameExposureCompensation(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_14

    move v0, v1

    :cond_14
    or-int/2addr p1, v0

    :cond_15
    return p1

    :pswitch_e
    if-eqz p2, :cond_16

    check-cast p2, Landroid/os/Bundle;

    const-string p0, "FACES_DETECTED"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_c

    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_d

    :cond_17
    :goto_c
    const/4 p0, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0

    :pswitch_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_10

    :cond_19
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    goto :goto_f

    :cond_1a
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object p0

    :goto_f
    if-eqz p0, :cond_1b

    :goto_10
    move p0, v0

    goto :goto_11

    :cond_1b
    move p0, p2

    :goto_11
    if-ne v0, p0, :cond_1c

    move p2, v0

    :cond_1c
    return p2

    :pswitch_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
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
