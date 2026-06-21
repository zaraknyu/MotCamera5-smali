.class public final Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;
.source "SourceFile"


# static fields
.field public static final VERTICES_DATA:[F


# instance fields
.field public final mColor:[F

.field public mDirection:I

.field public mVertexVbo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->VERTICES_DATA:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    const/4 v0, 0x4

    .line 3
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mColor:[F

    .line 4
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    invoke-static {v2, p1, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x8

    .line 5
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 3

    .line 6
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mColor:[F

    .line 9
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    aput v1, v0, p1

    .line 10
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 11
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 12
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 p2, 0x3

    aput p1, v0, p2

    const/4 p1, 0x6

    .line 13
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->VERTICES_DATA:[F

    invoke-static {v0}, Lcom/motorola/camera/PermissionCallback;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    return-void
.end method

.method public final onPostDraw()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final onPreDraw()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 5

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v1

    const/4 v2, 0x0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    const/4 v3, 0x3

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    return-object v0
.end method

.method public final onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mColor:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DIAGONAL:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p3, :pswitch_data_0

    throw v0

    :pswitch_0
    move p3, v1

    goto :goto_0

    :pswitch_1
    move p3, v2

    :goto_0
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    move p3, v4

    goto :goto_1

    :cond_0
    move p3, v3

    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->INVERT:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    packed-switch p3, :pswitch_data_1

    throw v0

    :pswitch_2
    move v5, v2

    goto :goto_2

    :pswitch_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_3

    :cond_1
    move v5, v3

    :goto_3
    packed-switch p3, :pswitch_data_2

    throw v0

    :pswitch_4
    move p3, v1

    goto :goto_4

    :pswitch_5
    move p3, v2

    :goto_4
    if-eqz p3, :cond_2

    move p3, v4

    goto :goto_5

    :cond_2
    move p3, v3

    :goto_5
    const/4 v6, 0x2

    new-array v7, v6, [F

    aput v5, v7, v1

    aput p3, v7, v2

    invoke-virtual {p1, p2, v7}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    packed-switch p0, :pswitch_data_3

    throw v0

    :pswitch_6
    move p3, v2

    goto :goto_6

    :pswitch_7
    move p3, v1

    :goto_6
    if-eqz p3, :cond_3

    move p3, v4

    goto :goto_7

    :cond_3
    move p3, v3

    :goto_7
    packed-switch p0, :pswitch_data_4

    throw v0

    :pswitch_8
    move p0, v1

    goto :goto_8

    :pswitch_9
    move p0, v2

    :goto_8
    if-eqz p0, :cond_4

    move v3, v4

    :cond_4
    new-array p0, v6, [F

    aput p3, p0, v1

    aput v3, p0, v2

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public final unloadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    return-void
.end method
