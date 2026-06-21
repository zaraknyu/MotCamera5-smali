.class public final Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.source "SourceFile"


# virtual methods
.method public final getCaptureBarGuideLine()F
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x41e00000    # 28.0f

    sub-float/2addr v0, p0

    const/high16 p0, 0x42100000    # 36.0f

    sub-float/2addr v0, p0

    const/high16 p0, 0x41900000    # 18.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method public final getCaptureBarHeight()F
    .locals 0

    const/high16 p0, 0x42900000    # 72.0f

    return p0
.end method

.method public final getIndicatorBarMarginHeight()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;
    .locals 6

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    move-object p1, v0

    :cond_2
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_3

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_2

    :cond_3
    iget v0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_2
    if-eqz p0, :cond_4

    iget p0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_3

    :cond_4
    iget p0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_3
    iget p2, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, p2

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    const v0, 0x3cf5c28f    # 0.03f

    sub-float v2, v1, v0

    cmpg-float v2, p0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_5

    div-float v2, p0, v1

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    sub-float v0, p0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_6

    div-float/2addr v1, p0

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    sget p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    new-instance v0, Lcom/google/zxing/Result;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/Result;-><init>(IZ)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    int-to-float p0, p0

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    iput-object v4, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    int-to-float p1, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    mul-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p2, v4

    mul-float/2addr p2, v2

    invoke-direct {p0, p1, p2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object p0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    return-object v0
.end method

.method public final getToggleBarGuideLine()F
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;->getCaptureBarGuideLine()F

    move-result p0

    const/high16 v0, 0x42100000    # 36.0f

    sub-float/2addr p0, v0

    const/high16 v0, 0x42080000    # 34.0f

    sub-float/2addr p0, v0

    return p0
.end method

.method public final getTrait()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getTsbMarginHeight()F
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
