.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final colorData:[F

.field public final drawHeight:F

.field public final drawWidth:F

.field public gapCenter:F

.field public final iconHalfAndGap:F

.field public mDrawBottomHalf:Z

.field public mDrawTopHalf:Z

.field public final mVertexChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mVertexVbo:I

.field public final slideHeight:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

.field public final vertexData:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 2

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexData:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mDrawTopHalf:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mDrawBottomHalf:Z

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->colorData:[F

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mVertexVbo:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mVertexChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const p2, 0x3fce147b    # 1.61f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->drawWidth:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->drawHeight:F

    const/high16 v1, 0x41900000    # 18.0f

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->iconHalfAndGap:F

    const/high16 v1, 0x42980000    # 76.0f

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->slideHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    add-float/2addr p2, p1

    add-float/2addr v0, p1

    invoke-virtual {v1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->setColor(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->updateVertexData()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexData:[F

    invoke-static {v0}, Lcom/motorola/camera/PermissionCallback;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mVertexVbo:I

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mVertexChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mVertexVbo:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexData:[F

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->setVboFloats(I[F)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    const/16 v4, 0x8

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mVertexVbo:I

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v3, v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->colorData:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mDrawTopHalf:Z

    const/4 p2, 0x5

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    invoke-static {p2, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    :cond_1
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mDrawBottomHalf:Z

    if-eqz p0, :cond_2

    invoke-static {p2, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    :cond_2
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final setColor(I)V
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->colorData:[F

    const/4 v2, 0x0

    aput v0, p0, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/4 v2, 0x1

    aput v0, p0, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    const/4 v0, 0x2

    aput p1, p0, v0

    const/4 p1, 0x3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p0, p1

    return-void
.end method

.method public final unloadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/PermissionCallback;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mVertexVbo:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mVertexVbo:I

    return-void
.end method

.method public final updateVertexData()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->drawWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->drawHeight:F

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    int-to-float v4, v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->slideHeight:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    iget-object v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->gapCenter:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->iconHalfAndGap:F

    add-float/2addr v4, v1

    cmpl-float v3, v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_0

    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mDrawTopHalf:Z

    move v4, v2

    goto :goto_0

    :cond_0
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mDrawTopHalf:Z

    :goto_0
    neg-float v3, v0

    invoke-virtual {p0, v3, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexIndexXY(FFI)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexIndexXY(FFI)V

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexIndexXY(FFI)V

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexIndexXY(FFI)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->gapCenter:F

    sub-float/2addr v4, v1

    neg-float v1, v2

    cmpg-float v2, v4, v1

    if-gez v2, :cond_1

    iput-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mDrawBottomHalf:Z

    move v4, v1

    goto :goto_1

    :cond_1
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->mDrawBottomHalf:Z

    :goto_1
    const/4 v2, 0x4

    invoke-virtual {p0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexIndexXY(FFI)V

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexIndexXY(FFI)V

    const/4 v1, 0x6

    invoke-virtual {p0, v3, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexIndexXY(FFI)V

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexIndexXY(FFI)V

    return-void
.end method

.method public final vertexIndexXY(FFI)V
    .locals 0

    mul-int/lit8 p3, p3, 0x2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$GapBarTexture;->vertexData:[F

    aput p1, p0, p3

    add-int/lit8 p3, p3, 0x1

    aput p2, p0, p3

    return-void
.end method
