.class public final Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;
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
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 8

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$SeqIdMatchGuardRunnable;->$r8$classId:I

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    xor-int/2addr p0, v2

    return p0

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSnapshotSupportedForCurrentMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :pswitch_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapsePostprocessVideo(Z)Z

    move-result p0

    return p0

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    :pswitch_6
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "RECORDING_START"

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :cond_2
    return v3

    :pswitch_7
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "REVIEW_PLAY"

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :pswitch_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result p0

    return p0

    :pswitch_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcomRecorderMirror()Z

    move-result p0

    return p0

    :pswitch_a
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    const-string p1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, p1}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_b
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "VIDEO_RECORDING"

    invoke-virtual {p0, p2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iget-wide p1, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-lez v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b007d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    cmp-long v6, v4, p1

    if-gez v6, :cond_4

    const-string v3, "VIDEO_STOP_POST_DELAY"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v0

    if-nez v0, :cond_5

    sub-long/2addr p1, v4

    invoke-virtual {p0, v3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :cond_5
    :goto_3
    return v2

    :pswitch_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabEnableAndSupport()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopOptimizationSupported()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :cond_7
    :goto_4
    return v2

    :pswitch_d
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isKnifeSwitchAllowedWhileRecording(Z)Z

    move-result p0

    return p0

    :pswitch_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result p0

    return p0

    :pswitch_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheFilterName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/meishe/MeisheEffects;->isOriginalFilter(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    return v2

    :pswitch_10
    instance-of p0, p2, Landroid/os/Bundle;

    if-nez p0, :cond_9

    goto :goto_6

    :cond_9
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "OPEN_CAMERA_ERROR"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string p0, "VideoStates"

    const-string p1, "A error comes from camera engine side !!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    return v3

    :pswitch_11
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    return p0

    :pswitch_12
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "IS_SPLIT_SCREEN"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_13
    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->ZOOM_COMPLETE_CHECK_ACTIVE_CAMERA:Z

    xor-int/2addr p0, v2

    if-ne p0, v2, :cond_b

    goto :goto_7

    :cond_b
    move v2, v3

    :goto_7
    return v2

    :pswitch_14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result p0

    if-ne p0, v2, :cond_c

    goto :goto_8

    :cond_c
    move v2, v3

    :goto_8
    return v2

    :pswitch_15
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "QCFA_SHOT"

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_KEEP_PREVIEW_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->QCFA_KEEP_PREVIEW:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_9

    :cond_d
    if-eqz p0, :cond_e

    const/16 p0, 0x23

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_a

    :cond_e
    :goto_9
    move v2, v3

    :cond_f
    :goto_a
    return v2

    :pswitch_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p0

    return p0

    :pswitch_17
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeLimited()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_b

    :cond_10
    move v2, v3

    :goto_b
    return v2

    :pswitch_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result p0

    return p0

    :pswitch_19
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/FsmContextHelper;->isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    return p0

    :pswitch_1a
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x4

    if-gt p0, p1, :cond_12

    if-lez p0, :cond_12

    goto :goto_d

    :cond_12
    :goto_c
    move v2, v3

    :goto_d
    return v2

    :pswitch_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeInOverlayState()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_e

    :cond_13
    move v2, v3

    :cond_14
    :goto_e
    return v2

    :pswitch_1c
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "SEQ_ID"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p2, :cond_15

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    goto :goto_f

    :cond_15
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_16

    if-eqz p0, :cond_16

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne p1, p0, :cond_16

    goto :goto_10

    :cond_16
    move v2, v3

    :goto_10
    return v2

    nop

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
