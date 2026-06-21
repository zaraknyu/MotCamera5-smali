.class public final Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;
.source "SourceFile"


# instance fields
.field public mAngles:[F

.field public final mColor:[F

.field public mDeleteTex:Z

.field public final mSize:[F

.field public mVbo:I

.field public final mVerticesCount:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVbo:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVerticesCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mColor:[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mAngles:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mSize:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v0, p1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    const/4 v2, 0x1

    aput p1, v0, v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    aput p1, v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    const/4 p2, 0x3

    aput p1, v0, p2
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

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized deleteTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mDeleteTex:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVbo:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVbo:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mDeleteTex:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

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

    throw v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVbo:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mDeleteTex:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->deleteTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVbo:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mDeleteTex:Z
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

.method public final onPostDraw()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final declared-synchronized onPreDraw()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mDeleteTex:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->deleteTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVbo:I

    const/4 v3, 0x3

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mColor:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ANGLES:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mAngles:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mSize:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p2

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVbo:I

    const/4 v0, 0x2

    const/16 v2, 0x14

    const/16 v3, 0xc

    invoke-virtual {p2, v0, v2, v3, p3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVerticesCount:I

    const/4 p2, 0x5

    invoke-static {p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V
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
    .locals 2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mVbo:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mDeleteTex:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->deleteTexture()V
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
