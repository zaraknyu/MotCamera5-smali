.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

.field public final mCallback:Lcom/motorola/camera/ui/widgets/gl/Matrices;

.field public mCurrentValue:I

.field public final mDensity:F

.field public final mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mInLongPress:Z

.field public final mLevelCount:I

.field public mModeInterceptUiEvent:Z

.field public mOnDownTimestamp:J

.field public final mRange:Landroid/util/Range;

.field public mTouchAcc:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ILcom/motorola/camera/ui/widgets/gl/Matrices;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mInLongPress:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mOnDownTimestamp:J

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const v2, 0x7f0801db

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    const/high16 p1, 0x41c00000    # 24.0f

    mul-float/2addr p3, p1

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    iput p3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    iput p3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {p2, p3, p3}, Landroid/graphics/PointF;->set(FF)V

    iget p2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    mul-float/2addr v1, p3

    invoke-virtual {v0, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Rational;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p3}, Landroid/util/Rational;->getNumerator()I

    move-result p3

    div-int/2addr v0, p3

    new-instance p3, Landroid/util/Range;

    neg-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p3, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p2, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p2

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p3, p2

    add-int/2addr p3, p1

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mLevelCount:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    return-void
.end method


# virtual methods
.method public final dispatchLongPress(Landroid/graphics/PointF;)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v2, 0x2

    new-array v4, v2, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput p1, v4, v1

    new-array p1, v2, [F

    invoke-virtual {v3, p1, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance v2, Landroid/graphics/PointF;

    aget v3, p1, v5

    aget p1, p1, v1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string p1, "LOCATION"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "CAPTURE_TRIGGER"

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "LONG_PRESS"

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mInLongPress:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "ENABLE"

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mInLongPress:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "ON_DOWN"

    iget-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mOnDownTimestamp:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1, v0, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x41c00000    # 24.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    mul-float/2addr v2, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->isModeInterceptGesture()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/SecureDataHelper;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/16 v3, 0xc

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/SecureDataHelper;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/SecureDataHelper;->inset(FF)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v2, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2, v1, p0}, Landroid/graphics/RectF;->offset(FF)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    iget v6, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v7

    invoke-static {v1, v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;FFZ)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v5, p0, v2, v1}, Landroid/graphics/RectF;->intersect(FFFF)Z

    new-instance p0, Lcom/motorola/camera/SecureDataHelper;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v1, v2, v6, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    neg-float v0, v3

    neg-float v1, v4

    iget-object v2, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v0}, Landroid/graphics/RectF;->offset(FF)V

    return-object p0
.end method

.method public final isModeInterceptGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mModeInterceptUiEvent:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final loadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->loadTexture()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->isModeInterceptGesture()Z

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    if-eqz p1, :cond_1

    iget p1, p3, Landroid/graphics/PointF;->y:F

    :goto_0
    div-float/2addr p1, p2

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/16 p4, 0x5a

    if-eq p1, p4, :cond_4

    const/16 p4, 0xb4

    if-eq p1, p4, :cond_3

    const/16 p4, 0x10e

    if-eq p1, p4, :cond_2

    iget p1, p3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_2
    iget p1, p3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_3
    iget p1, p3, Landroid/graphics/PointF;->y:F

    :goto_1
    neg-float p1, p1

    goto :goto_0

    :cond_4
    iget p1, p3, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :goto_2
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mLevelCount:I

    int-to-float p3, p3

    mul-float/2addr p1, p3

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->slideHeight:F

    div-float/2addr p1, p3

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    int-to-float p1, p1

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    add-float/2addr p1, p3

    float-to-double p4, p1

    cmpl-float p1, p3, p2

    if-lez p1, :cond_5

    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    goto :goto_3

    :cond_5
    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_3
    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    const/high16 p2, 0x3f800000    # 1.0f

    rem-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    if-eqz p1, :cond_7

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "VALUE"

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "ENABLE"

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 p4, 0x0

    invoke-direct {p1, p3, p2, p4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onLongPress(Landroid/graphics/PointF;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mInLongPress:Z

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->dispatchLongPress(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->isModeInterceptGesture()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p3, p3, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const-string v0, "ENABLE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget p3, p3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p3, p3

    div-float/2addr p3, v4

    invoke-virtual {v2, v3, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 p3, 0x2

    new-array v3, p3, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    aput p1, v3, v1

    new-array p1, p3, [F

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance p2, Landroid/graphics/PointF;

    aget p3, p1, v4

    aget p1, p1, v1

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string p1, "LOCATION"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "CAPTURE_TRIGGER"

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "ON_UP"

    invoke-virtual {v0, p1, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "ON_DOWN"

    iget-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mOnDownTimestamp:J

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isSplitScreen()Z

    move-result p1

    const-string p2, "IS_SPLIT_SCREEN"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    const-string p3, "TIMER"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    const/4 p3, 0x4

    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "TIMER_CANCEL_UI"

    xor-int/2addr p1, v1

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2, v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onTouchDown(JLandroid/graphics/PointF;)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mOnDownTimestamp:J

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchingBar:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mSensorSupported:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->resetSensorValues()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTouchUp(Landroid/graphics/PointF;)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mInLongPress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mInLongPress:Z

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->dispatchLongPress(Landroid/graphics/PointF;)V

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->touchUp(I)V

    :cond_1
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->isModeInterceptGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setProgress(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->updateVertexData()V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mVertexChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->gapCenter:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->unloadTexture()V

    :cond_1
    return-void
.end method
