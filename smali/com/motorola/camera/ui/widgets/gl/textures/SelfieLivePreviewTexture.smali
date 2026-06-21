.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;
.source "SourceFile"


# instance fields
.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mProjectMatrix:[F

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public final mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mUpdateProjectMatrix:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 6

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->MINI_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    const/16 p0, 0x10

    new-array p0, p0, [F

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    filled-new-array {p1, p2}, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onDraw([F[F)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

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

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

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

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PREVIEW_ST:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onDraw([F[F)V
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

.method public final set3dTranslationX(FFFF)D
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v4, v3, p1

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    float-to-double v6, v1

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    div-double/2addr v6, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    move/from16 v1, p3

    float-to-double v12, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v10, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v12

    div-double v18, v18, v16

    add-double v18, v18, v14

    sub-double v14, v18, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v12

    div-double v20, v20, v16

    move-wide/from16 v22, v4

    add-double v3, v20, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v6

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v12

    div-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 p1, v6

    sub-double v5, v18, p1

    double-to-float v1, v10

    neg-float v7, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    double-to-float v11, v14

    double-to-float v3, v3

    double-to-float v4, v5

    div-float/2addr v2, v10

    const/16 v5, 0x14

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v7, v5, v6

    const/4 v10, 0x2

    aput v11, v5, v10

    const/4 v10, 0x3

    const/4 v14, 0x0

    aput v14, v5, v10

    const/4 v10, 0x4

    aput v14, v5, v10

    const/4 v10, 0x5

    aput v3, v5, v10

    const/4 v10, 0x6

    aput v7, v5, v10

    const/4 v7, 0x7

    aput v4, v5, v7

    const/16 v7, 0x8

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v5, v7

    const/16 v7, 0x9

    aput v14, v5, v7

    const/16 v7, 0xa

    aput v1, v5, v7

    const/16 v1, 0xb

    aput v2, v5, v1

    const/16 v1, 0xc

    aput v11, v5, v1

    const/16 v1, 0xd

    aput v14, v5, v1

    const/16 v1, 0xe

    aput v10, v5, v1

    const/16 v1, 0xf

    aput v3, v5, v1

    const/16 v1, 0x10

    aput v2, v5, v1

    const/16 v1, 0x11

    aput v4, v5, v1

    const/16 v1, 0x12

    aput v10, v5, v1

    const/16 v1, 0x13

    aput v10, v5, v1

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    mul-double v6, p1, v16

    div-double v0, v12, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v12

    div-double v0, v0, v16

    add-double/2addr v0, v2

    sub-double v0, v0, p1

    double-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public final set3dTranslationY(FFFF)D
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x4

    int-to-float v4, v3

    mul-float v4, v4, p1

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    neg-double v4, v4

    float-to-double v6, v1

    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    div-double/2addr v6, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    move/from16 v1, p4

    float-to-double v12, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v10, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v12

    div-double v18, v18, v16

    add-double v18, v18, v14

    sub-double v14, v18, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v12

    div-double v20, v20, v16

    move v1, v3

    move-wide/from16 v22, v4

    add-double v3, v20, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v6

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v12

    div-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 p1, v6

    sub-double v5, v18, p1

    neg-float v7, v2

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v7, v18

    double-to-float v10, v10

    double-to-float v11, v14

    double-to-float v3, v3

    double-to-float v4, v5

    div-float v2, v2, v18

    const/16 v5, 0x14

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v10, v5, v6

    const/4 v14, 0x2

    aput v11, v5, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v5, v14

    aput v15, v5, v1

    const/4 v1, 0x5

    aput v7, v5, v1

    const/4 v1, 0x6

    aput v3, v5, v1

    const/4 v1, 0x7

    aput v4, v5, v1

    const/16 v1, 0x8

    aput v15, v5, v1

    const/16 v1, 0x9

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v1

    const/16 v1, 0xa

    aput v2, v5, v1

    const/16 v1, 0xb

    aput v10, v5, v1

    const/16 v1, 0xc

    aput v11, v5, v1

    const/16 v1, 0xd

    aput v7, v5, v1

    const/16 v1, 0xe

    aput v15, v5, v1

    const/16 v1, 0xf

    aput v2, v5, v1

    const/16 v1, 0x10

    aput v3, v5, v1

    const/16 v1, 0x11

    aput v4, v5, v1

    const/16 v1, 0x12

    aput v7, v5, v1

    const/16 v1, 0x13

    aput v7, v5, v1

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    mul-double v6, p1, v16

    div-double v0, v12, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v12

    div-double v0, v0, v16

    add-double/2addr v0, v2

    sub-double v0, v0, p1

    double-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public final setPostScreenTranslation(FF)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p2, 0x1

    aput-object v0, p1, p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    return-void
.end method
