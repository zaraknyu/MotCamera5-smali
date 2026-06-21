.class public final Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

.field public mAccumulateX:F

.field public mAccumulateX_whenFirstShoot:F

.field public mAccumulateY:F

.field public mAccumulateY_whenOKtoShoot:F

.field public mAccumulateZ:F

.field public mAccumulateZ_whenFirstShoot:F

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBeingCovered:Z

.field public mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

.field public mDeferredRotation:Z

.field public mDensity:F

.field public mDisplayWidth:F

.field public mFirstShoot:Z

.field public mGuideBackgroundResources:[I

.field public mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mGuideForegroundResources:[I

.field public mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public final mGuideRectColor:I

.field public mHandlerIsProcessing:Z

.field public mImageIdNeedtoShoot:I

.field public mIsCapturing:Z

.field public mLeftImageAlreadyShotFlag:I

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mPreImageIdNeedtoShoot:I

.field public mPreviewOffset:F

.field public mResourceIndex:I

.field public mRightImageAlreadyShotFlag:I

.field public mRotationChange:I

.field public mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSetGuideResourceTimer:Ljava/util/Timer;

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mSplitMode:Z

.field public mStartPoint:Landroid/graphics/Point;

.field public mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTimerIsRunning:Z

.field public final mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

.field public mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

.field public mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreImageIdNeedtoShoot:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v3, "type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/4 v0, 0x4

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    return-void
.end method


# virtual methods
.method public final animateFlickerGuide()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    const/4 v8, 0x1

    const/16 v9, 0x3e8

    const-wide/16 v4, 0x258

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    filled-new-array {v3, v4}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animateShowLivePreview()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    filled-new-array {v3, v4}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final getGuideCenterX()F
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    const/16 v1, 0x5a

    const/16 v2, 0x10e

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x42180000    # 38.0f

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    if-ne p0, v2, :cond_1

    neg-float p0, v0

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getGuideCenterY(F)F
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getThumbnailCenterY()F

    move-result p1

    const/high16 v0, 0x42c40000    # 98.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v0

    add-float/2addr p0, p1

    return p0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    if-eqz v0, :cond_2

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v0, 0x42180000    # 38.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method public final getProgressMessage(Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "preview"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    goto :goto_1

    :cond_2
    :goto_0
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "maxWidth"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "maxHeight"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v2, v2

    mul-float v6, v2, v4

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    div-float v7, v4, v7

    float-to-int v6, v6

    float-to-int v8, v4

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    new-instance v10, Landroid/graphics/Rect;

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    div-float v13, v12, v7

    sub-float v13, v2, v13

    float-to-int v13, v13

    const/4 v14, 0x2

    div-int/2addr v13, v14

    div-float/2addr v12, v7

    add-float/2addr v12, v2

    float-to-int v2, v12

    div-int/2addr v2, v14

    invoke-direct {v10, v13, v11, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    float-to-int v2, v2

    invoke-direct {v1, v11, v11, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v3, v10, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aput-object v5, v3, v2

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    float-to-double v5, v3

    const/high16 v3, 0x40800000    # 4.0f

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    div-double/2addr v5, v9

    const/16 v3, 0x3f2

    new-array v3, v3, [F

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    int-to-float v9, v11

    const v10, 0x3d23d70a    # 0.04f

    mul-float v12, v9, v10

    float-to-double v12, v12

    sub-double v12, v7, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v17, v10

    move/from16 p1, v11

    mul-double v10, v15, v5

    double-to-float v10, v10

    aput v10, v3, p1

    neg-float v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v3, v2

    move-wide v15, v12

    move v13, v11

    neg-double v11, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v5

    move/from16 v21, v13

    move/from16 v20, v14

    add-double v13, v18, v11

    double-to-float v13, v13

    aput v13, v3, v20

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v9, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v9, v14, v9

    const/16 v18, 0x3

    aput v9, v3, v18

    const/16 v18, 0x4

    aput v14, v3, v18

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move/from16 v20, v13

    move/from16 v22, v14

    mul-double v13, v18, v5

    double-to-float v13, v13

    const/4 v14, 0x5

    aput v13, v3, v14

    div-float v4, v4, v21

    const/4 v13, 0x6

    aput v4, v3, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v5

    add-double/2addr v13, v11

    double-to-float v13, v13

    const/4 v14, 0x7

    aput v13, v3, v14

    const/16 v13, 0x8

    aput v9, v3, v13

    const/16 v9, 0x9

    const/4 v13, 0x0

    aput v13, v3, v9

    move/from16 v9, p1

    :goto_2
    const/16 v14, 0x64

    if-ge v9, v14, :cond_3

    mul-int/lit8 v14, v9, 0xa

    add-int/lit8 v15, v14, 0xa

    add-int/lit8 v9, v9, 0x1

    move/from16 p1, v13

    int-to-float v13, v9

    mul-float v2, v13, v17

    move-wide/from16 v18, v5

    move v6, v4

    float-to-double v4, v2

    sub-double v4, v7, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    move-wide/from16 v25, v4

    mul-double v4, v23, v18

    double-to-float v2, v4

    aput v2, v3, v15

    add-int/lit8 v2, v14, 0xb

    aput v10, v3, v2

    add-int/lit8 v2, v14, 0xc

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    add-double/2addr v4, v11

    double-to-float v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v14, 0xd

    mul-float v13, v13, v20

    sub-float v4, v22, v13

    aput v4, v3, v2

    add-int/lit8 v2, v14, 0xe

    aput v22, v3, v2

    add-int/lit8 v2, v14, 0xf

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    move v13, v4

    mul-double v4, v23, v18

    double-to-float v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v14, 0x10

    aput v6, v3, v2

    add-int/lit8 v2, v14, 0x11

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v18

    add-double/2addr v4, v11

    double-to-float v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v14, 0x12

    aput v13, v3, v2

    add-int/lit8 v14, v14, 0x13

    aput p1, v3, v14

    move/from16 v13, p1

    move v4, v6

    move-wide/from16 v5, v18

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setVerticesData([F)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 12

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;->LENOVO_SELFIE_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v11}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WideSelfieUIComponent"

    return-object p0
.end method

.method public final getThumbnailCenterY()F
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSplitMode:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0

    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public final ifAllowtoTakePicture()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

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

.method public final loadTextures()Z
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0802b6

    const v1, 0x7f0802b9

    const v2, 0x7f0802b5

    const v3, 0x7f0802b7

    const v4, 0x7f0802b8

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundResources:[I

    const v0, 0x7f0802ba

    const v1, 0x7f0802bd

    const v3, 0x7f0802bb

    const v4, 0x7f0802bc

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundResources:[I

    goto :goto_0

    :cond_0
    const v0, 0x7f0802b1

    const v1, 0x7f0802b4

    const v2, 0x7f0802b0

    const v3, 0x7f0802b2

    const v4, 0x7f0802b3

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundResources:[I

    const v0, 0x7f0802be

    const v1, 0x7f0802c1

    const v3, 0x7f0802bf

    const v4, 0x7f0802c0

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundResources:[I

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v1, 0x42a60000    # 83.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sSelfiePreviewHeight:I

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    monitor-enter v1

    :try_start_0
    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mLineWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    new-instance v0, Lcom/lenovo/core/WideSelfieRotationDetector;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/lenovo/core/WideSelfieRotationDetector;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120142

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const v0, 0x3e3851ec    # 0.18f

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x42740000    # 61.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v3

    mul-float/2addr p0, v1

    sub-float/2addr v2, p0

    float-to-int p0, v2

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v3

    mul-float/2addr p0, v1

    sub-float/2addr v2, p0

    float-to-int p0, v2

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    :goto_1
    return v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onDraw([F[F[F)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-virtual {v0, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p2, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p2, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onRotate(I)V
    .locals 10

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    return-void

    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v0, 0xb4

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/16 v3, 0x10e

    if-eq p1, v3, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v1, p1, Lcom/lenovo/core/WideSelfieRotationDetector;->mCurOrientaion:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v1, :cond_4

    if-ne v1, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-eqz v0, :cond_7

    const/4 p0, 0x3

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v4, 0xc8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    filled-new-array {v0, v3}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v1, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSplitMode:Z

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iget-object v2, v1, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    if-eqz v0, :cond_1

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v5, "context"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/motorola/camera/shared/Util;->getCamAlignedSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    :goto_1
    iput-object v3, v1, Lcom/lenovo/core/WideSelfieRotationDetector;->mGyroscope:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSplitMode:Z

    :cond_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->onRotate(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget v3, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarGuideLine()F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x42100000    # 36.0f

    add-float/2addr v3, v5

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v3, v2

    mul-float/2addr v2, v5

    neg-float v5, v2

    add-float v6, v3, v2

    sub-float/2addr v3, v2

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v5, v3

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_7

    add-float/2addr v3, v5

    add-float/2addr v3, v2

    div-float v1, v3, v4

    :cond_7
    add-float/2addr v1, v0

    :goto_3
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    iget p1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr p1, v0

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 p2, 0x19

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setGuideResource(II)V
    .locals 6

    invoke-static {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x10e

    const/4 v4, 0x5

    const/16 v5, 0x5a

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    if-ne p2, v5, :cond_1

    :goto_0
    move v1, v4

    goto :goto_2

    :cond_1
    if-ne p2, v3, :cond_2

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    goto :goto_2

    :cond_3
    if-ne p2, v5, :cond_4

    goto :goto_1

    :cond_4
    if-ne p2, v3, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    const/4 p1, -0x1

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p2

    goto :goto_3

    :cond_6
    move p2, p1

    :goto_3
    if-ne p2, p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundResources:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundResources:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    return-void
.end method

.method public final setSavingProgressVisible$1(Z)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;-><init>(ILjava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v8, -0x1

    const-wide/16 v3, 0x7d0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations$1()V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final setVisibility$2(Z)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final setupUIPosition()V
    .locals 13

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getThumbnailCenterY()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;->mProjectMatrix:[F

    iget v1, v2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v4, v1

    int-to-float v4, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v4, v11

    const/4 v12, 0x0

    sub-float v5, v4, v12

    int-to-float v1, v1

    div-float/2addr v1, v11

    sub-float v6, v1, v12

    iget v1, v2, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v2, v1

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float v7, v2, v0

    int-to-float v1, v1

    div-float/2addr v1, v11

    sub-float v8, v1, v0

    const v9, 0x419feb85    # 19.99f

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v4, v12, v0, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v4, v12, v0, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    aput-object v4, v2, v5

    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v3

    invoke-virtual {v1, v2, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v3

    invoke-virtual {v1, v2, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v11

    const/high16 v3, 0x41a00000    # 20.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v4, v3

    sub-float/2addr v0, v4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result p0

    div-float/2addr p0, v11

    :goto_0
    sub-float/2addr v0, p0

    goto :goto_1

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v3, 0x42880000    # 68.0f

    mul-float/2addr v3, p0

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr p0, v4

    add-float/2addr p0, v3

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v2, v0, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;->LENOVO_SELFIE_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    sget v0, Lcom/motorola/camera/panorama/PanoHelper;->sSelfiePreviewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Landroid/util/Size;

    invoke-direct {v0, v5}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iget v5, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v5, v6

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v5, v0

    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0, v4, v1, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationX(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->setColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v0, v4, v1, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationX(FFFF)D

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v1, v5, v6}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const-wide/16 v5, 0x96

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility$2(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setupUIPosition()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateShowLivePreview()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    invoke-virtual {v0, v4, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setSavingProgressVisible$1(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility$2(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_5

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_5

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->setColor(I)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility$2(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto/16 :goto_5

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mCurOrientaion:I

    iput-object p0, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mRotationDetectorListener:Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mTimestamp:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateZ:F

    iget-object v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mGyroscope:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    iget-object v3, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_6
    iget-object v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mLineraAccelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_e

    iget-object v3, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_5

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mTimestamp:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateZ:F

    iget-object v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setPostScreenTranslation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->setPostScreenTranslation(FF)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setSavingProgressVisible$1(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility$2(Z)V

    goto :goto_5

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_3

    :cond_c
    move v2, v3

    :goto_3
    if-nez v2, :cond_e

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_CLI_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_5

    :cond_d
    :goto_4
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getProgressMessage(Landroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    :cond_e
    :goto_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_f
    monitor-exit p0

    return-void

    :goto_6
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    return-void
.end method

.method public final updateAngle(FFF)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    if-eqz v4, :cond_3d

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v5, v6}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v7, 0xb4

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x41700000    # 15.0f

    if-eqz v5, :cond_0

    iput v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    goto :goto_0

    :cond_1
    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_3

    move v8, v9

    :cond_3
    iput v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    :goto_1
    const/4 v5, 0x5

    const/4 v8, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/16 v13, 0x10e

    const/16 v14, 0x5a

    move/from16 v16, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v17, 0x41c80000    # 25.0f

    const/high16 v18, 0x41200000    # 10.0f

    if-eqz v4, :cond_f

    if-eq v4, v14, :cond_c

    if-eq v4, v7, :cond_9

    if-eq v4, v13, :cond_5

    :cond_4
    move v4, v8

    goto/16 :goto_3

    :cond_5
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    mul-float v19, v4, v9

    cmpl-float v20, v2, v19

    if-ltz v20, :cond_6

    add-float v19, v19, v18

    cmpg-float v19, v2, v19

    if-gtz v19, :cond_6

    const/16 v4, 0xa

    goto/16 :goto_3

    :cond_6
    neg-float v15, v4

    cmpg-float v20, v2, v15

    if-gtz v20, :cond_7

    sub-float v20, v15, v18

    cmpl-float v20, v2, v20

    if-ltz v20, :cond_7

    const/16 v4, 0xb

    goto/16 :goto_3

    :cond_7
    sub-float v15, v15, v17

    cmpg-float v15, v2, v15

    if-ltz v15, :cond_8

    add-float v4, v4, v17

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    :cond_8
    :goto_2
    const/4 v4, 0x6

    goto/16 :goto_3

    :cond_9
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    cmpl-float v15, v2, v4

    if-ltz v15, :cond_a

    add-float v15, v4, v18

    cmpg-float v15, v2, v15

    if-gtz v15, :cond_a

    const/4 v4, 0x7

    goto/16 :goto_3

    :cond_a
    neg-float v15, v4

    cmpg-float v20, v2, v15

    if-gtz v20, :cond_b

    sub-float v20, v15, v18

    cmpl-float v20, v2, v20

    if-ltz v20, :cond_b

    const/16 v4, 0x8

    goto/16 :goto_3

    :cond_b
    sub-float v15, v15, v17

    cmpg-float v15, v2, v15

    if-ltz v15, :cond_8

    add-float v4, v4, v17

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    goto :goto_2

    :cond_c
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    cmpl-float v15, v2, v4

    if-ltz v15, :cond_d

    add-float v15, v4, v18

    cmpg-float v15, v2, v15

    if-gtz v15, :cond_d

    move v4, v11

    goto :goto_3

    :cond_d
    neg-float v15, v4

    mul-float/2addr v15, v9

    cmpg-float v20, v2, v15

    if-gtz v20, :cond_e

    sub-float v20, v15, v18

    cmpl-float v20, v2, v20

    if-ltz v20, :cond_e

    move v4, v5

    goto :goto_3

    :cond_e
    sub-float v15, v15, v17

    cmpg-float v15, v2, v15

    if-ltz v15, :cond_8

    mul-float/2addr v4, v9

    add-float v4, v4, v17

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    goto :goto_2

    :cond_f
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    cmpl-float v15, v2, v4

    if-ltz v15, :cond_10

    add-float v15, v4, v18

    cmpg-float v15, v2, v15

    if-gtz v15, :cond_10

    move v4, v10

    goto :goto_3

    :cond_10
    neg-float v15, v4

    cmpg-float v20, v2, v15

    if-gtz v20, :cond_11

    sub-float v20, v15, v18

    cmpl-float v20, v2, v20

    if-ltz v20, :cond_11

    move v4, v12

    goto :goto_3

    :cond_11
    sub-float v15, v15, v17

    cmpg-float v15, v2, v15

    if-ltz v15, :cond_8

    add-float v4, v4, v17

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    goto :goto_2

    :goto_3
    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    add-float v17, v15, v16

    cmpl-float v17, v1, v17

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move/from16 v21, v9

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-gtz v17, :cond_13

    neg-float v15, v15

    sub-float v15, v15, v16

    cmpg-float v15, v1, v15

    if-ltz v15, :cond_13

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    add-float v17, v15, v16

    cmpl-float v17, v3, v17

    if-gtz v17, :cond_13

    neg-float v15, v15

    sub-float v15, v15, v16

    cmpg-float v3, v3, v15

    if-gez v3, :cond_12

    goto :goto_4

    :cond_12
    move v15, v4

    goto :goto_5

    :cond_13
    :goto_4
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v3, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-virtual {v9, v8}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    const/4 v15, 0x6

    :goto_5
    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_14

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v15, :cond_14

    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_6

    :cond_14
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_1a

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v15, v10, :cond_1a

    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    iput v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_6

    :pswitch_2
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_15

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v15, :cond_15

    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_1a

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v15, v10, :cond_1a

    iput v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_6

    :pswitch_4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_16

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v15, :cond_16

    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_6

    :cond_16
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_1a

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-ne v15, v10, :cond_1a

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_6

    :pswitch_5
    iget-boolean v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    if-eqz v15, :cond_17

    goto :goto_6

    :cond_17
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_6

    :pswitch_6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_18

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v15, :cond_18

    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_6

    :cond_18
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_1a

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v15, v10, :cond_1a

    iput v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_6

    :pswitch_7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_19

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v15, :cond_19

    iput v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_6

    :cond_19
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v15

    if-eqz v15, :cond_1a

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-ne v15, v10, :cond_1a

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    :cond_1a
    :goto_6
    float-to-int v2, v2

    float-to-int v1, v1

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v5, 0x0

    if-nez v15, :cond_1b

    goto :goto_7

    :cond_1b
    iget-boolean v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    if-nez v15, :cond_1c

    :goto_7
    move v3, v10

    goto/16 :goto_14

    :cond_1c
    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    if-nez v15, :cond_1d

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    :cond_1d
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-static {v10, v5}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v15

    goto :goto_8

    :cond_1e
    sget-object v15, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    new-instance v15, Landroid/util/Size;

    const/16 v5, 0x140

    const/16 v3, 0xf0

    invoke-direct {v15, v5, v3}, Landroid/util/Size;-><init>(II)V

    :goto_8
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-static {v3, v5}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfieStitchingRatio(IZ)F

    move-result v3

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v3, v3, v17

    add-float v3, v3, v21

    mul-float/2addr v5, v3

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move/from16 v22, v10

    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eq v10, v14, :cond_1f

    if-ne v10, v13, :cond_20

    :cond_1f
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v12, v3

    :cond_20
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eq v3, v14, :cond_22

    if-ne v3, v13, :cond_21

    goto :goto_9

    :cond_21
    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    goto :goto_a

    :cond_22
    :goto_9
    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    :goto_a
    mul-float/2addr v5, v10

    div-float/2addr v5, v12

    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    sub-float v10, v5, v15

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    mul-float v12, v12, v17

    div-float/2addr v10, v12

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    iget v12, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v12

    int-to-float v2, v2

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v2, v12

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v1

    int-to-float v1, v10

    mul-float/2addr v1, v12

    const/4 v10, 0x0

    if-ne v3, v14, :cond_24

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_23

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-nez v5, :cond_23

    neg-float v5, v2

    goto :goto_b

    :cond_23
    move v5, v2

    :goto_b
    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v3, v5, v12, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationY(FFFF)D

    move-result-wide v12

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v3, v2, v5, v15, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationY(FFFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v3, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->setPostScreenTranslation(FF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v3, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setPostScreenTranslation(FF)V

    goto :goto_d

    :cond_24
    if-ne v3, v13, :cond_26

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_25

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-nez v5, :cond_25

    neg-float v5, v2

    goto :goto_c

    :cond_25
    move v5, v2

    :goto_c
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v3, v5, v8, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationY(FFFF)D

    move-result-wide v12

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v3, v2, v5, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationY(FFFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v3, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->setPostScreenTranslation(FF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v3, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setPostScreenTranslation(FF)V

    goto :goto_d

    :cond_26
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v3, v2, v5, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationX(FFFF)D

    move-result-wide v12

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v3, v2, v5, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationX(FFFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v3, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->setPostScreenTranslation(FF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v3, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setPostScreenTranslation(FF)V

    :goto_d
    const-wide/16 v23, 0x0

    cmpl-double v1, v12, v23

    if-lez v1, :cond_27

    double-to-int v1, v12

    add-int/lit8 v1, v1, 0x1

    int-to-double v12, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    neg-double v14, v12

    double-to-float v5, v14

    invoke-virtual {v1, v10, v10, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v1, v10, v10, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v1, v10, v10, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    add-double/2addr v12, v14

    div-double/2addr v12, v14

    double-to-float v1, v12

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v5, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_28

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    move/from16 v8, v21

    invoke-virtual {v5, v1, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v5, v1, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v5, v1, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_e

    :cond_27
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    :cond_28
    :goto_e
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v1, :cond_2f

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v5, :cond_2f

    cmpl-float v1, v2, v18

    if-lez v1, :cond_2b

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateFlickerGuide()V

    :cond_29
    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_2a

    const/4 v2, 0x2

    goto :goto_f

    :cond_2a
    const/4 v2, 0x3

    :goto_f
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource(II)V

    goto/16 :goto_13

    :cond_2b
    const/high16 v1, -0x3ee00000    # -10.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2e

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateFlickerGuide()V

    :cond_2c
    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_2d

    const/4 v2, 0x3

    goto :goto_10

    :cond_2d
    const/4 v2, 0x2

    :goto_10
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource(II)V

    goto :goto_13

    :cond_2e
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    if-nez v2, :cond_33

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;

    invoke-direct {v3, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x1f4

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v28}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    move/from16 v2, v22

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    goto :goto_13

    :cond_2f
    move/from16 v2, v22

    if-nez v1, :cond_31

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v5, v2, :cond_31

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_30

    const/4 v3, 0x2

    goto :goto_11

    :cond_30
    const/4 v3, 0x3

    :goto_11
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource(II)V

    goto :goto_13

    :cond_31
    const/16 v3, 0x5a

    if-ne v1, v2, :cond_33

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v1, :cond_33

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-ne v1, v3, :cond_32

    const/4 v2, 0x3

    goto :goto_12

    :cond_32
    const/4 v2, 0x2

    :goto_12
    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource(II)V

    :cond_33
    :goto_13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getThumbnailCenterY()F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v5

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v5

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v1

    invoke-virtual {v2, v5, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_14
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    if-eq v1, v5, :cond_38

    if-eqz v1, :cond_38

    if-ne v1, v3, :cond_34

    goto :goto_15

    :cond_34
    const/4 v3, -0x1

    if-ne v1, v3, :cond_37

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v1, :cond_35

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-eqz v1, :cond_3c

    :cond_35
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreImageIdNeedtoShoot:I

    if-ne v1, v11, :cond_36

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    goto :goto_18

    :cond_36
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    goto :goto_18

    :cond_37
    const/4 v2, 0x3

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3c

    invoke-virtual {v9, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v1, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_18

    :cond_38
    :goto_15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "WIDE_SELFIE_ROTATION_X"

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v3, "WIDE_SELFIE_ROTATION_Y"

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v3, "PANO_SELFIE_IMAGE_ID"

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    if-eqz v3, :cond_39

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v6, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    goto :goto_18

    :cond_39
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_3b

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_3a

    goto :goto_16

    :cond_3a
    const/16 v3, 0x64

    goto :goto_17

    :cond_3b
    :goto_16
    const/16 v3, 0xc8

    :goto_17
    new-instance v4, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v0, v1}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    int-to-long v5, v3

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_18
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreImageIdNeedtoShoot:I

    const/4 v3, -0x1

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    :cond_3d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
