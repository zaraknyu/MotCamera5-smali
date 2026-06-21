.class public final Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final colorData:[F

.field public final cornerType:Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;

.field public final length:F

.field public mVertexVbo:I

.field public final thick:F

.field public final vertexData:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;)V
    .locals 1

    const-string/jumbo v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->cornerType:Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    const v0, 0x3faaaaa8

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->thick:F

    const p2, 0x41955c29    # 18.67f

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->length:F

    const/16 p1, 0xc

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->vertexData:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->colorData:[F

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->cornerType:Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->length:F

    mul-float v6, v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->vertexIndexXY$1(FFI)V

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->thick:F

    mul-float v9, v0, v8

    invoke-virtual {p0, v9, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->vertexIndexXY$1(FFI)V

    invoke-virtual {p0, v7, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->vertexIndexXY$1(FFI)V

    mul-float/2addr v1, v8

    invoke-virtual {p0, v9, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->vertexIndexXY$1(FFI)V

    mul-float/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v7, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->vertexIndexXY$1(FFI)V

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->vertexIndexXY$1(FFI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->vertexData:[F

    invoke-static {v0}, Lcom/motorola/camera/PermissionCallback;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->mVertexVbo:I

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->mVertexVbo:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v2, v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->colorData:[F

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    const/4 p0, 0x5

    const/4 p1, 0x6

    invoke-static {p0, v5, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->mVertexVbo:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->mVertexVbo:I

    return-void
.end method

.method public final vertexIndexXY$1(FFI)V
    .locals 0

    mul-int/lit8 p3, p3, 0x2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->vertexData:[F

    aput p1, p0, p3

    add-int/lit8 p3, p3, 0x1

    aput p2, p0, p3

    return-void
.end method
