.class public final Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mArrowDirection:I

.field public final mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public final mArrowThickness:F

.field public final mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

.field public final mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mDensity:F

.field public mIsRtl:Z

.field public mRadius:F

.field public mShowClose:Z

.field public mTextPaddingX:F

.field public mTextPaddingY:F

.field public final mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mUseDynamicViewSize:Z

.field public mViewSize:Lcom/motorola/camera/PreviewSize;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 8

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06047d

    invoke-static {p1, v0}, Lcom/motorola/camera/utility/ColorUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowDirection:I

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F

    const p2, 0x3d4ccccd    # 0.05f

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mRadius:F

    const/high16 p2, 0x41000000    # 8.0f

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowThickness:F

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const v0, 0x7f08036f

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-string v4, ""

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const v0, 0x7f0801cb

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingX:F

    const/high16 p1, 0x41400000    # 12.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextPaddingY:F

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_0

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    cmpl-float v6, v1, v4

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget v6, v2, Landroid/graphics/PointF;->y:F

    :goto_0
    div-float/2addr v6, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_1
    :goto_1
    iget v6, v2, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    iget v1, v2, Landroid/graphics/PointF;->x:F

    :goto_3
    div-float/2addr v1, v5

    goto :goto_5

    :cond_3
    :goto_4
    iget v1, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :goto_5
    new-instance v2, Lcom/motorola/camera/SecureDataHelper;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float v4, v3, v6

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v5, v0, v1

    add-float/2addr v3, v6

    sub-float/2addr v0, v1

    invoke-direct {v2, v4, v5, v3, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 5

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mIsRtl:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->updateTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0604a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mDensity:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final onDraw([F[F)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mShowClose:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_0
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1, v3, v5}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mShowClose:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v4

    :cond_2
    if-nez p1, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDismissCurrentTooltip()V

    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v2
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final setDisplayOrientation(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    return-void
.end method
