.class public abstract Lcom/motorola/camera/SkinToneDetection;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final setupCustomScene(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    const-string v0, "cameraType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneDetectionEnabled:Z

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_6

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, p0

    :goto_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, p0

    :goto_2
    invoke-static {}, Lcom/motorola/camera/SkinToneDetection$SkinTone;->values()[Lcom/motorola/camera/SkinToneDetection$SkinTone;

    move-result-object v3

    array-length v4, v3

    move v5, p0

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    sget-object v7, Lcom/motorola/camera/SkinToneDetection$SkinTone;->NONE:Lcom/motorola/camera/SkinToneDetection$SkinTone;

    if-eq v6, v7, :cond_4

    iget v6, v6, Lcom/motorola/camera/SkinToneDetection$SkinTone;->value:I

    if-ne v6, v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v1, p0

    :goto_4
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_6
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneSkuMapping:Ljava/util/Map;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneCountryMapping:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v2}, Lcom/motorola/camera/CountryDetector;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/SkinToneDetection$SkinTone;->NONE:Lcom/motorola/camera/SkinToneDetection$SkinTone;

    invoke-interface {p0, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/SkinToneDetection$SkinTone;

    if-ne p0, v4, :cond_9

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/SkinToneDetection$SkinTone;

    :cond_9
    if-eq p0, v4, :cond_b

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget p0, p0, Lcom/motorola/camera/SkinToneDetection$SkinTone;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_a
    :goto_5
    const-string p0, "SkinToneDetection"

    const-string p1, "Skin Tone Mappings are empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    return-void
.end method
