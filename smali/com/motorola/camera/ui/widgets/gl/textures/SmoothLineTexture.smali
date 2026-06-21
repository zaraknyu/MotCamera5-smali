.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "SourceFile"


# instance fields
.field public final mDensity:F

.field public final mPaint:Landroid/graphics/Paint;

.field public final mRotation:F

.field public final mSize:F

.field public mTextureState:I


# direct methods
.method public constructor <init>(FILcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mDensity:F

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x41900000    # 18.0f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mSize:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mRotation:F

    return-void
.end method


# virtual methods
.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mTextureState:I
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

.method public final declared-synchronized onPreDraw()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mTextureState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->updateTexture()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->onPreDraw()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final resetBlendFunc()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void
.end method

.method public final setBlendFunc()V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    invoke-static {v0, v1, v2, p0}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const-string p0, "glBlendColor"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const p0, 0x8001

    const/16 v0, 0x303

    invoke-static {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textureState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mTextureState:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    const-string p0, "INITIALIZED"

    goto :goto_0

    :cond_1
    const-string p0, "LAYOUT_ONLY"

    goto :goto_0

    :cond_2
    const-string p0, "UNINITIALIZED"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mTextureState:I
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

.method public final updateTexture()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mSize:F

    float-to-int v1, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mDensity:F

    mul-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float/2addr v0, v5

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mRotation:F

    neg-float v4, v4

    invoke-virtual {v0, v4, v3, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->mTextureState:I

    return-void
.end method
