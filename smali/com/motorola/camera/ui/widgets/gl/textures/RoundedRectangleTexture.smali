.class public final Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mAspect:F

.field public final mColors:[F

.field public mRadius:F

.field public mSize:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 0

    filled-new-array {p2, p2, p2, p2}, [I

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mAspect:F

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setColors([I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v4

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/PermissionCallback;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v5

    const/4 v6, 0x3

    const/16 v7, 0xc

    invoke-virtual {v4, v6, v7, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v3, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mSize:[F

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p2

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, p2

    const/4 p2, 0x4

    new-array v7, p2, [F

    aput p1, v7, v1

    const/4 p1, 0x1

    aput v0, v7, p1

    const/4 p1, 0x2

    aput v4, v7, p1

    aput v5, v7, v6

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v3, p1, v7}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p1

    const/16 v0, 0x10

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    invoke-virtual {p1, p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p0, 0x5

    invoke-static {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void
.end method

.method public final declared-synchronized setColors([I)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    mul-int/lit8 v2, v0, 0x4

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x1

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x2

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mColors:[F

    add-int/lit8 v2, v2, 0x3

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    aput v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setPostScale(FFF)V
    .locals 0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mAspect:F

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mRadius:F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    return-void
.end method

.method public final setRadius(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mRadius:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mAspect:F

    mul-float/2addr v1, p1

    sub-float v1, v0, v1

    sub-float/2addr v0, p1

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v2, 0x0

    aput v1, p1, v2

    const/4 v1, 0x1

    aput v0, p1, v1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mSize:[F

    return-void
.end method

.method public final setScale(FF)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-super {p0, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mAspect:F

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->mRadius:F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    return-void
.end method
