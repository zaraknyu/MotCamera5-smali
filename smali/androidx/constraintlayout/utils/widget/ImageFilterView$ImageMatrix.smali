.class public final Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBrightness:F

.field public final mColorMatrix:Landroid/graphics/ColorMatrix;

.field public mContrast:F

.field public final mMatrix:[F

.field public mSaturation:F

.field public final mTmpColorMatrix:Landroid/graphics/ColorMatrix;

.field public mWarmth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mMatrix:[F

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    return-void
.end method


# virtual methods
.method public final updateMatrix(Landroid/widget/ImageView;)V
    .locals 36

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    iget v2, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    const/16 v7, 0x11

    const/16 v8, 0x10

    const/16 v9, 0xf

    const/16 v10, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x13

    const/4 v5, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x2

    const/16 v24, 0x12

    iget-object v6, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mMatrix:[F

    const/16 v25, 0x1

    const/16 v26, 0x0

    if-eqz v4, :cond_0

    sub-float v4, v3, v2

    const v27, 0x3e998c7e    # 0.2999f

    mul-float v27, v27, v4

    const v28, 0x3f1645a2    # 0.587f

    mul-float v28, v28, v4

    const v29, 0x3de978d5    # 0.114f

    mul-float v4, v4, v29

    add-float v29, v27, v2

    aput v29, v6, v26

    aput v28, v6, v25

    aput v4, v6, v23

    aput v5, v6, v22

    aput v5, v6, v20

    aput v27, v6, v19

    add-float v29, v28, v2

    aput v29, v6, v18

    aput v4, v6, v17

    aput v5, v6, v16

    aput v5, v6, v15

    aput v27, v6, v14

    aput v28, v6, v13

    add-float/2addr v4, v2

    aput v4, v6, v12

    aput v5, v6, v11

    aput v5, v6, v10

    aput v5, v6, v9

    aput v5, v6, v8

    aput v5, v6, v7

    aput v3, v6, v24

    aput v5, v6, v21

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    move/from16 v2, v25

    goto :goto_0

    :cond_0
    move/from16 v2, v26

    :goto_0
    iget v4, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    cmpl-float v27, v4, v3

    move/from16 v28, v7

    iget-object v7, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    if-eqz v27, :cond_1

    invoke-virtual {v7, v4, v4, v4, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    move/from16 v2, v25

    :cond_1
    iget v4, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    cmpl-float v27, v4, v3

    if-eqz v27, :cond_6

    cmpg-float v2, v4, v5

    if-gtz v2, :cond_2

    const v4, 0x3c23d70a    # 0.01f

    :cond_2
    const v2, 0x459c4000    # 5000.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x42840000    # 66.0f

    cmpl-float v27, v2, v4

    const v29, 0x43211e9c

    const v30, 0x42c6f10d

    move/from16 v31, v3

    const/high16 v3, 0x437f0000    # 255.0f

    if-lez v27, :cond_3

    const/high16 v27, 0x42700000    # 60.0f

    move/from16 v32, v4

    sub-float v4, v2, v27

    move/from16 v27, v8

    move/from16 v33, v9

    float-to-double v8, v4

    move v4, v10

    move/from16 v34, v11

    const-wide v10, -0x403ef32580000000L    # -0.13320475816726685

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    const v11, 0x43a4d970

    mul-float/2addr v10, v11

    move v11, v12

    move/from16 v35, v13

    const-wide v12, 0x3fb354f100000000L    # 0.07551485300064087

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const v9, 0x43900fa3

    mul-float/2addr v8, v9

    goto :goto_1

    :cond_3
    move/from16 v32, v4

    move/from16 v27, v8

    move/from16 v33, v9

    move v4, v10

    move/from16 v34, v11

    move v11, v12

    move/from16 v35, v13

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v30

    sub-float v8, v8, v29

    move v10, v3

    :goto_1
    cmpg-float v9, v2, v32

    const v13, 0x430a848a

    if-gez v9, :cond_5

    const/high16 v9, 0x41980000    # 19.0f

    cmpl-float v9, v2, v9

    if-lez v9, :cond_4

    const/high16 v9, 0x41200000    # 10.0f

    sub-float/2addr v2, v9

    move v9, v11

    const v32, 0x439885bc

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    double-to-float v2, v11

    mul-float/2addr v2, v13

    sub-float v2, v2, v32

    goto :goto_2

    :cond_4
    move v9, v11

    const v32, 0x439885bc

    move v2, v5

    goto :goto_2

    :cond_5
    move v9, v11

    const v32, 0x439885bc

    move v2, v3

    :goto_2
    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v11, 0x42480000    # 50.0f

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v11, v11, v30

    sub-float v11, v11, v29

    const/high16 v12, 0x42200000    # 40.0f

    move/from16 v29, v9

    move/from16 v30, v10

    float-to-double v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v13

    sub-float v9, v9, v32

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v10, v30, v10

    div-float/2addr v8, v11

    div-float/2addr v2, v3

    aput v10, v6, v26

    aput v5, v6, v25

    aput v5, v6, v23

    aput v5, v6, v22

    aput v5, v6, v20

    aput v5, v6, v19

    aput v8, v6, v18

    aput v5, v6, v17

    aput v5, v6, v16

    aput v5, v6, v15

    aput v5, v6, v14

    aput v5, v6, v35

    aput v2, v6, v29

    aput v5, v6, v34

    aput v5, v6, v4

    aput v5, v6, v33

    aput v5, v6, v27

    aput v5, v6, v28

    aput v31, v6, v24

    aput v5, v6, v21

    invoke-virtual {v7, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    move/from16 v2, v25

    goto :goto_3

    :cond_6
    move/from16 v31, v3

    move/from16 v27, v8

    move/from16 v33, v9

    move v4, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move/from16 v35, v13

    :goto_3
    iget v0, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    cmpl-float v3, v0, v31

    if-eqz v3, :cond_7

    aput v0, v6, v26

    aput v5, v6, v25

    aput v5, v6, v23

    aput v5, v6, v22

    aput v5, v6, v20

    aput v5, v6, v19

    aput v0, v6, v18

    aput v5, v6, v17

    aput v5, v6, v16

    aput v5, v6, v15

    aput v5, v6, v14

    aput v5, v6, v35

    aput v0, v6, v29

    aput v5, v6, v34

    aput v5, v6, v4

    aput v5, v6, v33

    aput v5, v6, v27

    aput v5, v6, v28

    aput v31, v6, v24

    aput v5, v6, v21

    invoke-virtual {v7, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_4

    :cond_7
    move/from16 v25, v2

    :goto_4
    if-eqz v25, :cond_8

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_8
    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method
