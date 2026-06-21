.class public final Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mActiveDrag:Z

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mDensity:F

.field public mEnableDrag:Z

.field public final mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

.field public final mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mLocked:Z

.field public mRectRoi:Lcom/motorola/camera/SecureDataHelper;

.field public mRoiActive:Z

.field public final mRoiCallback:Ljava/lang/ref/WeakReference;

.field public final mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mSupportsExposureComp:Z

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    const/high16 p3, 0x42800000    # 64.0f

    mul-float/2addr p2, p3

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f0604a2

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-direct {v0, p2, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(FILcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v1, 0x8

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p1, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ILcom/motorola/camera/ui/widgets/gl/Matrices;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    return-void
.end method


# virtual methods
.method public final applyCenterRoiAnimation(Z)V
    .locals 11

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    if-eqz p1, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;

    const/4 p1, 0x1

    invoke-direct {v4, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, v3, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$4;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;I)V

    invoke-direct {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Landroidx/collection/internal/Lock;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    filled-new-array {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final applyShowBarAnimation()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;I)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final cancelAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setPostScale(FFF)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void
.end method

.method public final cancelTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-nez v0, :cond_0

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x42600000    # 56.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    cmpl-float v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget v5, p0, Landroid/graphics/PointF;->y:F

    :goto_0
    div-float/2addr v5, v4

    goto :goto_2

    :cond_1
    :goto_1
    iget v5, p0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :goto_2
    if-eqz v2, :cond_3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    iget p0, p0, Landroid/graphics/PointF;->x:F

    :goto_3
    div-float/2addr p0, v4

    goto :goto_5

    :cond_3
    :goto_4
    iget p0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :goto_5
    new-instance v1, Lcom/motorola/camera/SecureDataHelper;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float v3, v2, v5

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v4, v0, p0

    add-float/2addr v2, v5

    sub-float/2addr v0, p0

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    return-object v1
.end method

.method public final loadTexture()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->loadTexture()V

    const/high16 v1, 0x42600000    # 56.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    mul-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object p0

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    return-void
.end method

.method public final onChangePosition(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->updateNewRect(FF)Lcom/motorola/camera/SecureDataHelper;

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setRoiActive(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->updateNewRect(FF)Lcom/motorola/camera/SecureDataHelper;

    move-result-object p3

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object p3

    :goto_0
    iget-object p3, p3, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/RectF;

    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p4, :cond_2

    xor-int/lit8 p4, p1, 0x1

    iget-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p5, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyShowBarAnimation()V

    :cond_2
    if-nez p1, :cond_3

    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-eqz p4, :cond_7

    :cond_3
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    if-eqz p4, :cond_7

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p4, :cond_6

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    check-cast p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p3, p4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p5

    if-nez p5, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean p1, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mDragging:Z

    iget-object p5, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p5}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object p5

    iget-object p5, p5, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p5, Landroid/graphics/RectF;

    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerX()F

    move-result p7

    iget-object p8, p4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p8, p8, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p8, p8

    const/high16 p9, 0x40000000    # 2.0f

    div-float/2addr p8, p9

    add-float/2addr p8, p7

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result p5

    iget-object p7, p4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p7, p7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p7, p7

    div-float/2addr p7, p9

    sub-float/2addr p5, p7

    neg-float p5, p5

    new-instance p7, Landroid/graphics/PointF;

    invoke-direct {p7, p8, p5}, Landroid/graphics/PointF;-><init>(FF)V

    const-string p9, "LOCATION"

    invoke-virtual {p6, p9, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p7, "ENABLE"

    invoke-virtual {p6, p7, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p7, "ROI_DRAG"

    invoke-virtual {p6, p7, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p7, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v0, 0x0

    invoke-direct {p7, p9, p6, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p3, p7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    if-nez p1, :cond_5

    new-instance p6, Landroid/graphics/PointF;

    invoke-direct {p6, p8, p5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p6, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchArea:Landroid/graphics/PointF;

    :cond_5
    iget-object p5, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p5, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setFocusExposeLocked(ZZ)V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dismissLockToast()V

    invoke-virtual {p4}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->checkCollision()V

    iget-object p5, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-virtual {p5, p6}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    iput-boolean p2, p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    if-nez p1, :cond_6

    invoke-virtual {p4, p2}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    :cond_6
    :goto_1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    :cond_7
    return-void
.end method

.method public final onDraw([F[F)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v2, :cond_1

    const/16 v2, 0xc11

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldDualPaneScreen()Z

    move-result v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v6, Lcom/motorola/camera/PreviewSize;->width:I

    if-eqz v5, :cond_0

    move v1, v7

    :cond_0
    add-int/2addr v4, v1

    iget v1, v6, Lcom/motorola/camera/PreviewSize;->height:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v4, v1, v5, p1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const-string p1, "glScissor"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-virtual {v3, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string p1, "glDisable"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onLongPress(Landroid/graphics/PointF;Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_8

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mDragging:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v2, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    invoke-direct {v1, v3, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    :goto_0
    const-string p1, "LONG_PRESS"

    invoke-static {p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v1

    const-string v3, "LOCATION"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    xor-int/lit8 v1, p2, 0x1

    const-string v3, "LOCK_FOCUS_STATE"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    if-nez v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isShutterButtonMode()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v0

    :goto_2
    const-string v3, "ROI_INNER"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setFocusExposeLocked(ZZ)V

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dismissLockToast()V

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v0, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :cond_7
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 1

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-eqz p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_6

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mDragging:Z

    if-eqz p2, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz p4, :cond_2

    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget p5, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    invoke-direct {p3, p5, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p3

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p5, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setFocusExposeLocked(ZZ)V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dismissLockToast()V

    :cond_3
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object p3

    const-string v0, "LOCATION"

    invoke-virtual {p5, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "LOCK_FOCUS_STATE"

    invoke-virtual {p5, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "ENABLE"

    const/4 p3, 0x1

    xor-int/2addr p4, p3

    invoke-virtual {p5, p2, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "ROI_INNER"

    invoke-virtual {p5, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "CAPTURE_TRIGGER"

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p5, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "CHECKIN_CAPTURE_TRIGGER"

    const-string p3, "TOUCH"

    invoke-virtual {p5, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_4

    mul-int/lit16 p2, p2, 0x3e8

    const-string p3, "TIMER"

    invoke-virtual {p5, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->checkCollision()V

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, p3, p5, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public final onTouchDown(JLandroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->cancelAnimation()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLensMovementBehavior:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/zzr;->cancel()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLensMovementBehavior:Lcom/google/android/gms/tasks/zzr;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->isModeInterceptGesture()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V
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

.method public final setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public final setFocusExposeLocked(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    :cond_2
    :goto_0
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-eqz p1, :cond_3

    const p1, 0x7f0603fe

    goto :goto_1

    :cond_3
    const p1, 0x7f0604a2

    :goto_1
    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColor(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->setColor(I)V

    return-void
.end method

.method public final setRoiActive(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final setTouchable(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->unloadTexture()V

    :cond_2
    return-void
.end method

.method public final updateNewRect(FF)Lcom/motorola/camera/SecureDataHelper;
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    new-instance v4, Lcom/motorola/camera/SecureDataHelper;

    sub-float v5, p1, v2

    add-float v6, p2, v1

    add-float/2addr p1, v2

    sub-float/2addr p2, v1

    invoke-direct {v4, v5, v6, p1, p2}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v5, Landroid/graphics/Rect;

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v6, v6, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v6, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->MODES_SLIDER:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-static {v6}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->getTouchKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;)Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_1
    iget-object v6, v6, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-lez v7, :cond_2

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v8, :cond_2

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v8, v8, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v8, :cond_2

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    :cond_2
    new-instance v7, Landroid/graphics/PointF;

    iget-object v8, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v8, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    iget v8, v8, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v8, v8

    invoke-direct {v7, v9, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Lcom/motorola/camera/SecureDataHelper;

    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v3

    sub-float/2addr v9, v10

    iget v7, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v7, v3

    iget v11, v5, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float v11, v7, v11

    iget v12, v5, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    sub-float/2addr v12, v10

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    invoke-direct {v8, v9, v11, v12, v7}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v6, v7, v9}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    sget-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v6, v7}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v8, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTsbOffsetBasedOnOrientation()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v9

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    :cond_3
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v9

    mul-float/2addr v9, v7

    invoke-virtual {v8, v6, v9}, Lcom/motorola/camera/SecureDataHelper;->inset(FF)V

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v3

    add-float/2addr v6, v7

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, v3

    add-float/2addr p1, v6

    iget-object v6, v8, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v6, Landroid/graphics/RectF;->bottom:F

    :cond_4
    iget p1, v5, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_5

    iget-object p1, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object p1, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->top:I

    iget-object v2, v8, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    sub-float/2addr v5, p1

    iput v5, v2, Landroid/graphics/RectF;->top:F

    :cond_5
    :goto_0
    move-object p1, v8

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v5

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result p1

    add-float/2addr p1, v5

    iget-object v5, v8, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v6, p1

    iput v6, v5, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :goto_1
    if-nez p1, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v5, v4, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v3

    sub-float/2addr v2, v6

    iget v6, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_8

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    :goto_2
    div-float/2addr v6, v3

    sub-float/2addr v2, v6

    goto :goto_3

    :cond_8
    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v3

    add-float/2addr v6, v2

    iget v2, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v6, v2

    if-gez v2, :cond_9

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    goto :goto_2

    :cond_9
    iget v2, v5, Landroid/graphics/RectF;->left:F

    :goto_3
    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v7

    div-float/2addr v7, v3

    add-float/2addr v7, v6

    iget v6, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v7, v6

    if-gez v6, :cond_a

    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v7

    :goto_4
    div-float/2addr v7, v3

    add-float/2addr v7, v6

    goto :goto_5

    :cond_a
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v7

    div-float/2addr v7, v3

    sub-float/2addr v6, v7

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Lcom/motorola/camera/SecureDataHelper;->height()F

    move-result v7

    goto :goto_4

    :cond_b
    iget v7, v5, Landroid/graphics/RectF;->top:F

    :goto_5
    invoke-virtual {v5, v2, v7}, Landroid/graphics/RectF;->offsetTo(FF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    mul-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {v3, v5, p2, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_c

    move v1, v0

    :cond_c
    :goto_6
    monitor-enter p0

    :try_start_0
    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRectRoi:Lcom/motorola/camera/SecureDataHelper;

    iget-object p1, v4, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRectRoi:Lcom/motorola/camera/SecureDataHelper;

    iget-object v2, v2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p1, :cond_f

    iget-object v2, v4, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v4, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->checkCollision()V

    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$RoiLocationCallback;

    if-eqz p1, :cond_f

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    :goto_7
    monitor-exit p0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p1, :cond_13

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    const/4 v0, 0x2

    :goto_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    const/high16 v0, 0x42600000    # 56.0f

    goto :goto_9

    :cond_11
    const/4 p0, 0x0

    throw p0

    :cond_12
    const/high16 v0, -0x3da00000    # -56.0f

    :goto_9
    mul-float/2addr v0, p0

    invoke-direct {v1, v0, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_13
    return-object v4

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
