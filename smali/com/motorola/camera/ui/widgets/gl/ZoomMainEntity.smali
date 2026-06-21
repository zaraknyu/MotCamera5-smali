.class public final Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;
.super Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.source "SourceFile"


# virtual methods
.method public final isBackMainEnabled()Z
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mIsCliDisplay:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResKnifeSwitchCase()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDepthKnifeSwitchCase()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureSupportedByBackTeleCamera()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isArcLongExposureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_RAW_PT_SUPPORT:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCaptureSensorCombination()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureCameraGroupType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_4
    :goto_2
    if-eqz v4, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    if-eqz p0, :cond_5

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq v3, p0, :cond_6

    goto :goto_3

    :cond_5
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq v0, p0, :cond_6

    :goto_3
    return v1

    :cond_6
    return v2

    :cond_7
    return v0
.end method

.method public final setVideoRecording(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mRecording:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->keepEnableWhileRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;->isBackMainEnabled()Z

    move-result p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontKnifeSwitchAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    :goto_2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    return-void
.end method

.method public final setupZoomConfig()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDepthKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->isZoomBendingCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;->isBackMainEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigSegments:[F

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    aget v3, v2, v1

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showMain2x()Z

    move-result v4

    if-eqz v4, :cond_3

    const v0, 0x3ffeb852    # 1.99f

    :cond_2
    :goto_1
    move v1, v3

    goto :goto_4

    :cond_3
    const/4 v4, 0x2

    aget v5, v2, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isTeleDisabledForGroupShot()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-boolean v5, Landroidx/compose/runtime/Latch;->mVirtualTeleEnabled:Z

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTeleVisibleInKnifeSwitchCase()Z

    move-result v5

    if-nez v1, :cond_6

    if-eqz v5, :cond_2

    :cond_6
    if-eqz v1, :cond_7

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomSwitchDownInterval()F

    move-result v0

    :goto_3
    aget v1, v2, v4

    sub-float v0, v1, v0

    goto :goto_1

    :cond_8
    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    new-instance v2, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    return-void

    :cond_9
    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_5
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontKnifeSwitchAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    new-instance v2, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    return-void
.end method
