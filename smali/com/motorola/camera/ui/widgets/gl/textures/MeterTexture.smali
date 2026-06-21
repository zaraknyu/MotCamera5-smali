.class public final Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# static fields
.field public static final METER_BOTTOM_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public static final METER_TOP_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# instance fields
.field public mActiveMeterSegment:I

.field public final mDensity:F

.field public mDirty:Z

.field public final mDotTextures:Ljava/util/ArrayList;

.field public mDotVisible:Z

.field public mEGLSurfaceValid:Z

.field public mInitialized:Z

.field public final mLineTextures:Ljava/util/ArrayList;

.field public mMeterSegmentRanges:[Landroid/util/Range;

.field public final mOffScreenProj:[F

.field public final mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public final mRtl:Z

.field public mStaggeredMeter:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_TOP_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_BOTTOM_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mRtl:Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    return-void
.end method


# virtual methods
.method public final doLayout$2()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mEGLSurfaceValid:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v5, v4

    if-ge v2, v5, :cond_2

    array-length v5, v4

    if-lt v2, v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v5, v4

    :goto_1
    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/high16 v2, 0x40c00000    # 6.0f

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    mul-float/2addr v2, v4

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v5, :cond_3

    mul-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v5, 0x42300000    # 44.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v11, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    mul-float v12, v4, v7

    add-float/2addr v12, v5

    iget v5, v11, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    invoke-direct {v3, v12, v6, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_2

    :cond_3
    mul-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v5, 0x41d80000    # 27.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v11, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    mul-float v12, v4, v8

    add-float/2addr v12, v5

    iget v5, v11, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    invoke-direct {v3, v12, v6, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_2
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mRtl:Z

    if-eqz v5, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    iget v12, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v12, v6

    iput v12, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v6, v8

    iput v6, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    mul-float/2addr v6, v8

    iput v6, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    :cond_4
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v11, Landroid/graphics/Point;->x:I

    iget v13, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v6, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_3

    :cond_5
    iget v13, v6, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    div-float/2addr v13, v10

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    invoke-static {v14, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    neg-float v14, v13

    neg-float v15, v6

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x41a00000    # 20.0f

    move/from16 v16, v14

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    move/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v19, v6

    move/from16 v17, v13

    invoke-static/range {v14 .. v21}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :goto_3
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v14, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move v15, v1

    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    move/from16 v17, v7

    array-length v7, v1

    move/from16 v18, v10

    const/4 v10, 0x4

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-ge v15, v7, :cond_b

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    if-ne v15, v1, :cond_6

    const/high16 v1, 0x41a00000    # 20.0f

    goto :goto_5

    :cond_6
    const/high16 v1, 0x41000000    # 8.0f

    goto :goto_5

    :cond_7
    const/high16 v1, 0x42000000    # 32.0f

    :goto_5
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v14, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    move/from16 v20, v8

    iget v8, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v21, v1, v18

    mul-float v21, v21, v4

    add-float v8, v21, v8

    invoke-direct {v7, v14, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v8, 0x0

    :goto_6
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v9, v14

    if-lt v15, v9, :cond_8

    const/4 v14, 0x0

    goto :goto_7

    :cond_8
    aget-object v9, v14, v15

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v14, v9

    :goto_7
    if-ge v8, v14, :cond_a

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    sget-object v14, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v9, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    mul-float v14, v4, v20

    invoke-virtual {v9, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    sget-object v14, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_TOP_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move/from16 v22, v1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_BOTTOM_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v9, v14, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    mul-float v1, v22, v4

    div-float v1, v1, v18

    move/from16 v14, v20

    invoke-virtual {v9, v14, v1, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v7, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v7, v2, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v22

    const/4 v9, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    add-int/lit8 v15, v15, 0x1

    move-object v14, v7

    move/from16 v7, v17

    move/from16 v10, v18

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_b
    iget-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    if-eqz v6, :cond_d

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v4

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v7, v11, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    div-float v7, v7, v18

    mul-float v4, v4, v17

    sub-float/2addr v7, v4

    array-length v4, v1

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v4, :cond_d

    aget-object v9, v1, v8

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-direct {v11, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    div-float v14, v6, v18

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v11, v14, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    if-eqz v5, :cond_c

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float v9, v3, v9

    const/4 v15, 0x0

    invoke-direct {v14, v9, v7, v15}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_a

    :cond_c
    const/4 v15, 0x0

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v9, v3

    invoke-direct {v14, v9, v7, v15}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_a
    invoke-virtual {v11, v10, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    :cond_e
    :goto_b
    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

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

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mEGLSurfaceValid:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout$2()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->onDrawFboContents$2([F[F)V
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

.method public final onDrawFboContents$2([F[F)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const v0, 0x8d40

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v2

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/16 v0, 0x4100

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

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

.method public final unloadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    return-void
.end method
