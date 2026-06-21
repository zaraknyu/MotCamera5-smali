.class public final Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "SourceFile"


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mDataList:[I

.field public final mDensity:F

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

.field public mHeight:F

.field public mHistogramBitmap:Landroid/graphics/Bitmap;

.field public final mMargin:F

.field public final mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

.field public mWidth:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v0, p1, p2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, p1

    mul-float/2addr v0, p2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    const/high16 p2, 0x42200000    # 40.0f

    mul-float/2addr p1, p2

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized hide()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V
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

.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V
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

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V
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

.method public final updateHistogram()V
    .locals 13

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureLoaded:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    if-eqz v0, :cond_8

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    if-nez v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    mul-float v3, v2, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v6, -0x1000000

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v7, 0x66

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v7, Landroid/graphics/RectF;

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v8, v1

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    add-float/2addr v1, v9

    const/4 v9, 0x0

    invoke-direct {v7, v9, v9, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v7, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    array-length v6, v1

    new-array v7, v6, [Landroid/graphics/Point;

    array-length v8, v1

    move v9, v4

    move v10, v9

    :goto_0
    if-ge v9, v8, :cond_3

    aget v11, v1, v9

    if-le v11, v10, :cond_2

    move v10, v11

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    if-nez v10, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_1
    if-ge v1, v6, :cond_5

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    add-int/lit8 v9, v6, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    rem-int v9, v1, v6

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    add-float/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    aget v11, v11, v1

    int-to-float v11, v11

    int-to-float v12, v10

    div-float/2addr v11, v12

    mul-float/2addr v11, v9

    sub-float/2addr v9, v11

    add-float/2addr v9, v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    add-float/2addr v11, v2

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    new-instance v11, Landroid/graphics/Point;

    float-to-int v8, v8

    float-to-int v9, v9

    invoke-direct {v11, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v11, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v7, :cond_7

    aget-object v1, v7, v4

    array-length v6, v7

    sub-int/2addr v6, v5

    aget-object v5, v7, v6

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    add-float/2addr v8, v2

    invoke-virtual {v6, v1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    array-length v1, v7

    move v8, v4

    :goto_3
    if-ge v8, v1, :cond_6

    aget-object v9, v7, v8

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v6, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    iget v1, v5, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    add-float/2addr v5, v2

    invoke-virtual {v6, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    invoke-virtual {v0, v6, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_8
    :goto_4
    return-void
.end method
