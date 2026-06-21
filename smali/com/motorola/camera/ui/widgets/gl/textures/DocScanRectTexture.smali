.class public final Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "SourceFile"


# instance fields
.field public final mBackColor:I

.field public final mDensity:F

.field public mFixedBitmap:Landroid/graphics/Bitmap;

.field public mHeight:I

.field public mIsChangedOffset:Z

.field public final mLineWidth:I

.field public mOffset:F

.field public final mPoints:Ljava/util/ArrayList;

.field public mState:I

.field public mWidth:I

.field public mXGap:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mXGap:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mIsChangedOffset:Z

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mDensity:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mLineWidth:I

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f06003f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mBackColor:I

    const/high16 p1, 0x42400000    # 48.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mOffset:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isFoldFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isSplitScreen()Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 v0, 0x42ec0000    # 118.0f

    :cond_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mXGap:F

    return-void
.end method


# virtual methods
.method public final onPreDraw([F[F)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateTexture(III)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    if-ne v7, v1, :cond_1

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    if-eq v7, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    goto :goto_1

    :cond_1
    :goto_0
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    move v1, v5

    :goto_1
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mBackColor:I

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v3, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v7, v3, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f0600ae

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v7, v3, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mState:I

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_3
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mState:I

    if-eq v4, v2, :cond_4

    if-eq v3, v2, :cond_6

    :cond_4
    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mIsChangedOffset:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    iput-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mIsChangedOffset:Z

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v6, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f0604a2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mDensity:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v3

    div-float/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v4

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mOffset:F

    mul-float/2addr v8, v3

    div-float v13, v8, v1

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mXGap:F

    mul-float/2addr v8, v3

    div-float v14, v8, v1

    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v3, v8

    div-float/2addr v3, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    add-float v8, v13, v4

    add-float v10, v8, v3

    sub-float v9, v13, v14

    move v11, v9

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v15, v8

    move/from16 v16, v10

    sub-float v8, v15, v14

    sub-float v11, v16, v14

    move v10, v13

    move/from16 v21, v9

    move v9, v8

    move v8, v13

    move/from16 v13, v21

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v17, v9

    move/from16 v18, v11

    add-float v9, v8, v5

    sub-float v10, v9, v14

    invoke-virtual {v1, v8, v13, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    move v11, v10

    const/high16 v10, 0x42b40000    # 90.0f

    move/from16 v19, v11

    const/4 v11, 0x0

    move/from16 v20, v9

    const/high16 v9, 0x43340000    # 180.0f

    move v2, v8

    move-object v8, v1

    move v1, v2

    move/from16 v2, v19

    move/from16 v6, v20

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    int-to-float v9, v9

    sub-float v20, v9, v1

    move-object v9, v8

    sub-float v8, v20, v4

    sub-float v10, v8, v3

    move v11, v13

    move-object v13, v9

    move/from16 v9, v21

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v10, v20

    move/from16 p2, v1

    move v1, v9

    move/from16 v9, v17

    move/from16 v11, v18

    move/from16 v8, v20

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v9, v8, v5

    invoke-virtual {v13, v9, v1, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    const/high16 v9, 0x43870000    # 270.0f

    move-object v8, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    int-to-float v1, v1

    sub-float v1, v1, p2

    sub-float v8, v1, v4

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    int-to-float v2, v2

    sub-float v2, v2, p2

    sub-float v17, v2, v4

    add-float v9, v2, v14

    sub-float v10, v8, v3

    move v11, v9

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v8, v17, v14

    sub-float v17, v17, v3

    add-float v11, v17, v14

    move v10, v1

    move/from16 v21, v8

    move v8, v1

    move v1, v9

    move/from16 v9, v21

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v9, v8, v5

    sub-float/2addr v2, v5

    add-float/2addr v2, v14

    invoke-virtual {v13, v9, v2, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v8, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    int-to-float v1, v1

    sub-float v1, v1, p2

    sub-float v2, v1, v4

    add-float v9, v1, v14

    move v11, v9

    move v8, v15

    move/from16 v10, v16

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v4, v9

    add-float v9, v2, v14

    sub-float/2addr v2, v3

    add-float v11, v2, v14

    move/from16 v10, p2

    move/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float/2addr v1, v5

    add-float/2addr v1, v14

    invoke-virtual {v13, v8, v1, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    move-object v8, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v1, 0x3

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mState:I

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
