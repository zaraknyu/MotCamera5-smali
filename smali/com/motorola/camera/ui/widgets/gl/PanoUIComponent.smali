.class public final Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mCaptureColor:I

.field public mCapturing:Z

.field public mDirection:I

.field public mDirectionDeepTrans:F

.field public final mIdleArrowTextures:Ljava/util/ArrayList;

.field public final mIdleColor:I

.field public mInitPanoCirlce:Z

.field public mIsIdle:Z

.field public mIsIdleArrowDisplayed:Z

.field public final mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mPanoCircleExceed:Ljava/util/ArrayList;

.field public final mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mPanoHasPlayAnimList:Ljava/util/ArrayList;

.field public mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

.field public mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mPlayTransAnim:Z

.field public mPlayTransForWrongDirection:Z

.field public mPreTrans:F

.field public mProgressPadding:F

.field public mReversing:Z

.field public mRotationChange:I

.field public mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mSplitMode:Z

.field public mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mUpdateColor:Z

.field public final mWarningColor:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p2

    iget p2, p2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0603fa

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604ac

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    return-void
.end method

.method public static needReversing(FFII)Z
    .locals 2

    const/16 v0, 0x10e

    if-eqz p3, :cond_3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float p3, p0, p1

    if-gez p3, :cond_1

    if-eqz p2, :cond_7

    if-eq p2, v0, :cond_7

    goto :goto_1

    :cond_1
    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_6

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_3
    :goto_0
    cmpg-float p3, p0, p1

    if-gez p3, :cond_4

    if-eqz p2, :cond_6

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_4
    cmpl-float p0, p0, p1

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    if-eq p2, v0, :cond_7

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static needUpdateColor(FFIIFI)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p5, v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_2

    const/16 p5, 0x10e

    if-ne p2, p5, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_1

    :cond_2
    :goto_0
    sub-float/2addr p1, p0

    float-to-int p0, p1

    :goto_1
    const/high16 p1, 0x3e800000    # 0.25f

    const/high16 p2, 0x3f000000    # 0.5f

    if-eqz p3, :cond_4

    const/4 p5, 0x3

    if-ne p3, p5, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, -0x1

    if-le p0, p3, :cond_6

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_5

    goto :goto_3

    :cond_4
    :goto_2
    if-ge p0, v1, :cond_6

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_3
    return v1
.end method


