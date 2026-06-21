.class public abstract Lcom/motorola/camera/fsm/camera/FsmContextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertEvListToEvInfo([I)[I
    .locals 9

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_2

    aget v6, p0, v3

    mul-int/lit8 v7, v4, 0x3

    aput v6, v0, v7

    const/4 v8, 0x1

    if-nez v5, :cond_0

    if-eqz v6, :cond_0

    move v5, v8

    :cond_0
    if-nez v5, :cond_1

    add-int/lit8 v6, v7, 0x1

    aput v2, v0, v6

    add-int/lit8 v7, v7, 0x2

    aput v2, v0, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v7, 0x1

    aput v8, v0, v6

    add-int/lit8 v7, v7, 0x2

    aput v8, v0, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getAntiBandingMode(Lcom/motorola/camera/fsm/camera/FsmContext;)I
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->MCF_HW_FLICKER_DETECT_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const-string v1, "ANTI_BANDING_MODE"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isLongExposureCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CAPTURE_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->LONG_EXP:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStarTrailCapture(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CAPTURE_STAR_TRAIL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
