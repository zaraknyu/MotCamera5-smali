.class public abstract Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mDisplayCutout:Landroid/view/DisplayCutout;

.field public mDisplayDensity:F

.field public mHeightDp:F

.field public mInsets:Landroid/graphics/Insets;

.field public mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public mPreviewArea:Landroid/graphics/Rect;

.field public mSurfaceDensity:F

.field public mWidthDp:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public static getDefaultPreviewAspect()F
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const v1, 0x3faaaaab

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->NON_STANDARD_PREVIEW_ASPECT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract getCaptureBarGuideLine()F
.end method

.method public getCaptureBarHeight()F
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiBottomAlign:I

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v3, 0x1

    const/high16 v4, 0x42600000    # 56.0f

    if-eq v0, v3, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize(I)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize(I)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p0

    sub-float/2addr v0, p0

    sub-float/2addr v0, v4

    return v0

    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize(I)F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p0

    sub-float/2addr v0, p0

    sub-float/2addr v0, v4

    return v0
.end method

.method public getCaptureBarMarginDimen()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getControlBarGuideline()F
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    return p0
.end method

.method public getCurrentDimen(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDualCapturePIPHorizontalGuideline()F
    .locals 3

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07012f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getDualCapturePIPVerticalGuideline()F
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const v2, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p0, v2

    add-float/2addr p0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07012f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getDualCaptureSplitVerticalGuideline()F
    .locals 2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070130

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0701a6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getFilterToggleBarOffset()F
    .locals 1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070475

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 v0, 0x42880000    # 68.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final getIndicatorBarAndTopMargin()F
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method public final getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F
    .locals 3

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v2, v1

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v1

    div-float/2addr v1, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, p0

    sub-float/2addr p1, v1

    return p1
.end method

.method public getIndicatorBarHeight()F
    .locals 0

    const/high16 p0, 0x42a00000    # 80.0f

    return p0
.end method

.method public abstract getIndicatorBarMarginHeight()F
.end method

.method public getMode()Lcom/motorola/camera/ui/layoutmanager/ModeValue;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->Normal:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    return-object p0
.end method

.method public getModeCarouselY()F
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->carouselBottom:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    iget v3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    sub-float/2addr v3, p0

    const/high16 p0, 0x41c00000    # 24.0f

    sub-float/2addr v3, p0

    cmpg-float p0, v2, v3

    const/high16 v2, 0x41e00000    # 28.0f

    if-gez p0, :cond_0

    add-float/2addr v1, v2

    return v1

    :cond_0
    add-float/2addr v0, v2

    return v0
.end method

.method public getModeSliderY()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOriginalPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)Lcom/google/zxing/Result;
    .locals 7

    .line 2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v1, :cond_2

    .line 6
    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayOrientation:I

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v0

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    .line 8
    new-instance p1, Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 9
    :cond_4
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    if-eqz v4, :cond_5

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_3

    :cond_5
    iget v0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_3
    if-eqz v4, :cond_6

    .line 10
    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_4

    :cond_6
    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    .line 11
    :goto_4
    iget v1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    div-float v2, v1, p1

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    const v0, 0x3cf5c28f    # 0.03f

    sub-float v3, v2, v0

    cmpg-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v3, :cond_7

    div-float v3, p2, v2

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    sub-float v0, p2, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_8

    div-float/2addr v2, p2

    goto :goto_6

    :cond_8
    move v2, v4

    .line 12
    :goto_6
    new-instance p2, Lcom/google/zxing/Result;

    const/16 v0, 0x15

    const/4 v5, 0x0

    .line 13
    invoke-direct {p2, v0, v5}, Lcom/google/zxing/Result;-><init>(IZ)V

    .line 14
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    iput-object v0, p2, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p1, v6

    mul-float/2addr p1, v2

    div-float/2addr v1, v6

    mul-float/2addr v1, v3

    invoke-direct {v0, p1, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v0, p2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    if-eqz p3, :cond_9

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    if-eqz p0, :cond_9

    .line 17
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    div-float/2addr p0, v6

    invoke-direct {p1, p0, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object p1, p2, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    :cond_9
    return-object p2

    .line 18
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 21
    const-string p2, "Missing characteristic for camera %s, Error: %08X"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPreviewTopMarginSize(I)F
    .locals 1

    invoke-static {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p0

    add-float/2addr p0, p1

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    return p0
.end method

.method public getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScanDetectOffset()F
    .locals 0

    const/high16 p0, 0x42400000    # 48.0f

    return p0
.end method

.method public getToggleBarGuideLine()F
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v1

    const v2, 0x3faaaaab

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v1

    return p0
.end method

.method public getToggleBarMarginDimen()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTrait()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTsbMarginHeight()F
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v0, p0

    return v0
.end method

.method public getVideoRecordingTopMargin()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getYOffsetIfNotWideScreen()F
    .locals 2

    .line 57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 60
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 61
    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 62
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 12

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    .line 2
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget v3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    .line 5
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    iget-object v3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 6
    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v2

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v3

    const v4, 0x3cf5c28f    # 0.03f

    sub-float v4, v2, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    div-float v2, v3, v2

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    :goto_0
    iget v4, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 9
    new-instance v5, Lcom/motorola/camera/PreviewSize;

    .line 10
    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p1, v5}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    .line 11
    iget v6, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v9

    add-float/2addr v9, v8

    mul-float/2addr v9, v0

    sub-float/2addr v6, v9

    .line 13
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    iget-boolean v8, v8, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    :goto_1
    move v6, v9

    goto/16 :goto_8

    .line 15
    :cond_2
    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p1, v8}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v8

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v8, :cond_5

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 17
    iget v2, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    if-ne v2, v11, :cond_3

    .line 18
    iget p0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    sub-float/2addr p0, v4

    div-float/2addr p0, v7

    .line 19
    iget p1, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Margin:I

    :goto_2
    int-to-float p1, p1

    mul-float/2addr p1, v0

    sub-float v6, p0, p1

    goto/16 :goto_8

    :cond_3
    if-ne v2, v10, :cond_4

    .line 20
    iget p0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_3
    int-to-float p0, p0

    sub-float/2addr p0, v4

    div-float v6, p0, v7

    goto/16 :goto_8

    :cond_4
    const/4 p1, 0x5

    if-ne v2, p1, :cond_12

    .line 21
    iget p1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    sub-float v1, p1, v4

    neg-float v1, v1

    div-float/2addr v1, v7

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result p0

    mul-float/2addr p0, v0

    sub-float/2addr p1, p0

    const/high16 p0, 0x42880000    # 68.0f

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    add-float v6, v0, v1

    goto/16 :goto_8

    .line 23
    :cond_5
    invoke-static {p1, v5}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 25
    iget v2, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    if-ne v2, v11, :cond_6

    .line 26
    iget v2, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v7

    .line 27
    iget p1, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Margin:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    sub-float v6, v2, p1

    goto :goto_4

    .line 28
    :cond_6
    iget p1, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 29
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p1

    mul-float/2addr p1, v0

    add-float/2addr v6, p1

    goto :goto_4

    :cond_7
    if-ne p1, v10, :cond_8

    .line 30
    iget p1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    sub-float/2addr p1, v4

    div-float v6, p1, v7

    .line 31
    :cond_8
    :goto_4
    iget p1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    sub-float/2addr p1, v4

    div-float/2addr p1, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    int-to-float p0, p0

    cmpg-float p1, p1, p0

    if-gez p1, :cond_12

    .line 32
    iget p1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    sub-float/2addr p1, v4

    div-float/2addr p1, v7

    .line 33
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p1, v0

    :goto_5
    sub-float/2addr p0, p1

    add-float/2addr v6, p0

    goto/16 :goto_8

    .line 34
    :cond_9
    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p1, v5}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 35
    invoke-static {v1, v5}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableDebugPreviewSize()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x3f733333    # 0.95f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_a

    .line 37
    iget p0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    sub-float/2addr p0, v4

    const/high16 p1, 0x42700000    # 60.0f

    sub-float/2addr p0, p1

    :goto_6
    neg-float v6, p0

    goto/16 :goto_8

    .line 38
    :cond_a
    iget p0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    sub-float/2addr p0, v4

    goto :goto_6

    .line 39
    :cond_b
    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p1, v2}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 40
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 41
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 42
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 43
    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    goto :goto_7

    .line 44
    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    div-int/2addr p1, v11

    .line 45
    :goto_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v2

    add-float/2addr v2, v1

    mul-float/2addr v2, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->top:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, v7

    add-float/2addr p0, v2

    int-to-float p1, p1

    div-float/2addr p1, v7

    goto :goto_5

    .line 46
    :cond_d
    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->isFullSizeAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 47
    iget p0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    goto/16 :goto_3

    .line 48
    :cond_e
    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p1, v2}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 49
    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 50
    iget v2, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview11Align:I

    if-ne v2, v11, :cond_f

    .line 51
    iget p0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    sub-float/2addr p0, v4

    div-float/2addr p0, v7

    .line 52
    iget p1, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview11Margin:I

    goto/16 :goto_2

    :cond_f
    const/4 p1, 0x6

    if-ne v2, p1, :cond_10

    goto/16 :goto_1

    .line 53
    :cond_10
    iget p1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v2

    mul-float/2addr v2, p1

    iget p1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr v2, p1

    .line 54
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result p0

    if-eqz p0, :cond_11

    const/high16 p0, 0x42400000    # 48.0f

    mul-float v9, v0, p0

    :cond_11
    add-float/2addr v2, v9

    sub-float/2addr v6, v2

    .line 55
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_12

    const/high16 p0, 0x42000000    # 32.0f

    mul-float/2addr v0, p0

    add-float/2addr v6, v0

    :cond_12
    :goto_8
    float-to-double p0, v6

    .line 56
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final hasTrait(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTrait()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFoldLandscapeLayout()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Fold_Landscape:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFoldLayout()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Fold_Portrait:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Fold_Landscape:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isLayout22_9()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "w:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " heightDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " widthDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " indicatorBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " insets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " previewTop43:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " previewTop169:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " captureBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " tsbMargin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " surfaceDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " displayDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDisplayCutout(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public updateInsets(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 p0, 0x1

    return p0
.end method

.method public updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V
    .locals 8

    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/motorola/camera/PreviewSize;

    iget-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mPreviewArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->values()[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    move-result-object p1

    array-length v0, p1

    sget-object v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v5

    iget v6, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v7, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_1

    move-object v1, v4

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget p1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, p3

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget p1, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    div-float/2addr p1, p3

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iput p3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    return-void
.end method
