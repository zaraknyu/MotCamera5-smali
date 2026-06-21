.class public final Lcom/motorola/camera/ui/widgets/gl/ZoomMain2XEntity;
.super Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.source "SourceFile"


# virtual methods
.method public final setVideoRecording(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mRecording:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->keepEnableWhileRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    return-void

    :cond_2
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showMain2x()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mIsCliDisplay:Z

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    return-void
.end method

.method public final setupZoomConfig()V
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->isZoomBendingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showMain2x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mIsCliDisplay:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActionShotZoomSegments:Ljava/util/Map;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_2

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    :goto_2
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigSegments:[F

    const/4 v3, 0x2

    aget v4, v2, v3

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isTeleDisabledForGroupShot()Z

    move-result v1

    if-nez v1, :cond_5

    aget v1, v2, v3

    const v2, 0x3c23d70a    # 0.01f

    sub-float/2addr v1, v2

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v1

    :goto_3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    new-instance v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    return-void
.end method
