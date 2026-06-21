.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.source "SourceFile"


# instance fields
.field public mAnim:I

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

.field public mBtnDownPosition:Landroid/graphics/PointF;

.field public final mDensity:F

.field public final mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$1;

.field public mDragDirection:I

.field public mDragDisableTime:J

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mLastPosition:Landroid/graphics/PointF;

.field public mLeftIgnoreArea:F

.field public mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mOnDownOrigin:Landroid/graphics/PointF;

.field public mOnOtherDownHandled:Z

.field public mOrientation:I

.field public mRightIgnoreArea:F

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static -$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnim:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnim:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public static -$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnim:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnim:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;)V
    .locals 1

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDisableTime:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$1;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$1;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    return-void
.end method


# virtual methods
.method public final animateModeFadeIn(ILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V
    .locals 11

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->updateModeIcon(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->updateDots(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    if-ne p2, v0, :cond_0

    const/high16 p2, 0x42800000    # 64.0f

    mul-float/2addr v1, p2

    iput v1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_0

    :cond_0
    const/high16 p2, -0x3d800000    # -64.0f

    mul-float/2addr v1, p2

    iput v1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    :goto_0
    const/4 p2, 0x0

    iput p2, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;

    const/4 p2, 0x1

    invoke-direct {v3, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;I)V

    const-wide/16 v4, 0xb4

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Landroidx/collection/internal/Lock;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v2, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p2, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;

    const/4 p1, 0x2

    invoke-direct {v4, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;I)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-wide/16 v5, 0xb4

    const/4 v7, 0x0

    const/4 v9, 0x2

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p0, 0x2

    invoke-virtual {p2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animateModeFadeOut()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;I)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v2, 0xb4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    filled-new-array {v2, v3, v4, v1}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    filled-new-array {v1, v2, v3}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final checkSwitchMode$1(F)Z
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->switchToDrag$1(Z)V

    return v2

    :cond_0
    const/high16 v1, -0x3e000000    # -32.0f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->switchToDrag$1(Z)V

    return v2

    :cond_1
    return v0
.end method

.method public final getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final loadTexture()V
    .locals 10

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v1, 0x7f080233

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    const v4, 0x7f0801d5

    invoke-direct {v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    const/high16 v4, 0x41400000    # 12.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    mul-float/2addr v5, v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object v0

    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mInitialTouchSlop:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f12045e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mPadding:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/ColorToolbox;->sliderShadow:I

    invoke-virtual {v0, v4, v1, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v1, 0x7f080226

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v1, 0x7f0801a2

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnim:I

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onDrawFbo([F[F)V
    .locals 0

    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDisableTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDisableTime:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xb4

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v7, 0x2

    if-eq v3, v1, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_e

    iget-object v3, v6, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$1;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_7

    :cond_4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOrientation:I

    if-eqz v0, :cond_6

    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v1

    :goto_3
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    if-ne v3, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v3, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_9

    cmpl-float v1, v3, v4

    if-lez v1, :cond_8

    iput v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    goto :goto_4

    :cond_8
    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    goto :goto_4

    :cond_9
    cmpl-float v1, v4, v3

    if-lez v1, :cond_a

    iput v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    goto :goto_4

    :cond_a
    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    if-ne v1, v7, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->checkSwitchMode$1(F)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    goto :goto_5

    :cond_c
    if-nez v0, :cond_e

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    if-ne v0, v8, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->checkSwitchMode$1(F)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_e

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const/high16 v3, 0x40800000    # 4.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    mul-float/2addr v5, v3

    float-to-double v5, v5

    cmpl-double v0, v0, v5

    if-lez v0, :cond_e

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    :cond_e
    :goto_5
    move v1, v2

    goto/16 :goto_7

    :cond_f
    :goto_6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    :cond_10
    move v1, v3

    goto :goto_7

    :cond_11
    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_12

    goto :goto_5

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLeftIgnoreArea:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mRightIgnoreArea:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_13

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLastPosition:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    goto :goto_5

    :cond_13
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_10

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOrientation:I

    if-eqz v0, :cond_14

    if-ne v0, v5, :cond_15

    :cond_14
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    if-ne v0, v7, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->checkSwitchMode$1(F)Z

    :cond_15
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    invoke-virtual {v6}, Lcom/motorola/camera/utility/Flags;->clear()V

    goto/16 :goto_5

    :goto_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public final setDisplayOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOrientation:I

    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void
.end method

.method public final switchToDrag$1(Z)V
    .locals 9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSmallCliSlider()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertSmallCliToSliderMode(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, -0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-static {v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result v1

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result v1

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSmallCliSlider()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_4

    if-ne v3, v0, :cond_4

    move v2, v5

    goto :goto_4

    :cond_4
    if-ne v0, v5, :cond_5

    move v2, v4

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertSmallCliToSliderMode(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move v7, v5

    :goto_2
    if-ltz v6, :cond_7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-static {v7}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result v2

    :goto_4
    if-nez p1, :cond_a

    if-ne v2, v4, :cond_8

    goto :goto_5

    :cond_8
    if-ne v2, v5, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    goto :goto_6

    :cond_a
    if-ne v1, v4, :cond_b

    :goto_5
    return-void

    :cond_b
    :goto_6
    if-eqz p1, :cond_c

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    goto :goto_7

    :cond_c
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    :goto_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {p0, v0, v1, p1}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    :cond_0
    return-void
.end method

.method public final updateDots(Z)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOrientation:I

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float v1, v0, v4

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 v0, -0x3e800000    # -16.0f

    mul-float/2addr v0, v3

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr v3, p1

    invoke-virtual {p0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final updateModeIcon(I)V
    .locals 6

    const/16 v0, 0x12

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v4, 0x7f080233

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f12045e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v4, 0x7f080241

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f12046c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v4, 0x7f080236

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f120462

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-nez p1, :cond_5

    move v3, v5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz p0, :cond_8

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_7

    :cond_6
    move v4, v5

    :cond_7
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_8
    return-void
.end method