# virtual methods
.method public final animateArrowIcon(I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v10, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    neg-float v1, v2

    invoke-virtual {v9, v4, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v4, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    :cond_2
    invoke-virtual {v9, v2, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    :cond_3
    neg-float v1, v2

    invoke-virtual {v9, v1, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    :goto_0
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/16 v18, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x190

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v25, 0x2

    move/from16 v17, v25

    invoke-direct/range {v11 .. v18}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, v11, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Landroidx/collection/internal/Lock;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Landroidx/collection/internal/Lock;)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    filled-new-array {v2}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v2

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    new-instance v19, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x64

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v26}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    move-object/from16 v1, v19

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v19, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/16 v24, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v26}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    move-object/from16 v4, v19

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    invoke-direct {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Landroidx/collection/internal/Lock;)V

    invoke-virtual {v5, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v11}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    filled-new-array {v1}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v5, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    invoke-virtual {v2, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final checkExceedBoundary(ILcom/motorola/camera/SecureDataHelper;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/high16 v3, 0x42200000    # 40.0f

    if-eqz p3, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v3

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    mul-float/2addr p3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v3

    const v2, 0x3d4ccccd    # 0.05f

    goto :goto_0

    :goto_1
    const/16 v2, 0x10e

    const/4 v3, 0x1

    if-nez p1, :cond_3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_2

    if-ne p0, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_c

    goto/16 :goto_6

    :cond_2
    :goto_2
    iget-object p0, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_c

    goto/16 :goto_6

    :cond_3
    if-ne p1, v3, :cond_6

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_5

    if-ne p0, v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p0, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_c

    goto :goto_6

    :cond_5
    :goto_3
    iget-object p0, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_c

    goto :goto_6

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_8

    if-ne p0, v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object p0, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_c

    goto :goto_6

    :cond_8
    :goto_4
    iget-object p0, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_c

    goto :goto_6

    :cond_9
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_b

    if-ne p0, v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object p0, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_c

    goto :goto_6

    :cond_b
    :goto_5
    iget-object p0, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_c

    :goto_6
    return v3

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final getPaddingBottom()F
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, 0x42900000    # 72.0f

    mul-float/2addr v3, v2

    new-instance v4, Landroid/graphics/Rect;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v5, v5, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarGuideLine()F

    move-result v0

    mul-float/2addr v0, v2

    sub-float/2addr v5, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v6

    sub-float/2addr p0, v5

    div-float/2addr v3, v6

    sub-float/2addr p0, v3

    cmpl-float v0, v4, p0

    if-ltz v0, :cond_1

    sub-float v1, v4, p0

    :cond_1
    div-float/2addr v1, v6

    :cond_2
    :goto_0
    return v1
.end method

.method public final getProgessBarVerHeight()I
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSensorOrientationSameAsScreen()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_1

    div-float v0, v4, v0

    :cond_1
    const v3, 0x3cf5c28f    # 0.03f

    sub-float v3, v0, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    div-float v4, v1, v0

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    new-instance v1, Landroid/graphics/Rect;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, 0x42900000    # 72.0f

    mul-float/2addr v4, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarGuideLine()F

    move-result v2

    mul-float/2addr v2, v3

    sub-float/2addr v5, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v6

    sub-float/2addr p0, v5

    div-float/2addr v4, v6

    sub-float/2addr p0, v4

    cmpl-float v2, v1, p0

    if-ltz v2, :cond_3

    sub-float/2addr v1, p0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    sub-float/2addr v0, v1

    float-to-int p0, v0

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 5

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoUIComponent"

    return-object p0
.end method

.method public final getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 6

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    const/16 v3, 0x10e

    const/4 v4, 0x0

    if-eqz p1, :cond_9

    const/4 v5, 0x1

    if-eq p1, v5, :cond_6

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    return-object v0

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v1

    invoke-direct {p1, v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v1

    invoke-direct {p1, v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p1

    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v1

    invoke-direct {p1, v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p1

    :cond_5
    :goto_1
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v1

    invoke-direct {p1, v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p1

    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {p1, v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p1

    :cond_8
    :goto_2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {p1, v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p1

    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v3, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {p1, v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p1

    :cond_b
    :goto_3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {p1, v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p1
.end method

.method public final loadTextures()Z
    .locals 9

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/4 v3, 0x0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v5, 0x4

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v2

    monitor-exit v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v2, v7, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ILcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v2

    monitor-exit v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v3, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v2, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->loadTexture()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const v6, 0x7f08019f

    invoke-direct {v0, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v2, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    mul-int/lit8 v8, v0, 0x5a

    int-to-float v8, v8

    invoke-direct {v7, v8, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 v8, 0x3

    invoke-virtual {v2, v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->onPreDraw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

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
    .locals 3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f120107

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final progressCapture(Landroid/os/Bundle;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v2, "progressX"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "maxWidth"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "progressY"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "maxHeight"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v9, v4

    div-double/2addr v2, v9

    double-to-float v2, v2

    int-to-double v3, v7

    div-double/2addr v5, v3

    double-to-float v3, v5

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x5a

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0xb4

    const/16 v11, 0x10e

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne v4, v10, :cond_2

    sub-float v6, v9, v2

    goto :goto_1

    :cond_2
    if-ne v4, v11, :cond_3

    sub-float v6, v9, v3

    goto :goto_1

    :cond_3
    if-ne v4, v5, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v6, v2

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    if-ne v4, v10, :cond_6

    sub-float v2, v9, v3

    goto :goto_3

    :cond_6
    if-ne v4, v11, :cond_7

    goto :goto_3

    :cond_7
    if-ne v4, v5, :cond_8

    sub-float v2, v9, v2

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v3

    :goto_3
    const-string v3, "direction"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v7, 0x42300000    # 44.0f

    mul-float/2addr v4, v7

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v13, v4, v12

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v4, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v14

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v15, 0x3

    move/from16 v16, v12

    const/4 v12, 0x2

    const/4 v9, 0x1

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    if-ne v4, v11, :cond_d

    if-ne v3, v9, :cond_a

    :goto_4
    move v3, v15

    goto :goto_8

    :cond_a
    if-nez v3, :cond_b

    :goto_5
    move v3, v12

    goto :goto_8

    :cond_b
    if-ne v3, v12, :cond_c

    :goto_6
    move v3, v9

    goto :goto_8

    :cond_c
    if-ne v3, v15, :cond_15

    :goto_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_d
    if-ne v4, v5, :cond_11

    if-ne v3, v9, :cond_e

    goto :goto_5

    :cond_e
    if-nez v3, :cond_f

    goto :goto_4

    :cond_f
    if-ne v3, v12, :cond_10

    goto :goto_7

    :cond_10
    if-ne v3, v15, :cond_15

    goto :goto_6

    :cond_11
    if-ne v4, v10, :cond_15

    if-ne v3, v9, :cond_12

    goto :goto_7

    :cond_12
    if-nez v3, :cond_13

    goto :goto_6

    :cond_13
    if-ne v3, v12, :cond_14

    goto :goto_4

    :cond_14
    if-ne v3, v15, :cond_15

    goto :goto_5

    :cond_15
    :goto_8
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    if-nez v4, :cond_16

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    iput-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    :cond_16
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v7

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    if-nez v4, :cond_1e

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/high16 v19, 0x42500000    # 52.0f

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    const/high16 v20, 0x41a00000    # 20.0f

    mul-float v5, v5, v20

    const/high16 v20, 0x40000000    # 2.0f

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v7

    const/high16 v21, 0x41000000    # 8.0f

    mul-float v7, v7, v21

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v12

    const/high16 v22, 0x40800000    # 4.0f

    mul-float v12, v12, v22

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    mul-float v10, v10, v20

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    if-eqz v4, :cond_18

    if-ne v4, v9, :cond_17

    goto :goto_9

    :cond_17
    const/4 v4, 0x0

    goto :goto_a

    :cond_18
    :goto_9
    move v4, v9

    :goto_a
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    const/high16 v24, 0x42200000    # 40.0f

    mul-float v11, v11, v24

    const v24, 0x3d4ccccd    # 0.05f

    mul-float v11, v11, v24

    if-eqz v4, :cond_19

    sget v4, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    int-to-float v4, v4

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v9

    const/high16 v25, 0x41800000    # 16.0f

    :goto_b
    mul-float v9, v9, v25

    sub-float/2addr v4, v9

    add-float/2addr v4, v11

    goto :goto_c

    :cond_19
    sget v4, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v4, v4

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v9

    const/high16 v25, 0x42000000    # 32.0f

    goto :goto_b

    :goto_c
    const/4 v9, 0x0

    :goto_d
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    mul-float v11, v11, v19

    div-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    if-ge v9, v11, :cond_1a

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    move/from16 v26, v2

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-direct {v11, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    monitor-enter v11

    monitor-exit v11

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v2, v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v11, v15, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v11, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v11, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float v2, v2, v20

    invoke-virtual {v11, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v11, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v26

    goto :goto_d

    :cond_1a
    move/from16 v26, v2

    const/4 v2, 0x0

    :goto_e
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1c

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-nez v2, :cond_1b

    invoke-virtual {v4, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    div-float v9, v5, v20

    iput v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    invoke-virtual {v4, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    goto :goto_f

    :cond_1b
    invoke-virtual {v4, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    div-float v9, v7, v20

    iput v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    invoke-virtual {v4, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    :goto_f
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    mul-float v5, v5, v20

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_10

    :cond_1d
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    invoke-virtual {v0, v3, v14}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setPanoThumbnailTexBackgroundTranslation(FF)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    goto :goto_11

    :cond_1e
    move/from16 v26, v2

    move v4, v9

    const/high16 v19, 0x42500000    # 52.0f

    const/high16 v20, 0x40000000    # 2.0f

    :goto_11
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const v5, 0x3d4cccd0    # 0.050000012f

    if-eqz v2, :cond_23

    if-ne v2, v4, :cond_1f

    goto :goto_14

    :cond_1f
    sub-float v12, v16, v6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/16 v25, 0x0

    cmpg-float v2, v25, v2

    if-gez v2, :cond_21

    cmpg-float v2, v6, v16

    if-gez v2, :cond_20

    add-float v6, v6, v25

    goto :goto_12

    :cond_20
    sub-float v6, v6, v25

    goto :goto_12

    :cond_21
    move/from16 v6, v16

    :goto_12
    sub-float v12, v16, v6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_22

    move/from16 v6, v16

    :cond_22
    move/from16 v10, v26

    :goto_13
    move v7, v6

    goto :goto_16

    :cond_23
    :goto_14
    sub-float v12, v16, v26

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/16 v25, 0x0

    cmpg-float v2, v25, v2

    if-gez v2, :cond_25

    cmpg-float v2, v26, v16

    if-gez v2, :cond_24

    add-float v2, v26, v25

    goto :goto_15

    :cond_24
    sub-float v2, v26, v25

    goto :goto_15

    :cond_25
    move/from16 v2, v16

    :goto_15
    sub-float v12, v16, v2

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_26

    move/from16 v2, v16

    :cond_26
    move v10, v2

    goto :goto_13

    :goto_16
    const-string/jumbo v2, "preview"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2b

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v4, 0xb4

    if-eqz v2, :cond_28

    if-ne v2, v4, :cond_27

    goto :goto_18

    :cond_27
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_17
    int-to-float v2, v2

    goto :goto_19

    :cond_28
    :goto_18
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_17

    :goto_19
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v5, :cond_2a

    if-ne v5, v4, :cond_29

    goto :goto_1b

    :cond_29
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    :goto_1a
    int-to-float v4, v4

    goto :goto_1c

    :cond_2a
    :goto_1b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    goto :goto_1a

    :goto_1c
    move v15, v2

    move/from16 v2, v16

    move/from16 v16, v14

    move v14, v4

    goto :goto_1d

    :cond_2b
    move/from16 v2, v16

    const/4 v15, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    :goto_1d
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    new-instance v5, Lcom/motorola/camera/PreviewSize;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Landroid/util/Size;

    invoke-direct {v5, v6}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    if-eqz v4, :cond_2d

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2c

    goto :goto_1e

    :cond_2c
    iput v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    iget v4, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v15

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    move v9, v14

    move v5, v15

    move v6, v5

    goto :goto_1f

    :cond_2d
    :goto_1e
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    iget v4, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    move v5, v4

    move v4, v14

    move v6, v4

    move v9, v15

    :goto_1f
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object v11, v11, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    monitor-enter v11

    :try_start_0
    iput v6, v11, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameHeight:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v11

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    monitor-enter v6

    :try_start_1
    iput v9, v6, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iput v4, v6, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    iput v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    neg-float v4, v15

    div-float v4, v4, v20

    mul-float v5, v15, v7

    add-float v9, v5, v4

    div-float v11, v15, v20

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v4, v17, v7

    mul-float/2addr v4, v15

    sub-float v12, v11, v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v4

    add-float v4, v4, v16

    neg-float v5, v14

    sub-float v6, v17, v10

    mul-float/2addr v5, v6

    div-float v26, v14, v20

    add-float v5, v5, v26

    add-float/2addr v5, v4

    move/from16 p1, v2

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v27, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2f

    if-nez v2, :cond_2e

    goto :goto_20

    :cond_2e
    move v2, v4

    goto :goto_21

    :cond_2f
    :goto_20
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x437a0000    # 250.0f

    mul-float/2addr v2, v3

    sub-float v2, v4, v2

    :goto_21
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    move/from16 v28, v4

    int-to-float v4, v3

    sub-float v29, v4, v14

    div-float v29, v29, v20

    div-float v4, v4, v20

    sub-float v4, v4, v29

    mul-float v30, v14, v10

    sub-float v4, v4, v30

    neg-int v3, v3

    int-to-float v3, v3

    div-float v3, v3, v20

    add-float v3, v3, v29

    mul-float/2addr v6, v14

    add-float/2addr v6, v3

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v29, v5

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_3a

    move/from16 v30, v7

    const/4 v7, 0x1

    if-eq v3, v7, :cond_37

    const/4 v7, 0x2

    if-eq v3, v7, :cond_34

    const/4 v7, 0x3

    if-eq v3, v7, :cond_31

    :cond_30
    move/from16 v31, v11

    const/4 v11, 0x0

    goto :goto_27

    :cond_31
    if-eqz v5, :cond_33

    const/16 v3, 0x10e

    if-ne v5, v3, :cond_32

    goto :goto_23

    :cond_32
    cmpg-float v3, v10, p1

    if-gez v3, :cond_30

    :goto_22
    move/from16 v31, v11

    const/4 v11, 0x1

    goto :goto_27

    :cond_33
    :goto_23
    cmpl-float v3, v10, p1

    if-ltz v3, :cond_30

    goto :goto_22

    :cond_34
    if-eqz v5, :cond_36

    const/16 v3, 0x10e

    if-ne v5, v3, :cond_35

    goto :goto_24

    :cond_35
    cmpl-float v3, v10, p1

    if-lez v3, :cond_30

    goto :goto_22

    :cond_36
    :goto_24
    cmpg-float v3, v10, p1

    if-gtz v3, :cond_30

    goto :goto_22

    :cond_37
    if-eqz v5, :cond_39

    const/16 v3, 0x10e

    if-ne v5, v3, :cond_38

    goto :goto_25

    :cond_38
    cmpg-float v3, v30, p1

    if-gez v3, :cond_30

    goto :goto_22

    :cond_39
    :goto_25
    cmpl-float v3, v30, p1

    if-ltz v3, :cond_30

    goto :goto_22

    :cond_3a
    move/from16 v30, v7

    if-eqz v5, :cond_3c

    const/16 v3, 0x10e

    if-ne v5, v3, :cond_3b

    goto :goto_26

    :cond_3b
    cmpl-float v3, v30, p1

    if-lez v3, :cond_30

    goto :goto_22

    :cond_3c
    :goto_26
    cmpg-float v3, v30, p1

    if-gtz v3, :cond_30

    goto :goto_22

    :goto_27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v3, v5, :cond_3d

    const/16 v32, 0x1

    goto :goto_28

    :cond_3d
    const/16 v32, 0x0

    :goto_28
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float v19, v19, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v13

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v13

    iget-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 p1, v3

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-eqz v3, :cond_64

    move/from16 v33, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_59

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4d

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3e

    move/from16 v34, v10

    move/from16 p1, v11

    move/from16 v10, v27

    move/from16 v33, v30

    move v11, v9

    move/from16 v27, v13

    move/from16 v30, v14

    move v14, v7

    :goto_29
    move v7, v12

    goto/16 :goto_43

    :cond_3e
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/16 v25, 0x0

    cmpl-float v5, v5, v25

    if-nez v5, :cond_3f

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    :cond_3f
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v5, v5, v25

    if-nez v5, :cond_40

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_40
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v5, v4, v6, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v34, v11

    move/from16 v11, p1

    move/from16 p1, v34

    move/from16 v34, v14

    move v14, v7

    move/from16 v7, v30

    move/from16 v30, v34

    move/from16 v34, v10

    move/from16 v10, v27

    move/from16 v27, v13

    move/from16 v13, v33

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-static {v3, v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    if-nez v3, :cond_41

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_41
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v5, :cond_42

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v5, :cond_45

    :cond_42
    if-nez v32, :cond_45

    :cond_43
    move/from16 v33, v7

    :cond_44
    :goto_2a
    move v11, v9

    goto :goto_29

    :cond_45
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    move/from16 v28, v3

    const/4 v3, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v3, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_46

    const/16 v5, 0x10e

    if-ne v3, v5, :cond_47

    :cond_46
    move/from16 v31, v7

    goto :goto_2e

    :cond_47
    const/4 v3, 0x0

    :goto_2b
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_43

    if-eqz v28, :cond_48

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_2c

    :cond_48
    move v5, v4

    :goto_2c
    neg-float v5, v5

    add-float/2addr v5, v2

    sub-float v5, v5, v26

    add-int/lit8 v6, v3, 0x1

    int-to-float v11, v6

    mul-float v11, v11, v19

    add-float/2addr v11, v5

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v29, v11, v13

    if-lez v29, :cond_49

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    move/from16 v29, v6

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v3, v9

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v3, v13, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    move/from16 v31, v7

    goto :goto_2d

    :cond_49
    move/from16 v29, v6

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    move/from16 v31, v7

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v3, v9

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v3, v11, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_2d
    move/from16 v3, v29

    move/from16 v7, v31

    goto :goto_2b

    :goto_2e
    const/4 v3, 0x0

    :goto_2f
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4c

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v28, :cond_4a

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_30

    :cond_4a
    move v6, v4

    :goto_30
    neg-float v6, v6

    add-float/2addr v6, v2

    add-float v6, v6, v26

    rsub-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    mul-float v7, v7, v19

    add-float/2addr v7, v6

    cmpg-float v6, v7, v11

    if-gez v6, :cond_4b

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v6, v9

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v5, v6, v11, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_31

    :cond_4b
    const/high16 v13, -0x40800000    # -1.0f

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v6, v9

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v5, v6, v7, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_4c
    move v11, v9

    move v7, v12

    move/from16 v33, v31

    goto/16 :goto_43

    :cond_4d
    move/from16 v31, v11

    move/from16 v11, p1

    move/from16 p1, v31

    move/from16 v34, v10

    move/from16 v10, v27

    move/from16 v31, v30

    move/from16 v27, v13

    move/from16 v30, v14

    move/from16 v13, v33

    move v14, v7

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/16 v25, 0x0

    cmpl-float v5, v5, v25

    if-nez v5, :cond_4e

    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    :cond_4e
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v5, v5, v25

    if-nez v5, :cond_4f

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_4f
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v4, v6, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    move v4, v6

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v7, v31

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v3

    move/from16 v33, v7

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-static {v3, v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    if-nez v3, :cond_50

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_50
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v5, :cond_51

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v5, :cond_52

    :cond_51
    if-nez v32, :cond_52

    goto/16 :goto_2a

    :cond_52
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v5, :cond_53

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_54

    :cond_53
    move/from16 v35, v2

    move/from16 v28, v3

    goto :goto_35

    :cond_54
    const/4 v5, 0x0

    :goto_32
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_44

    if-eqz v3, :cond_55

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_33

    :cond_55
    move v6, v4

    :goto_33
    neg-float v6, v6

    add-float/2addr v6, v2

    add-float v6, v6, v26

    add-int/lit8 v7, v5, 0x1

    int-to-float v13, v7

    mul-float v13, v13, v19

    sub-float/2addr v6, v13

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpg-float v28, v6, v11

    if-gez v28, :cond_56

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    move/from16 v35, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v13, v2, v11, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    move/from16 v28, v3

    goto :goto_34

    :cond_56
    move/from16 v35, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    move/from16 v28, v3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v13, v2, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_34
    move v5, v7

    move/from16 v3, v28

    move/from16 v2, v35

    goto :goto_32

    :goto_35
    const/4 v2, 0x0

    :goto_36
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    if-eqz v28, :cond_57

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_37

    :cond_57
    move v6, v4

    :goto_37
    neg-float v3, v6

    add-float v3, v3, v35

    sub-float v3, v3, v26

    add-int/lit8 v5, v2, 0x1

    int-to-float v6, v5

    mul-float v6, v6, v19

    add-float/2addr v6, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v7, v6, v13

    if-lez v7, :cond_58

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, v2, v13, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_38

    :cond_58
    const/high16 v7, -0x40800000    # -1.0f

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v9

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, v2, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_38
    move v2, v5

    goto :goto_36

    :cond_59
    move/from16 v34, v10

    move/from16 p1, v11

    move/from16 v10, v27

    move/from16 v33, v30

    move/from16 v27, v13

    move/from16 v30, v14

    move v14, v7

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/16 v25, 0x0

    cmpl-float v2, v2, v25

    if-nez v2, :cond_5a

    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    :cond_5a
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v2, v2, v25

    if-nez v2, :cond_5b

    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_5b
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v2, v9, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v2

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move v4, v9

    move/from16 v2, v28

    move/from16 v9, v29

    move/from16 v7, v34

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v3

    move v11, v4

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-static {v3, v11, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    if-nez v3, :cond_5c

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_5c
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v4, :cond_5d

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v4, :cond_5f

    :cond_5d
    if-nez v32, :cond_5f

    :cond_5e
    move/from16 v34, v7

    goto/16 :goto_29

    :cond_5f
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_62

    const/16 v5, 0x10e

    if-ne v2, v5, :cond_60

    goto :goto_3b

    :cond_60
    const/4 v2, 0x0

    :goto_39
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5e

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_61

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3a

    :cond_61
    move v5, v11

    :goto_3a
    neg-float v5, v5

    add-float v5, v5, v31

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    mul-float v6, v6, v19

    sub-float/2addr v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v9, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_39

    :cond_62
    :goto_3b
    const/4 v2, 0x0

    :goto_3c
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5e

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_63

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3d

    :cond_63
    move v5, v11

    :goto_3d
    neg-float v5, v5

    sub-float v5, v5, v31

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    mul-float v6, v6, v19

    add-float/2addr v6, v5

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v6, v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_3c

    :cond_64
    move/from16 p1, v11

    move/from16 v2, v28

    move/from16 v33, v30

    move v11, v9

    move/from16 v30, v14

    move/from16 v9, v29

    move v14, v7

    move v7, v10

    move/from16 v10, v27

    move/from16 v27, v13

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/16 v25, 0x0

    cmpl-float v4, v4, v25

    if-nez v4, :cond_65

    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    :cond_65
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v4, v4, v25

    if-nez v4, :cond_66

    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_66
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v4, v12, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move v4, v12

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v3

    move/from16 v34, v7

    move v7, v4

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-static {v3, v7, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    if-nez v3, :cond_67

    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_67
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v4, :cond_68

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v4, :cond_69

    :cond_68
    if-nez v32, :cond_69

    goto :goto_43

    :cond_69
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_6c

    const/16 v5, 0x10e

    if-ne v2, v5, :cond_6a

    goto :goto_40

    :cond_6a
    const/4 v2, 0x0

    :goto_3e
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6e

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_6b

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3f

    :cond_6b
    move v12, v7

    :goto_3f
    neg-float v5, v12

    sub-float v5, v5, v31

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    mul-float v6, v6, v19

    add-float/2addr v6, v5

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v6, v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_3e

    :cond_6c
    :goto_40
    const/4 v2, 0x0

    :goto_41
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6e

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_6d

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_42

    :cond_6d
    move v12, v7

    :goto_42
    neg-float v5, v12

    add-float v5, v5, v31

    rsub-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    mul-float v6, v6, v19

    add-float/2addr v6, v5

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v6, v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_6e
    :goto_43
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/16 v24, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result v2

    mul-float v13, v27, v20

    add-float/2addr v13, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v13

    div-float v2, v2, v20

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v4

    sub-float/2addr v4, v13

    div-float v4, v4, v20

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v6, 0x10e

    if-eqz v5, :cond_70

    if-ne v5, v6, :cond_6f

    goto :goto_44

    :cond_6f
    neg-float v2, v2

    :cond_70
    :goto_44
    if-eqz v5, :cond_72

    if-ne v5, v6, :cond_71

    goto :goto_45

    :cond_71
    neg-float v4, v4

    :cond_72
    :goto_45
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-eqz v5, :cond_76

    const/4 v6, 0x1

    if-ne v5, v6, :cond_73

    goto :goto_46

    :cond_73
    const/4 v6, 0x2

    if-eq v5, v6, :cond_74

    const/4 v2, 0x3

    if-ne v5, v2, :cond_78

    :cond_74
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v2

    cmpg-float v2, v13, v2

    if-gez v2, :cond_78

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_75

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v6, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v2, v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_47

    :cond_75
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v6, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v2, v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_47

    :cond_76
    :goto_46
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v13, v4

    if-gez v4, :cond_78

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v13, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_77

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v5, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v4, v5, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_47

    :cond_77
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v5, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v4, v5, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_78
    :goto_47
    const/4 v2, 0x0

    :goto_48
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8e

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v2, :cond_7a

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v9, :cond_79

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_49

    :cond_79
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_49

    :cond_7a
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    :goto_49
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    const/16 v21, 0x2

    add-int/lit8 v9, v9, -0x2

    if-gt v2, v9, :cond_7b

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v9, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    goto :goto_4a

    :cond_7b
    const/4 v9, 0x0

    :goto_4a
    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v13

    const/4 v10, 0x1

    invoke-virtual {v0, v12, v13, v10}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/motorola/camera/SecureDataHelper;Z)Z

    move-result v12

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v3

    invoke-virtual {v0, v13, v3, v10}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/motorola/camera/SecureDataHelper;Z)Z

    move-result v3

    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v13

    move/from16 v23, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v13, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/motorola/camera/SecureDataHelper;Z)Z

    move-result v10

    if-eqz v12, :cond_7c

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    move-object v12, v3

    const/4 v3, 0x4

    goto :goto_4b

    :cond_7c
    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    :goto_4b
    if-eqz v23, :cond_7d

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v13}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    goto :goto_4c

    :cond_7d
    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    :goto_4c
    invoke-virtual {v4, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/16 v24, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_7e

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v3, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v2, :cond_7f

    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v12, :cond_7f

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v4, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_4d

    :cond_7e
    const/4 v3, 0x0

    :cond_7f
    :goto_4d
    if-eqz v3, :cond_83

    if-eqz v23, :cond_80

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    const/4 v12, 0x4

    goto :goto_4e

    :cond_80
    const/4 v12, 0x4

    invoke-virtual {v5, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    :goto_4e
    if-eqz v23, :cond_81

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v13}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    goto :goto_4f

    :cond_81
    invoke-virtual {v6, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    :goto_4f
    invoke-virtual {v3, v5, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v23, :cond_83

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v5, :cond_82

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_50

    :cond_82
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    :cond_83
    :goto_50
    if-eqz v10, :cond_8c

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v12, 0x4

    invoke-virtual {v5, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    invoke-virtual {v6, v12, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    if-eqz v3, :cond_85

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v4, :cond_84

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_51

    :cond_84
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    :cond_85
    :goto_51
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8b

    if-eqz v2, :cond_86

    const/4 v3, 0x1

    goto :goto_52

    :cond_86
    const/4 v3, 0x0

    :goto_52
    const-string v4, "PanoUIComponent"

    const-string v5, "enter into scaleAnim"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    if-eqz v3, :cond_87

    move/from16 v10, v20

    goto :goto_53

    :cond_87
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_53
    if-eqz v3, :cond_88

    const/high16 v13, 0x40a00000    # 5.0f

    :goto_54
    const/4 v12, 0x0

    goto :goto_55

    :cond_88
    move/from16 v13, v20

    goto :goto_54

    :goto_55
    invoke-direct {v5, v12, v10, v13}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;FF)V

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v10, v5, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    if-eqz v3, :cond_89

    const/high16 v3, 0x40a00000    # 5.0f

    :goto_56
    const/4 v13, 0x0

    goto :goto_57

    :cond_89
    move/from16 v3, v20

    goto :goto_56

    :goto_57
    invoke-direct {v10, v12, v3, v13}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;FF)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, v10, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    const/4 v13, 0x3

    invoke-direct {v12, v13, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v12}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Landroidx/collection/internal/Lock;)V

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v3, v10}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    filled-new-array {v6}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v5

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    if-eqz v9, :cond_8a

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;

    const/4 v10, 0x2

    invoke-direct {v6, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    move/from16 v12, v20

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v10, v12}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;FF)V

    filled-new-array {v9}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v6

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v4, v6, v9}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v9, 0x4

    invoke-virtual {v3, v4, v9}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_58

    :cond_8a
    move/from16 v12, v20

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_58
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_8b
    move/from16 v12, v20

    const/4 v5, 0x3

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_59

    :cond_8c
    move/from16 v12, v20

    const/4 v5, 0x3

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8d

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8d

    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_8d
    :goto_59
    add-int/lit8 v2, v2, 0x1

    move v3, v9

    move/from16 v20, v12

    goto/16 :goto_48

    :cond_8e
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_8f

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    goto :goto_5a

    :cond_8f
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    :goto_5a
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eq v14, v2, :cond_90

    if-eqz v2, :cond_90

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    :cond_90
    if-eqz v2, :cond_91

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    if-nez v2, :cond_91

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    :cond_91
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    if-eqz v2, :cond_96

    const v2, 0x3f0ccccd    # 0.55f

    mul-float/2addr v15, v2

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float v14, v30, v2

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0xb4

    if-eqz v4, :cond_93

    if-ne v4, v5, :cond_92

    goto :goto_5b

    :cond_92
    move v6, v2

    goto :goto_5c

    :cond_93
    :goto_5b
    move v6, v3

    :goto_5c
    if-eqz v4, :cond_95

    if-ne v4, v5, :cond_94

    goto :goto_5e

    :cond_94
    move v4, v3

    :goto_5d
    const/4 v9, 0x0

    goto :goto_5f

    :cond_95
    :goto_5e
    move v4, v2

    goto :goto_5d

    :goto_5f
    invoke-static {v1, v6, v4, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    int-to-float v13, v3

    int-to-float v14, v2

    iget-boolean v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move-object v3, v1

    move v4, v8

    move v8, v11

    move/from16 v9, v33

    move/from16 v10, v34

    move/from16 v11, p1

    invoke-virtual/range {v3 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->update(IILandroid/graphics/Bitmap;FFFFZZFFZF)V

    return-void

    :cond_96
    move/from16 v18, p1

    move v4, v11

    move v11, v7

    move/from16 v7, v33

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move v6, v8

    move v8, v4

    move v4, v6

    move-object v6, v1

    move v9, v7

    move v7, v11

    move v13, v15

    move/from16 v11, v18

    move/from16 v14, v30

    move/from16 v10, v34

    move v15, v0

    invoke-virtual/range {v3 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->update(IILandroid/graphics/Bitmap;FFFFZZFFZF)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final resetDirIconPos(I)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v2

    add-float/2addr v2, v1

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    const/16 v3, 0x10e

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    const/4 v7, 0x1

    if-eq p1, v7, :cond_6

    const/4 v1, 0x2

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v8, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    add-float/2addr p1, v2

    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v7, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    add-float/2addr p1, v2

    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v7, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    add-float/2addr p1, v2

    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v1, v0

    add-float/2addr v1, v2

    invoke-virtual {p1, v6, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v8, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    return-void

    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    invoke-virtual {p0, p1, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v3, :cond_a

    goto :goto_3

    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    invoke-virtual {p0, p1, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final setIdleArrowTexturesPosition()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x42300000    # 44.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->right:F

    const/high16 v8, 0x42380000    # 46.0f

    add-float/2addr v7, v8

    invoke-virtual {v5, v7, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v7, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    invoke-virtual {v5, v4, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    invoke-virtual {v5, v7, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v8

    invoke-virtual {v2, v4, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v2, v4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    mul-float/2addr v5, v4

    invoke-virtual {v0, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    return-void
.end method

.method public final setPanoThumbnailTexBackgroundTranslation(FF)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v1, 0x42300000    # 44.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v1

    add-float/2addr v1, p2

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/16 v2, 0x10e

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_6

    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    mul-float/2addr v0, v3

    add-float/2addr v0, p2

    invoke-virtual {v6, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-nez p1, :cond_9

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v2, :cond_a

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final setSavingProgressVisible(Z)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;-><init>(ILjava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v8, -0x1

    const-wide/16 v3, 0x7d0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations$1()V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final showIdleAnimation(Z)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setIdleArrowTexturesPosition()V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x190

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x2

    move/from16 v10, v18

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v2, v4, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0xc8

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    move-object v2, v12

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/16 v17, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v12 .. v19}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, v12, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Landroidx/collection/internal/Lock;)V

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v12}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v12}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v5, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v0, 0x2

    invoke-virtual {v3, v5, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v0

    add-float/2addr p1, v0

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v0, v6, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v0

    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v1, 0x42a60000    # 83.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v1, v6

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float/2addr v6, v3

    invoke-virtual {v0, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    add-float/2addr p1, v1

    invoke-virtual {v0, v2, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updateTranslation(ZFFLcom/motorola/camera/PreviewSize;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_8

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_1

    :cond_2
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->showIdleAnimation(Z)V

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->showIdleAnimation(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    goto/16 :goto_7

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v3

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v6, 0x43c60000    # 396.0f

    mul-float/2addr p1, v6

    sub-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v3

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v1, 0x43be0000    # 380.0f

    mul-float/2addr p1, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    goto/16 :goto_7

    :cond_7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_8

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iput-boolean v4, p1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isReentering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->progressCapture(Landroid/os/Bundle;)V

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_4

    :cond_b
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_7

    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_5

    :cond_d
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_6

    :cond_e
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_f
    :goto_7
    monitor-exit p0

    return-void

    :goto_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method
