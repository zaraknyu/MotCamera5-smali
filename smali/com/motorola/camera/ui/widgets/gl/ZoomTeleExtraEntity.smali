.class public final Lcom/motorola/camera/ui/widgets/gl/ZoomTeleExtraEntity;
.super Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;ZZ)V
    .locals 0

    invoke-direct {p0, p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->isZoomBendingCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleExtraEntity;->isTeleExtraEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p1, p2, :cond_2

    invoke-static {p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleUltra()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->ZOOM_TELE_ULTRA_RATIO:F

    const p2, 0x3c23d70a    # 0.01f

    sub-float/2addr p1, p2

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomXByBlendingCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result p1

    :goto_1
    sget p2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->ZOOM_TELE_EXTRA_RATIO:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    new-instance p3, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final isTeleExtraEnabled()Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showTeleExtra()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mIsCliDisplay:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionCaptureSupportedByBackTeleCamera()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setVideoRecording(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mRecording:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleExtraEntity;->isTeleExtraEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    return-void
.end method

.method public final setupZoomConfig()V
    .locals 0

    return-void
.end method
