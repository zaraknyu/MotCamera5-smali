.class public final Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mStencilSize:Landroid/util/SizeF;

.field public mUpdateVbo:Z

.field public mVboId:I

.field public mVertices:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/PermissionCallback;->deleteVbo(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/motorola/camera/PermissionCallback;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v1

    const/16 v3, 0x8

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {p0, v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final declared-synchronized setSize(FF)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, p1, p2}, Landroid/util/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mStencilSize:Landroid/util/SizeF;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    neg-float v1, p1

    div-float/2addr p2, v0

    neg-float v0, p2

    new-instance v2, Lcom/motorola/camera/SecureDataHelper;

    invoke-direct {v2, v1, p2, p1, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v4, 0x2

    aput p1, v2, v4

    const/4 v4, 0x3

    aput v0, v2, v4

    const/4 v0, 0x4

    aput v1, v2, v0

    const/4 v0, 0x5

    aput p2, v2, v0

    const/4 v0, 0x6

    aput p1, v2, v0

    const/4 p1, 0x7

    aput p2, v2, p1

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z
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

.method public final unloadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    return-void
.end method
