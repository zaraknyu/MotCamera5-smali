.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;
.source "SourceFile"


# instance fields
.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mProjectMatrix:[F

.field public final mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mUpdateProjectMatrix:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    filled-new-array {p1, v0}, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onDraw([F[F)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v2, 0x0

    aget-object p2, p2, v2

    iget v3, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, v3

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v4, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v3, v4

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, p2

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, p2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v6, v1

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v5, v1

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v1, p2

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-float v8, v1, v3

    int-to-float p2, p2

    div-float/2addr p2, v7

    sub-float v9, p2, v3

    const p2, 0x419feb85    # 19.99f

    add-float v10, v0, p2

    const/high16 v11, 0x42c80000    # 100.0f

    move v7, v5

    const/4 v5, 0x0

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final set3dTranslationX(FFFF)V
    .locals 19

    move/from16 v0, p2

    move/from16 v1, p4

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v3, v2, p1

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    float-to-double v5, v0

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    move/from16 v0, p3

    float-to-double v9, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    sub-double/2addr v7, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v9

    div-double/2addr v15, v13

    add-double/2addr v15, v11

    sub-double v11, v15, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    div-double v17, v17, v13

    move-wide/from16 p1, v13

    add-double v13, v17, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v9

    div-double v2, v2, p1

    sub-double/2addr v15, v2

    sub-double v2, v15, v5

    double-to-float v0, v7

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    const/4 v5, 0x0

    aput v0, v4, v5

    neg-float v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v7, 0x1

    aput v5, v4, v7

    double-to-float v7, v11

    const/4 v8, 0x2

    aput v7, v4, v8

    double-to-float v8, v13

    const/4 v9, 0x3

    aput v8, v4, v9

    const/4 v9, 0x4

    aput v5, v4, v9

    double-to-float v2, v2

    const/4 v3, 0x5

    aput v2, v4, v3

    const/4 v3, 0x6

    aput v8, v4, v3

    div-float/2addr v1, v6

    const/4 v3, 0x7

    aput v1, v4, v3

    const/16 v3, 0x8

    aput v2, v4, v3

    const/16 v2, 0x9

    aput v0, v4, v2

    const/16 v0, 0xa

    aput v1, v4, v0

    const/16 v0, 0xb

    aput v7, v4, v0

    return-void
.end method

.method public final set3dTranslationY(FFFF)V
    .locals 19

    move/from16 v0, p2

    move/from16 v1, p3

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v3, v2, p1

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    neg-double v3, v3

    float-to-double v5, v0

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    move/from16 v0, p4

    float-to-double v9, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    sub-double/2addr v7, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v9

    div-double/2addr v15, v13

    add-double/2addr v15, v11

    sub-double v11, v15, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    div-double v17, v17, v13

    move-wide/from16 p1, v13

    add-double v13, v17, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v9

    div-double v2, v2, p1

    sub-double/2addr v15, v2

    sub-double v2, v15, v5

    neg-float v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/RectangleTexture;->mVertices:[F

    const/4 v6, 0x0

    aput v0, v5, v6

    double-to-float v6, v7

    const/4 v7, 0x1

    aput v6, v5, v7

    double-to-float v7, v11

    const/4 v8, 0x2

    aput v7, v5, v8

    const/4 v8, 0x3

    aput v0, v5, v8

    double-to-float v0, v13

    const/4 v8, 0x4

    aput v0, v5, v8

    double-to-float v2, v2

    const/4 v3, 0x5

    aput v2, v5, v3

    div-float/2addr v1, v4

    const/4 v3, 0x6

    aput v1, v5, v3

    const/4 v3, 0x7

    aput v0, v5, v3

    const/16 v0, 0x8

    aput v2, v5, v0

    const/16 v0, 0x9

    aput v1, v5, v0

    const/16 v0, 0xa

    aput v6, v5, v0

    const/16 v0, 0xb

    aput v7, v5, v0

    return-void
.end method

.method public final setPostScreenTranslation(FF)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p2, 0x1

    aput-object v0, p1, p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    return-void
.end method
