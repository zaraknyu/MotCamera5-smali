.class public final Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final mCaptureType:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;->mCaptureType:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move p2, v1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionMcfSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "QCFA_SHOT"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v4

    invoke-static {p1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v6

    :goto_2
    if-nez v5, :cond_7

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFocusLockNeeded()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v0

    :goto_4
    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFocusLockNeeded()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v7, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_FOCUS_LOCK_FOR_NV:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v6, v6, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v6, Ljava/util/EnumSet;

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v5, v1

    :cond_8
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result v6

    if-eqz v6, :cond_9

    move v4, v1

    :cond_9
    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-nez v2, :cond_b

    if-eqz p2, :cond_a

    if-nez v5, :cond_a

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    :cond_b
    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result p2

    if-eqz p2, :cond_d

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_c

    move p2, v0

    goto :goto_6

    :cond_c
    move p2, v1

    :goto_6
    const-string v2, "CAPTURE_STAR_TRAIL"

    invoke-virtual {p1, v2, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->LONG_EXP:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTypeGuardRunnable;->mCaptureType:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne p0, v6, :cond_e

    return v0

    :cond_e
    return v1
.end method
