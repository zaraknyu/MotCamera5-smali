.class public final Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mAngles:[F

.field public final mColors:[F

.field public final mDash:[F

.field public mMask:I

.field public final mSize:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    filled-new-array {v0, v0, v0, v0}, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    .line 3
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mColors:[F

    const/4 p1, 0x2

    .line 4
    new-array v1, p1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mAngles:[F

    .line 5
    new-array v1, p1, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mSize:[F

    .line 6
    new-array v1, p1, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mDash:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mColors:[F

    mul-int/lit8 v4, v2, 0x4

    aget-object v5, v0, v2

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v6, v5, v1

    aput v6, v3, v4

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x1

    .line 8
    aget v7, v5, v7

    aput v7, v3, v6

    add-int/lit8 v6, v4, 0x2

    .line 9
    aget v7, v5, p1

    aput v7, v3, v6

    const/4 v6, 0x3

    add-int/2addr v4, v6

    .line 10
    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

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

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 1

    .line 12
    filled-new-array {p2, p2, p2, p2}, [I

    move-result-object p2

    .line 13
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    .line 14
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mColors:[F

    const/4 p1, 0x2

    .line 15
    new-array v0, p1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mAngles:[F

    .line 16
    new-array v0, p1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mSize:[F

    .line 17
    new-array p1, p1, [F

    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mDash:[F

    .line 18
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->setColors([I)V

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

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

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
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

    const/16 v3, 0xb

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

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ANGLES:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mAngles:[F

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mSize:[F

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MASK:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mMask:I

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DASH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mDash:[F

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p1

    const/16 p2, 0x10

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mColors:[F

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p0, 0x5

    invoke-static {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

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

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mColors:[F

    mul-int/lit8 v2, v0, 0x4

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x1

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x2

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;->mColors:[F

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

.method public final unloadTexture()V
    .locals 0

    return-void
.end method
