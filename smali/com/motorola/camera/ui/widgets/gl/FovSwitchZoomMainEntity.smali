.class public final Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomMainEntity;
.super Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.source "SourceFile"


# virtual methods
.method public final setupZoomConfig()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getSelfieFovSwitchValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    new-instance v1, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    return-void
.end method
