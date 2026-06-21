.class public abstract Lcom/motorola/camera/settings/ModeSettingsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static adjustSliderMode(II)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->saveSlider(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public static convertSmallCliToSliderMode(I)I
    .locals 4

    const/16 v0, 0x12

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSmallCliSlider()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    return p0
.end method

.method public static convertToRealMode(I)I
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isFilterVideoMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_VIDEO_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/meishe/MeisheEffects;->isOriginalFilter(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/16 p0, 0x34

    :cond_2
    return p0
.end method

.method public static convertToSliderMode(I)I
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x1f

    const/16 v2, 0x18

    if-eq p0, v2, :cond_6

    if-ne p0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x12

    const/4 v2, 0x6

    if-eq p0, v2, :cond_4

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x2e

    if-eq p0, v1, :cond_3

    const/16 v1, 0x34

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x2f

    if-ne p0, v1, :cond_8

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_6
    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v2

    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    return p0
.end method

.method public static getBackCameraType(IZ)Lcom/motorola/camera/settings/CameraType;
    .locals 3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_4

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/settings/CameraType;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH3X:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH1X:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH_SECONDARY:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_4
    const/16 v0, 0x18

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_5
    const/16 v0, 0x32

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->zoomBlendingSupportedModes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->decideCameraType(IIZ)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultSlider()Ljava/util/ArrayList;
    .locals 10

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v7, v7, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v7, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_0
    sget-object v7, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->SLIDER_DEFAULT_NIGHT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v9, v7, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v9, Ljava/util/EnumSet;

    iget-object v7, v7, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v7, Ljava/util/EnumSet;

    invoke-virtual {v9, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DEPTH_ENABLED:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v7, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v6

    :cond_3
    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->SLIDER_DEFAULT_DUAL_VIDEO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->DEPTH_ENABLED:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v6

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->SLIDER_DEFAULT_SCAN:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderStyleSlowMotion()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v6

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanSupported()Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->SLIDER_ADOBE_SCAN:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderStyleSlowMotion()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v6

    :cond_9
    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->PERFECT_ME:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->NO_SLOW_MOTION_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v7, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->DEPTH_ENABLED:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v6

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderStyleSlowMotion()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v6
.end method

.method public static getMenuOrder()Ljava/util/ArrayList;
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->MODES_ORDER:Ljava/util/ArrayList;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static getModeSupportFacing(IZ)Ljava/util/ArrayList;
    .locals 8

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x2

    if-eq p0, v7, :cond_16

    const/16 v7, 0x27

    if-eq p0, v7, :cond_16

    const/16 v7, 0x28

    if-eq p0, v7, :cond_16

    const/16 v7, 0x31

    if-eq p0, v7, :cond_16

    const/16 v7, 0x33

    if-ne p0, v7, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v7, 0x9

    if-ne p0, v7, :cond_1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1
    const/16 v7, 0x30

    if-ne p0, v7, :cond_2

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    const/16 v7, 0x1d

    if-eq p0, v7, :cond_15

    const/16 v7, 0x22

    if-eq p0, v7, :cond_15

    const/16 v7, 0x23

    if-ne p0, v7, :cond_3

    goto/16 :goto_2

    :cond_3
    if-eq p0, v2, :cond_10

    if-ne p0, v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p1, v0}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_7
    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_17

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_17

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_9
    const/16 p1, 0x18

    if-eq p0, p1, :cond_e

    const/16 p1, 0x1f

    if-ne p0, p1, :cond_a

    goto :goto_0

    :cond_a
    const/16 p1, 0x2f

    if-ne p0, p1, :cond_b

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    const/16 p1, 0x32

    if-ne p0, p1, :cond_c

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_c
    const/16 p1, 0x37

    if-ne p0, p1, :cond_d

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_e
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightSupported()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitSupported()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_10
    :goto_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    if-nez p1, :cond_12

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    if-eqz p0, :cond_14

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_12
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    if-eqz p0, :cond_14

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v6

    :cond_14
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_15
    :goto_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_16
    :goto_3
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_4
    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_18
    return-object v6
.end method

.method public static getPreviewRatio(IIFZZ)F
    .locals 4

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p0, v0, :cond_3

    if-eqz p4, :cond_0

    return p2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/PreviewSize$AspectRatio;->values()[Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    array-length p1, p0

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object p4, p0, v1

    iget-object v0, p4, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v3, v0, p3

    if-gez v3, :cond_1

    iget-object p3, p4, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p3}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p3

    move v2, p3

    move p3, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_4
    const/4 p2, 0x2

    if-ne p0, p2, :cond_5

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_5
    const/16 p2, 0x9

    if-ne p0, p2, :cond_7

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    :cond_6
    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getAspectRatio(Landroid/util/Size;)F

    move-result p0

    return p0

    :cond_7
    const/16 p2, 0x27

    if-eq p0, p2, :cond_1e

    const/16 p2, 0x31

    if-ne p0, p2, :cond_8

    goto/16 :goto_6

    :cond_8
    const/16 p2, 0x28

    if-ne p0, p2, :cond_9

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_9
    const/16 p2, 0x22

    if-ne p0, p2, :cond_a

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_a
    const/4 p2, 0x3

    if-ne p0, p2, :cond_c

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    if-eqz p4, :cond_b

    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->CLI_HD_WIDESCREEN_ASPECT_RATIO:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object p1, p1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    div-float/2addr v2, p0

    return v2

    :cond_b
    return p0

    :cond_c
    const/16 p2, 0x2f

    if-ne p0, p2, :cond_d

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    invoke-static {p0, p2, p4}, Lcom/motorola/camera/settings/SettingsHelper;->isStandardAspectRatioMode(ILcom/motorola/camera/settings/CameraType;Z)Z

    move-result p2

    if-eqz p2, :cond_e

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_e
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFamilyMode(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_17

    const/4 p2, 0x4

    if-ne p0, p2, :cond_f

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_f

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Landroid/util/Size;

    invoke-static {p2}, Lcom/motorola/camera/utility/ColorUtil;->getAspectRatio(Landroid/util/Size;)F

    move-result p2

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v2, v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float p2, p2, v2

    if-gez p2, :cond_f

    iget-object p0, v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_f
    if-eqz p4, :cond_11

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    iget-object p3, p0, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast p3, Landroid/util/Size;

    invoke-virtual {p1, p2, p0, p3}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/util/Size;

    :cond_10
    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    return p0

    :cond_11
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    if-eqz p3, :cond_12

    iget-object p0, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Landroid/util/Size;

    goto :goto_1

    :cond_12
    if-ne p1, v0, :cond_13

    invoke-static {p0, p4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getBackCameraType(IZ)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    iget-object p3, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object p4, p2, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast p4, Landroid/util/Size;

    invoke-virtual {p3, p0, p2, p4}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    goto :goto_1

    :cond_13
    iget-object p0, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object p3, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    iget-object p4, p2, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast p4, Landroid/util/Size;

    invoke-virtual {p0, p3, p2, p4}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result p2

    if-nez p2, :cond_14

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0

    :cond_14
    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    sget-object p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p2, p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p2

    invoke-static {p0, p2}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result p2

    if-eqz p2, :cond_16

    if-ne p1, v0, :cond_15

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_2

    :cond_15
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_2
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getTargetPreviewRatio(FLcom/motorola/camera/settings/CameraType;)F

    move-result p0

    :cond_16
    return p0

    :cond_17
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object v3, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    if-eqz p3, :cond_18

    goto :goto_4

    :cond_18
    if-ne p1, v0, :cond_19

    invoke-static {p0, p4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getBackCameraType(IZ)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    iget-object p3, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p3, p0, p2, v3}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    goto :goto_4

    :cond_19
    if-eqz p4, :cond_1a

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_3

    :cond_1a
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_3
    iget-object p3, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p3, p0, p2, v3}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    :goto_4
    iget-object p0, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result p3

    if-nez p3, :cond_1b

    invoke-static {p4, v1, v1}, Lcom/motorola/camera/settings/SettingsManager;->setInitialVideoSize(ZZZ)V

    iget-object p0, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    :cond_1b
    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    cmpg-float p2, p0, v2

    if-gez p2, :cond_1d

    if-ne p1, v0, :cond_1c

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_5

    :cond_1c
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_5
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getTargetPreviewRatio(FLcom/motorola/camera/settings/CameraType;)F

    move-result p0

    :cond_1d
    return p0

    :cond_1e
    :goto_6
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    return p0
.end method

.method public static getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    iget v1, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v1

    div-float/2addr v2, p0

    float-to-int p0, v2

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object p0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    invoke-static {p3}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p2, p2

    div-float/2addr p2, v3

    iput p2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    :cond_1
    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p2

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    move p2, p3

    :cond_2
    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v1, v0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v2, p0

    invoke-direct {p1, v1, v2, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-object p1
.end method

.method public static getSlider(Z)Ljava/util/ArrayList;
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mCaptureRequest:I

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0

    :cond_4
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getDefaultSlider()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_7

    aget-object v6, v3, v5

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getDefaultSlider()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "menu list data error:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getDefaultSlider()Ljava/util/ArrayList;

    move-result-object v0

    :cond_9
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v1

    if-eqz p0, :cond_a

    const/4 p0, -0x1

    if-eq v1, p0, :cond_a

    const/16 p0, 0x3e8

    if-eq v1, p0, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    return-object v0
.end method

.method public static getSliderLeftMode(I)I
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    if-ne v2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ne p0, v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_2

    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result p0

    return p0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result p0

    return p0
.end method

.method public static getSliderMenuMode()I
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/16 v0, 0x3e8

    return v0
.end method

.method public static getSliderStyleSlowMotion()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->NO_SLOW_MOTION_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v3, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->DEPTH_ENABLED:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v1, v1, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSmallCliSlider()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTargetPreviewRatio(FLcom/motorola/camera/settings/CameraType;)F
    .locals 6

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getPreviewSizes(Lcom/motorola/camera/settings/CameraType;)[Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->transformFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 v1, 0x4f000000

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/PreviewSize;

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v4

    sub-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    move-object v2, v3

    move v1, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const p1, 0x3dcccccd    # 0.1f

    cmpg-float p1, v1, p1

    if-gez p1, :cond_2

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    :cond_2
    return p0
.end method

.method public static isDefaultSlider()Z
    .locals 9

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getDefaultSlider()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_9

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x12

    const/4 v7, 0x6

    if-eq v4, v7, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v5

    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v7, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_2

    goto :goto_3

    :cond_2
    move v5, v1

    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    if-nez v5, :cond_4

    goto :goto_5

    :cond_4
    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getMenuOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->MODES_ORDER:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    invoke-direct {v5, v4}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_8
    :goto_4
    return v5

    :cond_9
    :goto_5
    return v1
.end method

.method public static resetSliderMenuMode()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e8

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveSlider(Ljava/util/ArrayList;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setMenuOrder(Ljava/util/ArrayList;)V
    .locals 4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSliderMenuMode(I)V
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move p0, v0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static sliderContainMode(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
