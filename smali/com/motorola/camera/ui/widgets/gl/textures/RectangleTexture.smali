.class public Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mColor:[F

.field public mLineWidth:F

.field public mRect:Lcom/motorola/camera/SecureDataHelper;

.field public final mVertices:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0xc

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mColor:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mLineWidth:F

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    aput v3, p1, v2

    const/4 v2, 0x2

    aget v3, v0, v2

    aput v3, p1, v2

    const/4 v2, 0x3

    aget v0, v0, v2

    aput v0, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;
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

.method public final declared-synchronized loadTexture()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    const/4 v5, 0x3

    const/16 v6, 0xc

    invoke-virtual {v3, v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mColor:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mLineWidth:F

    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const-string p1, "glLineWidth"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-static {v2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V
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

.method public final declared-synchronized setColor(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x3

    aput p1, v0, v1
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

.method public final declared-synchronized setRect$3(Lcom/motorola/camera/SecureDataHelper;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/16 v2, 0xa

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x7

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    iget p1, p1, Landroid/graphics/RectF;->right:F

    const/16 v1, 0x9

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1
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

.method public final declared-synchronized setSize(FF)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/SecureDataHelper;

    neg-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v3, p2, v2

    div-float/2addr p1, v2

    neg-float p2, p2

    div-float/2addr p2, v2

    invoke-direct {v0, v1, v3, p1, p2}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mRect:Lcom/motorola/camera/SecureDataHelper;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->setRect$3(Lcom/motorola/camera/SecureDataHelper;)V
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
    .locals 0

    return-void
.end method
