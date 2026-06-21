.class public final Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 5

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeMcfShotOnly()Z

    move-result p0

    const-string p1, "QCFA_SHOT"

    sget-object p3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "DO_REMOSAIC"

    .line 5
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;->isQcfaShotPossible(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x23

    .line 7
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    .line 10
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;->isQcfaShotPossible(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_3

    goto :goto_4

    .line 13
    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBgService()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 17
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v2, :cond_6

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->getSceneProcessingEstimate(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    move p0, v1

    goto :goto_3

    :cond_7
    :goto_2
    move p0, v0

    .line 20
    :goto_3
    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DETERMINATE_FG_PROCESSING_TIME"

    .line 21
    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    :goto_4
    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    .line 23
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNightMode()Z

    move-result p3

    if-nez p3, :cond_9

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJiganSIQNightVisionMode()Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_5

    :cond_8
    move p3, v1

    goto :goto_6

    :cond_9
    :goto_5
    move p3, v0

    .line 26
    :goto_6
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 27
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v2

    .line 28
    invoke-static {p2, v2}, Lcom/motorola/camera/IqConfigManager;->isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z

    move-result v2

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v3

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    move v0, v1

    .line 31
    :cond_b
    :goto_7
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;->FAST_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;

    if-nez p3, :cond_11

    if-nez v3, :cond_11

    if-eqz p1, :cond_c

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p3, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p3

    if-eqz p3, :cond_11

    :cond_c
    if-eqz p1, :cond_d

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result p1

    if-nez p1, :cond_11

    :cond_d
    if-nez v2, :cond_11

    .line 34
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_8

    .line 35
    :cond_e
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p2, p1, :cond_f

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf;->getSceneProcessingEstimate(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_f

    goto :goto_9

    :cond_f
    :goto_8
    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    move-object p1, v1

    goto :goto_a

    .line 37
    :cond_11
    :goto_9
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;->SLOW_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;

    .line 38
    :goto_a
    sget-object p2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sMoonChooseScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 39
    sget-object p3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p2, p3, :cond_12

    goto :goto_b

    :cond_12
    move-object v1, p1

    .line 40
    :goto_b
    const-string p1, "CAPTURE_EXPERIENCE"

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
