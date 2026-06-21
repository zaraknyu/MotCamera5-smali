.class public abstract Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {p0, v0, p1, p3}, Lcom/motorola/camera/SecureDataHelper;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    return-void
.end method

.method public static addTargetWithPhysicalCamera(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V
    .locals 4

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "phyCameraId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Ljava/util/TreeMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v3, p4, :cond_0

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->isHighRes:Z

    if-ne v2, p5, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Surface;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static containsTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    new-array v3, v0, [Z

    aput-boolean v0, v3, v2

    new-instance v4, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v3, p2, v5}, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-virtual {p0, v4, p1, p3}, Lcom/motorola/camera/SecureDataHelper;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    aget-boolean p0, v1, v2

    if-eqz p0, :cond_0

    aget-boolean p0, v3, v2

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public static enableMTKISPTuningData(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawStreamMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isIspHidlSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_CAPTURE_ISP_TUNING_DATA_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static enableQcBurstMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p2}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->mfnrBurstModeEnable:Z

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move p2, v1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_BURST_FPS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return p2

    :cond_1
    return v1
.end method

.method public static getActivePhysicalCameraTypeForInSensorCrop(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/settings/CameraType;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->MAIN:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static processMcfSceneMode(IILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getNextCaptureScene(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    invoke-virtual {p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfStreamingSupportedByCurrentMode(Z)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisableAppZslScenes:Ljava/util/HashSet;

    const-string v5, "ALL_SCENES"

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisableAppZslScenes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    sget-object v5, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$SceneMode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    const/4 v5, 0x2

    if-eq v1, v3, :cond_5

    if-eq v1, v5, :cond_5

    const/4 v6, 0x3

    if-eq v1, v6, :cond_4

    const/4 v6, 0x4

    if-eq v1, v6, :cond_2

    goto :goto_4

    :cond_2
    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->DISPLAY_FLASH_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_a

    aget p0, v0, v4

    if-nez p0, :cond_3

    :goto_1
    move p0, v3

    goto :goto_4

    :cond_3
    move p0, v5

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->LOW_LIGHT_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_a

    aget p0, v0, v4

    if-nez p0, :cond_3

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->SUPER_RESOLUTION_MODE_NEED_ENR_ON_PREVIEW:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move v6, v4

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    move v6, v3

    :goto_2
    if-nez v1, :cond_7

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->SUPER_RESOLUTION_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [I

    :cond_7
    if-eqz v1, :cond_9

    aget p0, v1, v4

    if-nez p0, :cond_8

    move p0, v3

    goto :goto_3

    :cond_8
    move p0, v5

    :cond_9
    :goto_3
    move v4, v6

    :cond_a
    :goto_4
    invoke-static {p2, p3, p4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setInSensorCropMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    invoke-static {p4, p2, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZslCropMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p4, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRawNVSceneStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSR()Z

    move-result p0

    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->SR_SCENE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p1, p4, p2, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {p2, p3, p4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setOISBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    if-nez v2, :cond_b

    iget-object p0, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    sget-object p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, p4, p2, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    return-void

    :cond_b
    iget-object p0, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    sget-object p1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p0, p4, p2, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    return-void
.end method

.method public static removeTarget(Lcom/motorola/camera/SecureDataHelper;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {p0, v0, p1, p3}, Lcom/motorola/camera/SecureDataHelper;->forSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceCallback;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    return-void
.end method

.method public static setAFSalinet(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_SUPPORTED_SALINET:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_ENABLE_SALINET:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static setAeFpsRange(IILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "IS_SKIP_RECONFIG"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_IS_SKIP_RECONFIG_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, p4, p2, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    const/4 p4, 0x3

    const-string v2, "CURRENT_PREVIEW_AE_FPS_RANGE"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p0, p4, :cond_1

    if-ne p1, v3, :cond_3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p0, Landroid/util/Range;

    aget p3, p1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aget p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/util/Range;

    invoke-virtual {p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p4

    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRtDepthMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p4, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_0

    :cond_5
    move-object v1, v6

    :goto_0
    if-nez v1, :cond_7

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p4, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [I

    :cond_6
    move-object v1, v6

    :cond_7
    if-eqz v1, :cond_9

    array-length v6, v1

    if-ne v6, v5, :cond_9

    aget v1, v1, v4

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getLimitedFpsRangeForTarget(I)Landroid/util/Range;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_8

    new-instance p1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {p1, v6, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    move-object p1, v1

    :cond_9
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    const/16 v6, 0xc

    if-ne v1, v6, :cond_a

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_SELECTIVE_COLOR_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p4, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_a

    array-length v6, v1

    if-ne v6, v5, :cond_a

    aget v1, v1, v4

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getLimitedFpsRangeForTarget(I)Landroid/util/Range;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object p1, v1

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_TILTSHIFT_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p4, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_b

    array-length v6, v1

    if-lt v6, v5, :cond_b

    aget v1, v1, v4

    if-lez v1, :cond_b

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getLimitedFpsRangeForTarget(I)Landroid/util/Range;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object p1, v1

    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyAllowedMode(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BEAUTIFICATION_LIMIT_FPS_NEED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p4, v1}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_e

    array-length v6, v1

    if-lt v6, v5, :cond_e

    aget v6, v1, v4

    sget-object v7, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BEAUTIFICATION_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p4, v7}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    if-eqz p4, :cond_e

    array-length v7, p4

    if-lt v7, v5, :cond_e

    aget v7, p4, v4

    const/16 v8, 0x12

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v8

    if-eqz v8, :cond_d

    array-length v8, v1

    if-lt v8, v3, :cond_c

    aget v6, v1, v5

    :cond_c
    array-length v1, p4

    if-lt v1, v3, :cond_d

    aget v7, p4, v5

    :cond_d
    if-ne v6, v5, :cond_e

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getLimitedFpsRangeForTarget(I)Landroid/util/Range;

    move-result-object p4

    if-eqz p4, :cond_e

    move-object p1, p4

    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p4

    invoke-static {v5, p4}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(ILcom/motorola/camera/settings/CameraType;)I

    move-result p4

    if-lez p4, :cond_f

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p4, :cond_f

    move v4, p4

    :cond_f
    if-eqz v4, :cond_10

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getLimitedFpsRangeForTarget(I)Landroid/util/Range;

    move-result-object p4

    if-eqz p4, :cond_10

    move-object p1, p4

    :cond_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoFamilyMode()Z

    move-result p4

    if-eqz p4, :cond_11

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/util/Size;

    invoke-virtual {p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p4

    invoke-static {p1, p4}, Lcom/motorola/camera/settings/SettingsHelper;->getCodecVideoFps(Landroid/util/Size;Z)Landroid/util/Range;

    move-result-object p1

    goto :goto_2

    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureOn()Z

    move-result p4

    if-eqz p4, :cond_12

    const/4 p4, 0x5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(ILcom/motorola/camera/settings/CameraType;)I

    move-result p4

    if-lez p4, :cond_12

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p4, :cond_12

    new-instance v1, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {v1, p1, p4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object p1, v1

    :cond_12
    :goto_2
    if-eqz p1, :cond_13

    sget-object p4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-ne p0, v5, :cond_13

    invoke-virtual {p3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    filled-new-array {p2, p1}, [I

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_13
    :goto_3
    return-void
.end method

.method public static setAiCameraMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mIsPreviewLimited:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->AI_CAMERA_CUSTOMIZED_LIMITED_SETS:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->AI_CAMERA_CUSTOMIZED_LIMITED_TYPE1:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/VideoFormat;

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->AI_CAMERA_SUPPORTED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mAiCameraConfigsMap:Ljava/util/Map;

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lcom/motorola/camera/ShotType;->isAiShotType()Z

    move-result p3

    if-eqz p3, :cond_4

    array-length p3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_4

    aget v2, v0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_AI_CAMERA_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    const/4 v2, 0x3

    if-ne v2, p0, :cond_3

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->ENABLE_AI_CAMERA_SNAPSHOT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public static setArcPtDataPtType(ILandroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ARC_PT_DATA_PTTYPE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setAutoFocusTrackingEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_FOCUS_TRACKING_AUTO_MODE:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_3

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :cond_3
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_ORIENTATION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static setAutoMacro(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUwSATFallbackSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSEnabled()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_W2UW_FALLBACK_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static setCShotEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    new-array p2, v1, [I

    aput v1, p2, v0

    goto :goto_0

    :cond_0
    new-array p2, v1, [I

    aput v0, p2, v0

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CS_KEY_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH_VIDEO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->APP_RTB_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH_SECONDARY:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    if-ne v1, v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    if-ne v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH_VIDEO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH3X:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    if-ne v1, v0, :cond_5

    const/4 v2, 0x3

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_APP_RTB_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_5
    const-string p0, "RequestBuilderHelper"

    const-string/jumbo p1, "setControlAppRtb: key expected but value is unknown"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public static setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x23

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2e

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CURRENT_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setDisplayFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashTorchModeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->DISPLAY_FLASH_STATUS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->DUAL_CAPTURE_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p0

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eq v1, v2, :cond_4

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static setEisMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabEnableAndSupport()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_EIS_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setExposureWhiteBalance(ILcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v9, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    iget-object v12, v12, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    iget-object v13, v13, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    iget-object v14, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCLIDisplayFlashAvailable()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {v2, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_0

    :cond_0
    sget-object v15, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    const/4 v10, 0x3

    if-ne v15, v3, :cond_3

    if-ne v10, v13, :cond_1

    invoke-virtual {v2, v9, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    if-nez v13, :cond_2

    invoke-virtual {v2, v9, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    if-ne v4, v13, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1, v2, v14}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTorchAutoRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto/16 :goto_0

    :cond_3
    if-ne v4, v13, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashTorchModeEnable()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v12, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1, v2, v14}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTorchAutoRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    :cond_4
    if-eq v7, v14, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2, v6, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-ne v10, v0, :cond_8

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->MTK_LED_FLASH_SEPARATE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v9, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-ne v7, v13, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashTorchModeEnable()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v12, :cond_6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-ne v10, v0, :cond_8

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->MTK_LED_FLASH_SEPARATE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v9, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    if-ne v10, v13, :cond_7

    invoke-virtual {v2, v9, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    if-nez v13, :cond_8

    invoke-virtual {v2, v9, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    :goto_0
    if-nez v12, :cond_a

    sget-object v0, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v0, v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    :cond_a
    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM_EXTENDED_MAX_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_EXTENDED_MAX_ZOOM_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static setFaceStatisticReporting(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->isFaceDetectionAllowed(Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->getSupportedMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCLIDisplayFlashAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFamilyMode(I)Z

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isAutoFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-enter p1

    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    monitor-enter p1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    :try_start_2
    iput v1, p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    iput v3, p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    :goto_0
    iget v1, p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    iput v1, p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCacheAfMode:I

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->setManualFocus(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LONG_EXPOSURE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne v0, v3, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->setManualFocus(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_4
    return-void
.end method

.method public static setInSensorCropMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isInSensorCropSupportedInSession()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropVendorTagsVersion:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_SUPPORT_IN_SENSOR_CROP_V2_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_SUPPORT_IN_SENSOR_CROP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    :goto_0
    invoke-virtual {v3, v2, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->getActivePhysicalCameraTypeForInSensorCrop(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isLogicalCamera(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_3
    sget-boolean v7, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    sget-object v7, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v7, v7, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    const-string v8, "ZoomHelper"

    if-nez v7, :cond_5

    const-string v7, "Missing zoom blending segments"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_1

    :cond_6
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_1

    :cond_7
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    array-length v11, v7

    if-lt v10, v11, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Zoom blending segment "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " out of range"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    aget v7, v7, v10

    mul-float/2addr v5, v7

    :cond_a
    :goto_2
    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v8, v8, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v7, v7, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomLowerThreshold:Ljava/lang/Double;

    iget-object v8, v8, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomLowerThreshold:Ljava/lang/Double;

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v10, v10, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v9, v9, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomUpperThreshold:Ljava/lang/Double;

    iget-object v10, v10, Lcom/motorola/camera/JsonConfig$InSensorCropData;->zoomUpperThreshold:Ljava/lang/Double;

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v1, "ISC_LUX_IDX_THRESH_MET"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_e

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object v1

    sget-object v12, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v12, v12, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxMeanThreshold:Ljava/lang/Double;

    iget-object v12, v12, Lcom/motorola/camera/JsonConfig$InSensorCropData;->luxIdxMeanThreshold:Ljava/lang/Double;

    invoke-static {v12}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/motorola/camera/JsonConfig$InSensorCropData;->getLuxIdxThreshold(Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide v12

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v1

    if-eqz v1, :cond_c

    float-to-double v14, v4

    cmpl-double v1, v14, v12

    if-lez v1, :cond_b

    move v1, v11

    goto :goto_3

    :cond_b
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    :cond_c
    float-to-double v14, v4

    cmpg-double v1, v14, v12

    if-gez v1, :cond_d

    move v1, v11

    goto :goto_4

    :cond_d
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_e
    :goto_5
    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->getInSensorCropConfigByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/JsonConfig$InSensorCropData;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$InSensorCropData;->scenes:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$InSensorCropData;->scenes:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    const-string v6, "ALL_SCENES"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_6

    :cond_f
    move v3, v2

    goto :goto_7

    :cond_10
    :goto_6
    move v3, v11

    :goto_7
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_11

    move v4, v2

    goto :goto_8

    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$InSensorCropData;->alwaysEnableModes:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    const/16 v6, 0x36

    invoke-static {v6}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_8

    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$InSensorCropData;->alwaysEnableModes:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-static {v4}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_8
    if-eqz v4, :cond_13

    :goto_9
    move v1, v11

    goto :goto_a

    :cond_13
    float-to-double v4, v5

    cmpl-double v6, v4, v7

    if-lez v6, :cond_14

    cmpg-double v4, v4, v9

    if-gez v4, :cond_14

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_9

    :cond_14
    move v1, v2

    :goto_a
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropDefaultConfig:Lcom/motorola/camera/JsonConfig$InSensorCropData;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$InSensorCropData;->allowedModes:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    move v4, v11

    goto :goto_b

    :cond_15
    invoke-static {v4}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_b
    if-eqz v1, :cond_16

    if-eqz v3, :cond_16

    if-eqz v4, :cond_16

    move v2, v11

    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInSensorCropEnableKey()Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    move-result-object v1

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v1, v0, v3, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "RequestBuilderHelper"

    const-string v1, "failed to set in_sensor_crop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_c
    return-void
.end method

.method public static setInsensorZoomForSession(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropEnableInSession:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isInSensorCropSupportedInSession()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_ENABLE_INSENSOR_ZOOM:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "RequestBuilderHelper"

    const-string p1, "failed to set EnableInsensorZoom"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setIsFaceBeautyCapture(ILandroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyComponentAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->IS_FACE_BEAUTY_CAPTURE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ISLIDCLOSED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ISMOTCAMERA_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->IS_PRO_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/VideoFormat;

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_HFPS_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_HFPS_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setMTKSmvrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/VideoHelper;->getMtkAvailableSmvrModes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;

    iget-object v3, v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mVideoSize:Landroid/util/Size;

    iget v4, v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mMaxFps:I

    iget-object v5, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mCustomBatchNum:I

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_SMVR_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    filled-new-array {v4, v0}, [I

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isHalZslEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_CAPTURE_AVAILABLE_ZSL_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_2

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, v1, v3

    const/4 v5, 0x1

    if-ne v5, v4, :cond_1

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_CAPTURE_ZSL_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    new-array v2, v5, [B

    aput-byte v5, v2, v0

    invoke-virtual {v1, p0, p1, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static setMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;ZZ)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-byte v0, p2

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    invoke-static {p3}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_NUMBER_OF_FRAMES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-byte v1, p2, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_ANCHOR_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget v1, p2, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->anchorSelectionMode:I

    invoke-static {v1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_ANCHOR_ALGO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget p2, p2, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->anchorSelectionAlgo:I

    invoke-static {p2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_0
    sget-object p2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->QC_MFNR_BURST:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_1

    if-nez p3, :cond_1

    invoke-static {p0, p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableQcBurstMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    :cond_1
    return-void

    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    const/16 p3, 0xff

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p0, p1, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_CAPTURE_EARLY_NOTIFICATION_TRIGGER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p0, p1, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static setMotZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isHalZslEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureOn()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCustomizedHalZslModes:Ljava/util/HashSet;

    const/16 v2, 0x36

    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCustomizedHalZslModes:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_CONTROL_CAPTURE_ZSL_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v2, 0x1

    new-array v3, v2, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, p0, p1, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CAPTURE_HINT_FOR_CUSTOM_TUNING_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_STREAM_HINT_FOR_CUSTOM_TUNING_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setMtkMultiframeBokeh(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isBackLogicalDepthCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_MBOKEH_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MTK_QUICK_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_QUICK_PREVIEW_ON:[I

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_QUICK_PREVIEW_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static setMtkSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMTKVideoSHDRFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_HDR_FEATURE_AVAILABLE_VIDEO_HDR_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MTK_VIDEO_SHDR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_HDR_FEATURE_HDR_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setMtkYuvNrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->ULTRA_RES_WITH_MTK_YUVNR:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_YUVNR_MODE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MULTI_CAMERA_FEATURE_MODE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_ENABLE_MULTICAME_VSDOF_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MULTI_CAMERA_FEATURE_MODE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v2, p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p0

    aget-boolean p0, v2, p0

    if-eqz p0, :cond_1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eq v1, v2, :cond_4

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static setOIS(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_4

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->OIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v1, p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-ne v0, p0, :cond_1

    :cond_3
    :goto_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static setOISBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_HDR_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_NV_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_OIS_BOKEH_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_OIS_BOKEH_FORCE_SETTING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v4

    :goto_3
    const/4 p1, -0x1

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FOCAL_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->values()[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v1

    aget-object v0, v1, v0

    const-string/jumbo v1, "segment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->oisBokehCamId:Ljava/lang/Integer;

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_6
    :goto_5
    filled-new-array {v3, p1}, [I

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->OIS_BOKEH_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p2, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setPreviewEisInVideo(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_SUPPORT_PREVIEW_EIS_IN_VIDEO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/motorola/camera/settings/Setting;->mEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_EIS_FEATURE_PREVIEW_EIS_ON:[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_EIS_FEATURE_PREVIEW_EIS_OFF:[I

    :goto_0
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_STREAMING_FEATURE_PIP_PREVIEW_EIS:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setRawNVSceneStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$SceneMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->RAW_NV_SCENE_STATUS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setRecordMirror(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_MIRROR_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_MIRROR_TYPE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz v0, :cond_4

    sget p3, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "VIDEO_RECORDING"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "VIDEO_START_ORIENTATION"

    invoke-virtual {p0, v0, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    :cond_1
    const/16 p0, 0x10e

    if-eq p0, p3, :cond_3

    const/16 p0, 0x5a

    if-ne p0, p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x2

    :goto_1
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_MIRROR_TYPE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p1, p2, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMacroCameraWithWideSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-byte p2, p2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_MACRO_FLASH_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->mCachedAfRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSHDRFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_SUPPORTED_HDR_MODES:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_MANUAL_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v5

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_ENABLE_SHDR:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setSettingsOverrideZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SETTINGS_OVERRIDES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda10;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SETTINGS_OVERRIDE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setStillFlip(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/16 v0, 0x10e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/16 v0, 0x5a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_STILL_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_STILL_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_STILL_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SUPER_ZOOM_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_TINTLESS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void
.end method

.method public static setTorchAutoRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-eq p0, p2, :cond_1

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setUwDcAppProcess(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFamilyMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->APP_UWDC_PROCESS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v2}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    int-to-byte v0, v1

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_CONTROL_APP_UWDC_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static setVideoAutoFps(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoAutoFpsAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoAutoFpsSupport(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_AUTO_FPS_SESSION_PARAM_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p2, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "VIDEO_AUTO_FPS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_AUTO_FPS_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data
.end method

.method public static setVideoHDR10Mode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10PlusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->HDR_VIDEO_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_HDR_VIDEO_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static setVideoIqDynamicFps(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_IQ_DYNAMIC_FPS_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_AUTO_FPS_SESSION_PARAM_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoIqDynamicFpsAllow()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_IQ_DYNAMIC_FPS_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data
.end method

.method public static setVideoNightVision(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionFHDSupported()Z

    move-result v2

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/motorola/camera/settings/Setting;->mEnabled:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v5, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0x18

    if-ne v2, v6, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getVideoNVMaxFpsSupported()I

    move-result v2

    if-ne v2, v6, :cond_4

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVision4KSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_NIGHT_VISION_JIGAN_SESSION_PARAM_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :cond_4
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_NIGHT_VISION_VSTAB_VIULL_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionKeySupported(Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_5
    iget-object v0, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_8

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_IQ_DYNAMIC_FPS_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoIqDynamicFpsAllow()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_NIGHT_VISION_VIULL_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionKeySupported(Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_NIGHT_VISION_VIULL_SESSION_PARAM_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public static setVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabEnableAndSupport()Z

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setVstabIhc(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    iget-boolean v1, v0, Lcom/motorola/camera/settings/Setting;->mEnabled:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->VSTAB_IHC_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    const-string v3, "VSTAB_IHC_REQUEST_VALUE"

    const/4 v4, 0x0

    if-eqz p3, :cond_5

    if-eqz v1, :cond_1

    const/16 p3, 0xb4

    if-ne v1, p3, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/16 p3, 0x5a

    if-ne v1, p3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p3, 0x10e

    if-ne v1, p3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v2, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    invoke-virtual {p0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_1
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->VSTAB_IHC_TYPE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public static setVstabPzsEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->PZS_APPLIED_TO_ALL_SAT_PHOTO_MODES:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_SUPPORT_VSTAB_PZS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_VSTAB_PZS_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda10;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setVstabSmartEis(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartEisSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabEnableAndSupport()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->VSTAB_SMART_EIS_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    invoke-static {v0, p0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoomRect(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static setZoomRect(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    aget v3, v2, v1

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    aget v2, v2, v4

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    move v1, v4

    :cond_0
    if-eqz v1, :cond_1

    div-float/2addr v3, v0

    invoke-static {v3, p0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomRect(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    move-result-object p2

    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_SUPERREMOSAIC_SWITCH_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result p2

    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p2, v1, p2

    float-to-double v2, p2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p2, 0x5

    const/4 v2, 0x4

    invoke-virtual {v0, p2, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_IS_UI_ZOOM_RATIO_SUPPORTED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_UI_ZOOM_RATIO:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManual(FLcom/motorola/camera/settings/CameraType;)F

    move-result p2

    :cond_4
    cmpg-float v0, p2, v1

    if-gez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq p0, v0, :cond_6

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    move v1, p2

    :cond_6
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result p0

    cmpl-float p2, v1, p0

    if-lez p2, :cond_7

    move v1, p0

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPzs4XMappingNeeded()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/utility/ZoomHelper;->PSZ_4X_RANGE:Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_8
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setZslCropMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 2

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->ZSL_CROP_SUPPORTED_LEVEL_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_ZSL_CROP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "RequestBuilderHelper"

    const-string p1, "failed to set zsl_crop"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static setupCodecVideoRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 3

    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void
.end method

.method public static setupMotoFlashTuning(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 3

    iget-object v0, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMotoFlashTuningEnable:[Z

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-boolean v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOTO_FLASH:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    instance-of v0, p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;->applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V

    :cond_1
    return-void
.end method
