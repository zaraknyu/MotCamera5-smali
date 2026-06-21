.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# static fields
.field public static TOGGLE_SIZE:F = 40.0f


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mDensity:F

.field public mFixedText:Ljava/lang/String;

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mInitialValueStr:Ljava/lang/String;

.field public final mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mSelected:Ljava/lang/Boolean;

.field public mSlopPosition:I

.field public mToggleType:I

.field public final mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mDensity:F

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    add-float/2addr p2, v0

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr p2, v0

    sput p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toggleDarkBg:I

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    :goto_0
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v5, 0x41600000    # 14.0f

    move-object v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 p2, 0x2

    iput p2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mPadding:I

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setZoomValueX(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getColor(Z)I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toggleUnselectedColor:I

    return p0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 1

    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mDensity:F

    mul-float/2addr v0, p0

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mDensity:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v4, v2

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    invoke-static {v5}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v2, v1

    :cond_1
    add-float/2addr v4, v1

    goto :goto_0

    :cond_2
    sub-float/2addr v2, v1

    :goto_0
    new-instance v5, Lcom/motorola/camera/SecureDataHelper;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v6, v0, v3

    add-float/2addr v6, v1

    neg-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v0, v1

    invoke-direct {v5, v2, v6, v4, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v2, v5, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/RectF;->offset(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public abstract handleSingleTap()V
.end method

.method public abstract handleTouchDown()V
.end method

.method public abstract handleTouchUp()V
.end method

.method public final isSelected()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mDensity:F

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMedium:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateOutlineSize(F)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
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

.method public final declared-synchronized onPreDraw([F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->onPreDraw()Z
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

.method public onSelected(Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isArcZoomUI()Z

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mDensity:F

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x41d00000    # 26.0f

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v1, v5, :cond_2

    if-eqz v1, :cond_0

    move/from16 v18, v9

    move v9, v8

    move/from16 v8, v18

    :cond_0
    mul-float v14, v8, v7

    mul-float v15, v9, v7

    invoke-virtual {v6, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v6, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    :cond_1
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;

    const/4 v5, 0x0

    invoke-direct {v11, v0, v15, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FI)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const-wide/16 v12, 0xc8

    invoke-direct/range {v10 .. v17}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v10, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v10, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {v6, v10, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v8, v9

    :goto_0
    mul-float/2addr v8, v7

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateOutlineSize(F)V

    :cond_4
    :goto_1
    sget-boolean v5, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toggleLightBg:I

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toggleDarkBg:I

    :goto_2
    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :goto_3
    if-nez v1, :cond_7

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->resetZoomValueX(Ljava/lang/String;Z)V

    :cond_7
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    invoke-static {v3}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v3

    if-ne v3, v4, :cond_9

    if-eqz v1, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    const v3, 0x3f553f7d    # 0.833f

    :goto_4
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v4, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->getColor(Z)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    goto :goto_7

    :cond_9
    if-eqz v2, :cond_c

    if-eqz v1, :cond_a

    const/high16 v2, 0x41600000    # 14.0f

    goto :goto_5

    :cond_a
    const/high16 v2, 0x41400000    # 12.0f

    :goto_5
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->getColor(Z)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    if-eqz v1, :cond_b

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_6

    :cond_b
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_6
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_c
    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Ljava/lang/Boolean;

    return-void
.end method

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->handleSingleTap()V

    return-void
.end method

.method public final onTouchDown(JLandroid/graphics/PointF;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->handleTouchDown()V

    return-void
.end method

.method public final onTouchUp(Landroid/graphics/PointF;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->handleTouchUp()V

    return-void
.end method

.method public final resetZoomValueX(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mFixedText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Ljava/lang/Boolean;

    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void
.end method

.method public final setToggleType(I)V
    .locals 3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    invoke-static {p1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void
.end method

.method public final setXmlResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    return-void
.end method

.method public final declared-synchronized setZoomValueX(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mFixedText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateOutlineSize(F)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    return-void
.end method
