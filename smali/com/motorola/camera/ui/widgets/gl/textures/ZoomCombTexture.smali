.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mDensity:F

.field public final mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mStyle:I

.field public mTexHeight:F

.field public final mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mDensity:F

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v3

    iget v5, v3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    const/4 v6, 0x0

    const-string v3, "1.0x"

    const/high16 v4, 0x42080000    # 34.0f

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-boolean v2, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    const/4 v2, 0x2

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mPadding:I

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FI)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 p1, 0x42f00000    # 120.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mStyle:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final getScaledHeight()F
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mTexHeight:F

    return p0
.end method

.method public final layout$4()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mStyle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {v2, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mTexHeight:F

    return-void

    :cond_0
    const/4 v1, 0x2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-ne v0, v1, :cond_1

    invoke-virtual {v4, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mTexHeight:F

    return-void

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mDensity:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    invoke-virtual {v2, v3, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v1

    neg-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    invoke-virtual {v4, v3, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v1

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mTexHeight:F

    return-void
.end method

.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->layout$4()V
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

.method public final onDraw([F[F)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

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

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mZoomTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomCombTexture;->mLensTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V
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
