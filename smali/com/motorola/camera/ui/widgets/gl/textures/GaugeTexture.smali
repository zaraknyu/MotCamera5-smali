.class public final Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mDensity:F

.field public mDirty:Z

.field public mEGLSurfaceValid:Z

.field public mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

.field public mInitialized:Z

.field public final mLineTextures:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mOffScreenProj:[F

.field public final mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public final mRtl:Z

.field public mSize:I

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mZoomSegmentValueList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mLineTextures:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mDensity:F

    const/16 p2, 0x10

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenProj:[F

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p2}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mRtl:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mSize:I

    return-void
.end method


# virtual methods
.method public final doLayout()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mEGLSurfaceValid:Z

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mZoomSegmentValueList:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mSize:I

    int-to-float v1, v1

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mDensity:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Point;->equals(II)Z

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    iget v7, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float v12, v7, v8

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float v14, v1, v8

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenProj:[F

    invoke-static {v1, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenProj:[F

    neg-float v11, v12

    neg-float v13, v14

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x41a00000    # 20.0f

    const/4 v10, 0x0

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->unloadLineTextures()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-static {v5, v7}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v1, v7}, Lcom/motorola/camera/utility/ZoomHelper;->getArcBarTotalDegree(II)F

    move-result v9

    int-to-float v10, v7

    invoke-static {v10}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v11

    int-to-float v12, v1

    invoke-static {v12}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v13

    sub-float/2addr v11, v13

    div-float/2addr v9, v11

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mSize:I

    int-to-float v11, v11

    div-float/2addr v11, v8

    const/high16 v13, 0x41400000    # 12.0f

    sub-float/2addr v11, v13

    const/high16 v14, 0x41000000    # 8.0f

    sub-float v14, v11, v14

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mDensity:F

    mul-float/2addr v14, v15

    const/high16 v16, 0x41800000    # 16.0f

    sub-float v11, v11, v16

    const/high16 v17, 0x42000000    # 32.0f

    sub-float v11, v11, v17

    mul-float/2addr v11, v15

    iget-boolean v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mRtl:Z

    move/from16 v17, v8

    if-eqz v15, :cond_2

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 v15, -0x40800000    # -1.0f

    :goto_1
    move/from16 v19, v5

    move v5, v6

    move/from16 v18, v13

    move v13, v1

    :goto_2
    const/16 v6, 0x3e8

    if-gt v13, v7, :cond_e

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    rem-int/lit16 v8, v13, 0x1f4

    if-eqz v8, :cond_4

    if-ge v13, v6, :cond_3

    rem-int/lit8 v8, v13, 0x64

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v8, v19

    :goto_4
    int-to-float v6, v13

    invoke-static {v6}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v6

    invoke-static {v12}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v21

    sub-float v6, v6, v21

    mul-float/2addr v6, v9

    mul-float/2addr v6, v15

    move/from16 v21, v2

    neg-float v2, v6

    move/from16 v23, v8

    move/from16 v22, v9

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    move-wide/from16 v26, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v2, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    if-nez v23, :cond_6

    const/16 v9, 0x3e8

    if-ge v13, v9, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v25, v2

    move/from16 v23, v8

    move/from16 v26, v10

    move/from16 v27, v11

    const/4 v9, 0x0

    goto :goto_7

    :cond_6
    :goto_5
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;

    move/from16 v25, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz v23, :cond_7

    const/16 v23, -0x1

    move/from16 v26, v23

    move/from16 v23, v8

    move/from16 v8, v26

    move/from16 v26, v10

    goto :goto_6

    :cond_7
    move/from16 v23, v8

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    move/from16 v26, v10

    const v10, 0x7f0604a5

    invoke-virtual {v8, v10}, Landroid/content/Context;->getColor(I)I

    move-result v8

    :goto_6
    invoke-direct {v9, v6, v8, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;-><init>(FILcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->loadTexture()V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    mul-float v8, v14, v25

    mul-float v10, v14, v23

    move/from16 v27, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v8, 0x4

    invoke-virtual {v9, v8, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_7
    if-eqz v21, :cond_9

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x64

    if-ge v7, v2, :cond_8

    move/from16 v2, v19

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    new-instance v28, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mZoomSegmentValueList:Ljava/util/ArrayList;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x0

    invoke-static {v5, v10, v2}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomValueX(IZZ)Ljava/lang/String;

    move-result-object v30

    const/16 v32, -0x1

    const/16 v33, 0x0

    const/high16 v31, 0x41500000    # 13.0f

    move-object/from16 v29, v8

    invoke-direct/range {v28 .. v33}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    move-object/from16 v2, v28

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    mul-float v8, v27, v25

    mul-float v10, v27, v23

    move/from16 v21, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v8, 0x4

    invoke-virtual {v2, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/4 v10, 0x0

    invoke-direct {v5, v6, v10, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    invoke-virtual {v2, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    move/from16 v5, v21

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mLineTextures:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;

    invoke-direct {v8, v9, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;)V

    invoke-virtual {v6, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-eq v13, v7, :cond_a

    add-int/lit8 v2, v13, 0xa

    if-le v2, v7, :cond_a

    goto :goto_a

    :cond_a
    if-eq v13, v7, :cond_b

    const/16 v9, 0x3e8

    if-lt v13, v9, :cond_b

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_b

    add-int/lit16 v13, v13, 0x1f4

    if-le v13, v7, :cond_d

    :goto_a
    move v13, v7

    goto :goto_c

    :cond_b
    if-ne v13, v1, :cond_c

    rem-int/lit8 v2, v13, 0xa

    if-eqz v2, :cond_c

    div-int/lit8 v13, v13, 0xa

    mul-int/lit8 v13, v13, 0xa

    :goto_b
    add-int/lit8 v13, v13, 0xa

    goto :goto_c

    :cond_c
    goto :goto_b

    :cond_d
    :goto_c
    move/from16 v9, v22

    move/from16 v10, v26

    move/from16 v11, v27

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_e
    move/from16 v22, v9

    move/from16 v26, v10

    move v9, v6

    if-le v7, v9, :cond_11

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    if-nez v1, :cond_f

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v6, 0x7f0604a2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-direct {v1, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->loadTexture()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v2, v10, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v8, 0x4

    invoke-virtual {v1, v8, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    const v2, 0x3e23d70a    # 0.16f

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_f
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mSize:I

    int-to-float v2, v2

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mDensity:F

    mul-float/2addr v2, v5

    div-float v2, v2, v17

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v1

    invoke-static {v12}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v1, v1, v22

    invoke-static/range {v26 .. v26}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v2

    invoke-static {v12}, Lcom/motorola/camera/utility/ZoomHelper;->getDegree(F)F

    move-result v5

    sub-float/2addr v2, v5

    mul-float v2, v2, v22

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    iget-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mRtl:Z

    if-eqz v6, :cond_10

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/16 v20, 0x0

    aput v2, v6, v20

    aput v1, v6, v19

    goto :goto_d

    :cond_10
    const/4 v6, 0x2

    const/16 v20, 0x0

    new-array v6, v6, [F

    aput v1, v6, v20

    aput v2, v6, v19

    :goto_d
    monitor-enter v5

    :try_start_0
    iput-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mAngles:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mSize:I

    int-to-float v1, v1

    div-float v1, v1, v17

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    sub-float v5, v1, v18

    sub-float v6, v5, v16

    div-float/2addr v6, v1

    div-float/2addr v5, v1

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->mSize:[F

    const/16 v20, 0x0

    aput v6, v1, v20

    aput v5, v1, v19

    move/from16 v1, v19

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_e

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    if-eqz v1, :cond_12

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_12
    :goto_e
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_13

    const-string v1, "GaugeTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "doLayout dur:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mInitialized:Z

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mDirty:Z

    :cond_14
    :goto_f
    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mEGLSurfaceValid:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->doLayout()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mDirty:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenProj:[F

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->onDrawFboContents([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

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

    throw p1
.end method

.method public final onDrawFboContents([F[F)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mDirty:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const v0, 0x8d40

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v2

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/16 v0, 0x4100

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mLineTextures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;->mLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_3
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;->mValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mDirty:Z

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setPreRotation(FF)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mLineTextures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;->mValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mDirty:Z

    return-void
.end method

.method public final unloadLineTextures()V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mLineTextures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;->mLineTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothLineTexture;->unloadTexture()V

    :cond_1
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture$LineTextureWrapper;->mValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->unloadLineTextures()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;->unloadTexture()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->mHighScaleBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RingTexture;

    :cond_0
    return-void
.end method
