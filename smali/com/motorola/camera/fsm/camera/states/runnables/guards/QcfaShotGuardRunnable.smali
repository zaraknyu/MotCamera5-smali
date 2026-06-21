.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "QCFA_ANALOG_GAIN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mAnalogGainThreshold:F

    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isQcfaShotPossible(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEffectNoticeable()Z

    move-result v0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v0, :cond_7

    if-eqz v2, :cond_1

    goto :goto_5

    :cond_1
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGainOnlyQcfaDecision:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;->isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    goto :goto_5

    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v3

    :goto_2
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_6

    const/4 v4, 0x3

    if-ne v4, v2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v2, v3

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result v5

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;->isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-eqz p0, :cond_7

    move v1, v3

    :cond_7
    :goto_5
    if-nez v1, :cond_8

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_IGNORE_SHOT_CONDITIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "QcfaShotGuardRunnable"

    const-string v0, "Result is false, but forcing remosaic shot due to debug flag"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    move v3, v1

    :goto_6
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->mKeyExistsMap:Ljava/util/HashMap;

    return v3

    :cond_9
    return v1
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 0

    const/16 p0, 0x23

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;->isQcfaShotPossible(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
