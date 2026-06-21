.class public Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mColors:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FILcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    const-string/jumbo v0, "renderer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;->LeftTop:Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;

    invoke-direct {v0, p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;)V

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;->LeftBottom:Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;

    invoke-direct {v1, p3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;)V

    .line 4
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;->RightTop:Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;

    invoke-direct {v2, p3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;)V

    .line 5
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;->RightBottom:Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;

    invoke-direct {v3, p3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerType;)V

    .line 6
    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    move-result-object p3

    .line 7
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    .line 8
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    const/high16 p3, 0x40000000    # 2.0f

    div-float p3, p1, p3

    neg-float v4, p3

    .line 9
    invoke-virtual {v0, v4, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(FF)V

    .line 10
    invoke-virtual {v1, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(FF)V

    .line 11
    invoke-virtual {v2, p3, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(FF)V

    .line 12
    invoke-virtual {v3, p3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(FF)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColor(I)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    .line 15
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    filled-new-array {v0, v0, v0, v0}, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-result-object v0

    .line 16
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    .line 17
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast v2, [F

    mul-int/lit8 v3, v1, 0x4

    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v5, v4, p1

    aput v5, v2, v3

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x1

    .line 19
    aget v6, v4, v6

    aput v6, v2, v5

    add-int/lit8 v5, v3, 0x2

    const/4 v6, 0x2

    .line 20
    aget v6, v4, v6

    aput v6, v2, v5

    const/4 v5, 0x3

    add-int/2addr v3, v5

    .line 21
    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    .line 31
    filled-new-array {p2, p2, p2, p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;[I)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    .line 23
    filled-new-array {p2, p2, p2, p2}, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-result-object p2

    .line 24
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    .line 25
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast v1, [F

    mul-int/lit8 v2, v0, 0x4

    aget-object v3, p2, v0

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v4, v3, p1

    aput v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    .line 27
    aget v5, v3, v5

    aput v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    const/4 v5, 0x2

    .line 28
    aget v5, v3, v5

    aput v5, v1, v4

    const/4 v4, 0x3

    add-int/2addr v2, v4

    .line 29
    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;[I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    .line 33
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([I)V

    .line 35
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private final loadTexture$com$motorola$camera$ui$widgets$gl$textures$FrameTexture()V
    .locals 0

    return-void
.end method

.method private final loadTexture$com$motorola$camera$ui$widgets$gl$textures$SmoothCircleTexture()V
    .locals 0

    return-void
.end method

.method private final unloadTexture$com$motorola$camera$ui$widgets$gl$textures$FrameTexture()V
    .locals 0

    return-void
.end method

.method private final unloadTexture$com$motorola$camera$ui$widgets$gl$textures$SmoothCircleTexture()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final loadTexture()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->loadTexture()V

    goto :goto_0

    :cond_0
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDraw([F[F)V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/PermissionCallback;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v5, v7, v3, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v4, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast p0, [F

    const/4 p2, 0x4

    const/16 v0, 0x10

    invoke-virtual {p1, p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p0, 0x5

    invoke-static {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/PermissionCallback;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v6

    const/16 v7, 0xc

    invoke-virtual {v5, v3, v7, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v4, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast p0, [F

    const/4 p2, 0x4

    const/16 v0, 0x10

    invoke-virtual {p1, p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p0, 0x5

    invoke-static {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 5

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->colorData:[F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput p1, v1, v3

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized setColors([I)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast v1, [F

    mul-int/lit8 v2, v0, 0x4

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast v1, [F

    add-int/lit8 v3, v2, 0x1

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast v1, [F

    add-int/lit8 v3, v2, 0x2

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast v1, [F

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

.method public setPostScale(FFF)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    return-void

    :pswitch_0
    const/high16 p3, 0x3f800000    # 1.0f

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final unloadTexture()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RectCornerTexture$CornerTexture;->unloadTexture()V

    goto :goto_0

    :cond_0
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
