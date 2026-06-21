.class public Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "NvAndroidGlyphMaskGenerator"

.field private static final m_verbose:Z = false


# instance fields
.field private m_hander:Landroid/os/Handler;

.field private m_handlerThread:Landroid/os/HandlerThread;

.field private m_hardwareRenderingSem:Ljava/util/concurrent/Semaphore;

.field private m_surface:Landroid/view/Surface;

.field private m_surfaceHeight:I

.field private m_surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_surfaceWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hardwareRenderingSem:Ljava/util/concurrent/Semaphore;

    :try_start_0
    invoke-virtual {p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->canUseHardwareRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Glyph Mask Generator Watcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hander:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance p1, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator$1;

    invoke-direct {p1, p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator$1;-><init>(Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;)V

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hander:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hardwareRenderingSem:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private calcGlyphSizeInCanvasPixel(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;Landroid/graphics/Canvas;)Landroid/graphics/PointF;
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/PointF;

    iget-object p2, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object p1, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_0
    iget-object p2, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object p1, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    aput p2, v0, v2

    const/4 p2, 0x3

    aput p1, v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p0, Landroid/graphics/PointF;

    aget p1, v0, v2

    aget v1, v0, v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    aget p2, v0, p2

    aget v0, v0, v3

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private static prepareCanvasForBitmap(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Canvas;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p1, v0

    div-float/2addr p1, p3

    int-to-float p2, v1

    div-float/2addr p2, p4

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private prepareSurface(II)Landroid/view/Surface;
    .locals 3

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    if-gt p1, v1, :cond_1

    iget v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x7f

    div-int/lit16 p1, p1, 0x80

    mul-int/lit16 p1, p1, 0x80

    iget v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p2, p2, 0x7f

    div-int/lit16 p2, p2, 0x80

    mul-int/lit16 p2, p2, 0x80

    iget v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    iput p2, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1
.end method

.method private selectPaint(Lcom/cdv/effect/text/NvAndroidTextLayout;ZLcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    return-object p1
.end method

.method private setupHardwareCanvasForGlyphPath(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;FFFFII)Landroid/graphics/Path;
    .locals 2

    invoke-virtual {p1, p2, p3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p4

    :cond_0
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    neg-float v0, p6

    neg-float v1, p8

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p10, p10

    sub-float/2addr p7, p6

    div-float/2addr p10, p7

    int-to-float p6, p11

    sub-float/2addr p9, p8

    div-float/2addr p6, p9

    invoke-virtual {p3, p10, p6}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->FontFamilyName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->shouldDrawGlyphWithPath(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;Ljava/lang/String;)Z

    invoke-virtual {p5, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-object p4
.end method

.method private shouldDrawGlyphWithPath(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "Alimama FangYuanTi VF"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    iget-boolean p0, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->mayHaveContextualForm:Z

    if-eqz p0, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private waitHardwareRenderingFinished()Z
    .locals 6

    const-string v0, "NvAndroidGlyphMaskGenerator"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hardwareRenderingSem:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "Hardware rendering wait timed out!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public canUseHardwareRenderer()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public doDrawDoubleSidedGlyphOutline(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;FLandroid/graphics/Canvas;ZZ)Z
    .locals 14

    move-object/from16 v0, p4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    move/from16 v4, p7

    invoke-direct {p0, p1, v4, v2}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->selectPaint(Lcom/cdv/effect/text/NvAndroidTextLayout;ZLcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Landroid/graphics/Paint;

    move-result-object v12

    if-nez v12, :cond_1

    return v1

    :cond_1
    move/from16 v4, p8

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v4, p5

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/16 v4, 0xff

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->FontFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->shouldDrawGlyphWithPath(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;Ljava/lang/String;)Z

    move-result p0

    const/4 v13, 0x1

    if-eqz p0, :cond_4

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return v13

    :cond_3
    move-object/from16 p0, p6

    invoke-virtual {p0, v0, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_4
    move-object/from16 p0, p6

    invoke-virtual {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getText()Landroid/text/SpannableString;

    move-result-object v4

    iget v5, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iget v6, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    iget v7, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineStart:I

    iget v8, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineEnd:I

    iget-object v0, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v10, v0, Landroid/graphics/PointF;->y:F

    iget-boolean v11, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->isRtl:Z

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v13

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public doDrawGlyphBody(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;ZZ)Z
    .locals 14

    move-object/from16 v0, p4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    move/from16 v4, p6

    invoke-direct {p0, p1, v4, v2}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->selectPaint(Lcom/cdv/effect/text/NvAndroidTextLayout;ZLcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Landroid/graphics/Paint;

    move-result-object v12

    if-nez v12, :cond_1

    return v1

    :cond_1
    move/from16 v4, p7

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v4, 0xff

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->FontFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->shouldDrawGlyphWithPath(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;Ljava/lang/String;)Z

    move-result p0

    const/4 v13, 0x1

    if-eqz p0, :cond_4

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return v13

    :cond_3
    move-object/from16 p0, p5

    invoke-virtual {p0, v0, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_4
    move-object/from16 p0, p5

    invoke-virtual {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getText()Landroid/text/SpannableString;

    move-result-object v4

    iget v5, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iget v6, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    iget v7, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineStart:I

    iget v8, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineEnd:I

    iget-object v0, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v10, v0, Landroid/graphics/PointF;->y:F

    iget-boolean v11, v2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->isRtl:Z

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v13

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public drawColorGlyph(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Bitmap;FFFFZ)Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p4, p5, p6, p7, p8}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->prepareCanvasForBitmap(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Canvas;

    move-result-object p4

    if-nez p4, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p9, p2}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->selectPaint(Lcom/cdv/effect/text/NvAndroidTextLayout;ZLcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Landroid/graphics/Paint;

    move-result-object p6

    if-nez p6, :cond_2

    return v1

    :cond_2
    const/4 p7, 0x1

    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p6, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getText()Landroid/text/SpannableString;

    move-result-object p1

    move-object p0, p2

    iget p2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iget p3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    move-object p5, p0

    move-object p0, p4

    iget p4, p5, Landroid/graphics/PointF;->x:F

    iget p5, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p7

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public drawDoubleSidedGlyphOutline(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;FLandroid/graphics/Bitmap;FFFFZZ)Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p6, p7, p8, p9, p10}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->prepareCanvasForBitmap(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Canvas;

    move-result-object p6

    if-nez p6, :cond_0

    return v1

    :cond_0
    move p7, p11

    move p8, p12

    invoke-virtual/range {p0 .. p8}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->doDrawDoubleSidedGlyphOutline(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;FLandroid/graphics/Canvas;ZZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public drawDoubleSidedGlyphOutlineHardware(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;FZFFFFII)Z
    .locals 15

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-virtual {p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->canUseHardwareRenderer()Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_0

    return v12

    :cond_0
    :try_start_0
    invoke-direct {p0, v10, v11}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->prepareSurface(II)Landroid/view/Surface;

    move-result-object v13

    if-nez v13, :cond_1

    return v12

    :cond_1
    invoke-virtual {v13}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v11}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->setupHardwareCanvasForGlyphPath(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;FFFFII)Landroid/graphics/Path;

    move-result-object v14

    move-object/from16 v4, p4

    if-eq v14, v4, :cond_2

    int-to-float v0, v10

    sub-float v1, p8, p7

    div-float/2addr v0, v1

    int-to-float v1, v11

    sub-float v2, p10, p9

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, p5

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    move/from16 v0, p5

    :goto_0
    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p6

    move-object v6, v5

    move-object v4, v14

    move v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->doDrawDoubleSidedGlyphOutline(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;FLandroid/graphics/Canvas;ZZ)Z

    move-object v5, v6

    invoke-virtual {v13, v5}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->waitHardwareRenderingFinished()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v12
.end method

.method public drawGlyphBody(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Bitmap;FFFFZZ)Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p5, p6, p7, p8, p9}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->prepareCanvasForBitmap(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Canvas;

    move-result-object p5

    if-nez p5, :cond_0

    return v1

    :cond_0
    move p6, p10

    move p7, p11

    invoke-virtual/range {p0 .. p7}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->doDrawGlyphBody(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;ZZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public drawGlyphBodyHardware(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;ZFFFFII)Z
    .locals 14

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual {p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->canUseHardwareRenderer()Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_0

    return v12

    :cond_0
    :try_start_0
    invoke-direct {p0, v10, v11}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->prepareSurface(II)Landroid/view/Surface;

    move-result-object v13

    if-nez v13, :cond_1

    return v12

    :cond_1
    invoke-virtual {v13}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->setupHardwareCanvasForGlyphPath(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;FFFFII)Landroid/graphics/Path;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->doDrawGlyphBody(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;ZZ)Z

    invoke-virtual {v13, v5}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->waitHardwareRenderingFinished()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v12
.end method

.method public getSurfaceHeight()I
    .locals 0

    iget p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    return p0
.end method

.method public getSurfaceWidth()I
    .locals 0

    iget p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    return p0
.end method

.method public getTransformMatrixOfSurfaceTexture([F)V
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_0
    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    :cond_1
    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hander:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_2
    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
