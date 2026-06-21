.class public final Landroidx/compose/ui/graphics/colorspace/Rgb;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "SourceFile"


# static fields
.field public static final DoubleIdentity:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;


# instance fields
.field public final eotf:Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

.field public final eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

.field public final eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

.field public final inverseTransform:[F

.field public final isSrgb:Z

.field public final max:F

.field public final min:F

.field public final oetf:Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

.field public final oetfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

.field public final oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

.field public final primaries:[F

.field public final transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

.field public final transform:[F

.field public final whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->DoubleIdentity:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V
    .locals 17

    move-wide/from16 v1, p4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v1, v3

    .line 87
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Rgb;->DoubleIdentity:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    if-nez v0, :cond_0

    move-object v11, v3

    goto :goto_0

    .line 88
    :cond_0
    new-instance v4, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;-><init>(ID)V

    move-object v11, v4

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    move-object v12, v3

    goto :goto_2

    .line 89
    :cond_1
    new-instance v3, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {v3, v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;-><init>(ID)V

    goto :goto_1

    .line 90
    :goto_2
    new-instance v15, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDD)V

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v16, p8

    .line 91
    invoke-direct/range {v6 .. v16}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V
    .locals 15

    move-object/from16 v9, p4

    .line 1
    iget-wide v0, v9, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->gamma:D

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    cmpg-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2
    :goto_0
    iget-wide v5, v9, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->f:D

    iget-wide v7, v9, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->e:D

    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_1

    .line 3
    new-instance v4, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;

    const/4 v14, 0x4

    invoke-direct {v4, v9, v14}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    goto :goto_1

    :cond_1
    cmpg-double v4, v0, v10

    if-nez v4, :cond_2

    .line 4
    new-instance v4, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;

    const/4 v14, 0x5

    invoke-direct {v4, v9, v14}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    goto :goto_1

    :cond_2
    cmpg-double v4, v7, v12

    if-nez v4, :cond_3

    cmpg-double v4, v5, v12

    if-nez v4, :cond_3

    .line 5
    new-instance v4, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;

    const/4 v14, 0x6

    invoke-direct {v4, v9, v14}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    goto :goto_1

    .line 6
    :cond_3
    new-instance v4, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;

    const/4 v14, 0x7

    invoke-direct {v4, v9, v14}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    :goto_1
    cmpg-double v2, v0, v2

    if-nez v2, :cond_4

    .line 7
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_4
    cmpg-double v0, v0, v10

    if-nez v0, :cond_5

    .line 8
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v9, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    goto :goto_2

    :cond_5
    cmpg-double v0, v7, v12

    if-nez v0, :cond_6

    cmpg-double v0, v5, v12

    if-nez v0, :cond_6

    .line 9
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v9, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    goto :goto_2

    .line 10
    :cond_6
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v9, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    goto :goto_2

    :goto_3
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v5, v4

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v10, p5

    .line 11
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    .line 12
    sget-wide v9, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Rgb:J

    move-object/from16 v11, p1

    invoke-direct {v0, v9, v10, v8, v11}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(JILjava/lang/String;)V

    .line 13
    iput-object v2, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 14
    iput v6, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    .line 15
    iput v7, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    move-object/from16 v9, p9

    .line 16
    iput-object v9, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 17
    iput-object v4, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    .line 18
    new-instance v9, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v10}, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    iput-object v9, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

    .line 19
    new-instance v9, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    const/4 v11, 0x0

    invoke-direct {v9, v0, v11}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    iput-object v9, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    .line 20
    iput-object v5, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    .line 21
    new-instance v9, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

    invoke-direct {v9, v0, v11}, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    iput-object v9, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

    .line 22
    new-instance v9, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0, v10}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    iput-object v9, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    .line 23
    array-length v9, v1

    const/16 v12, 0x9

    const/4 v13, 0x6

    if-eq v9, v13, :cond_1

    array-length v9, v1

    if-ne v9, v12, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string v1, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    cmpl-float v9, v6, v7

    if-gez v9, :cond_10

    .line 27
    new-array v9, v13, [F

    .line 28
    array-length v14, v1

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x2

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x5

    if-ne v14, v12, :cond_2

    .line 29
    aget v14, v1, v11

    aget v21, v1, v10

    add-float v22, v14, v21

    aget v23, v1, v17

    add-float v22, v22, v23

    div-float v14, v14, v22

    .line 30
    aput v14, v9, v11

    div-float v21, v21, v22

    .line 31
    aput v21, v9, v10

    .line 32
    aget v14, v1, v18

    aget v21, v1, v19

    add-float v22, v14, v21

    aget v23, v1, v20

    add-float v22, v22, v23

    div-float v14, v14, v22

    .line 33
    aput v14, v9, v17

    div-float v21, v21, v22

    .line 34
    aput v21, v9, v18

    .line 35
    aget v14, v1, v13

    aget v21, v1, v16

    add-float v22, v14, v21

    aget v1, v1, v15

    add-float v22, v22, v1

    div-float v14, v14, v22

    .line 36
    aput v14, v9, v19

    div-float v21, v21, v22

    .line 37
    aput v21, v9, v20

    goto :goto_1

    .line 38
    :cond_2
    invoke-static {v1, v11, v9, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    :goto_1
    iput-object v9, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    if-nez v3, :cond_3

    .line 40
    aget v3, v9, v11

    .line 41
    aget v14, v9, v10

    .line 42
    aget v21, v9, v17

    .line 43
    aget v22, v9, v18

    .line 44
    aget v23, v9, v19

    .line 45
    aget v24, v9, v20

    const/high16 p1, 0x3f800000    # 1.0f

    .line 46
    iget v1, v2, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->x:F

    move/from16 p9, v11

    .line 47
    iget v11, v2, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->y:F

    move/from16 v25, v15

    int-to-float v15, v10

    sub-float v26, v15, v3

    div-float v26, v26, v14

    sub-float v27, v15, v21

    div-float v27, v27, v22

    sub-float v28, v15, v23

    div-float v28, v28, v24

    sub-float/2addr v15, v1

    div-float/2addr v15, v11

    div-float v29, v3, v14

    div-float v30, v21, v22

    div-float v31, v23, v24

    div-float/2addr v1, v11

    sub-float v15, v15, v26

    sub-float v30, v30, v29

    mul-float v15, v15, v30

    sub-float v1, v1, v29

    sub-float v27, v27, v26

    mul-float v11, v1, v27

    sub-float/2addr v15, v11

    sub-float v28, v28, v26

    mul-float v28, v28, v30

    sub-float v31, v31, v29

    mul-float v27, v27, v31

    sub-float v28, v28, v27

    div-float v15, v15, v28

    mul-float v31, v31, v15

    sub-float v1, v1, v31

    div-float v1, v1, v30

    sub-float v11, p1, v1

    sub-float/2addr v11, v15

    div-float v26, v11, v14

    div-float v27, v1, v22

    div-float v28, v15, v24

    mul-float v29, v26, v3

    sub-float v3, p1, v3

    sub-float/2addr v3, v14

    mul-float v3, v3, v26

    mul-float v14, v27, v21

    sub-float v21, p1, v21

    sub-float v21, v21, v22

    mul-float v21, v21, v27

    mul-float v22, v28, v23

    sub-float v23, p1, v23

    sub-float v23, v23, v24

    mul-float v23, v23, v28

    .line 48
    new-array v12, v12, [F

    aput v29, v12, p9

    aput v11, v12, v10

    aput v3, v12, v17

    aput v14, v12, v18

    aput v1, v12, v19

    aput v21, v12, v20

    aput v22, v12, v13

    aput v15, v12, v16

    aput v23, v12, v25

    .line 49
    iput-object v12, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    goto :goto_2

    :cond_3
    move/from16 p9, v11

    const/high16 p1, 0x3f800000    # 1.0f

    .line 50
    array-length v1, v3

    if-ne v1, v12, :cond_f

    .line 51
    iput-object v3, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    .line 52
    :goto_2
    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    invoke-static {v1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->inverse3x3([F)[F

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    .line 53
    invoke-static {v9}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->area([F)F

    move-result v1

    .line 54
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    .line 55
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Ntsc1953Primaries:[F

    .line 56
    invoke-static {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->area([F)F

    move-result v3

    div-float/2addr v1, v3

    const v3, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    .line 57
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    .line 58
    aget v11, v9, p9

    aget v12, v1, p9

    sub-float/2addr v11, v12

    .line 59
    aget v14, v9, v10

    aget v15, v1, v10

    sub-float/2addr v14, v15

    .line 60
    aget v16, v9, v17

    aget v21, v1, v17

    sub-float v16, v16, v21

    .line 61
    aget v22, v9, v18

    aget v23, v1, v18

    sub-float v22, v22, v23

    .line 62
    aget v24, v9, v19

    aget v25, v1, v19

    sub-float v24, v24, v25

    .line 63
    aget v26, v9, v20

    aget v1, v1, v20

    sub-float v26, v26, v1

    const/16 p2, 0x0

    new-array v3, v13, [F

    aput v11, v3, p9

    aput v14, v3, v10

    aput v16, v3, v17

    aput v22, v3, v18

    aput v24, v3, v19

    aput v26, v3, v20

    .line 64
    aget v11, v3, p9

    aget v14, v3, v10

    sub-float v16, v12, v25

    sub-float v22, v15, v1

    mul-float v22, v22, v11

    mul-float v16, v16, v14

    sub-float v22, v22, v16

    cmpg-float v16, v22, p2

    if-ltz v16, :cond_7

    sub-float v16, v12, v21

    sub-float v22, v15, v23

    mul-float v16, v16, v14

    mul-float v22, v22, v11

    sub-float v16, v16, v22

    cmpg-float v11, v16, p2

    if-gez v11, :cond_4

    goto :goto_3

    .line 65
    :cond_4
    aget v11, v3, v17

    aget v14, v3, v18

    sub-float v16, v21, v12

    sub-float v17, v23, v15

    mul-float v17, v17, v11

    mul-float v16, v16, v14

    sub-float v17, v17, v16

    cmpg-float v16, v17, p2

    if-ltz v16, :cond_7

    sub-float v16, v21, v25

    sub-float v17, v23, v1

    mul-float v16, v16, v14

    mul-float v17, v17, v11

    sub-float v16, v16, v17

    cmpg-float v11, v16, p2

    if-gez v11, :cond_5

    goto :goto_3

    .line 66
    :cond_5
    aget v11, v3, v19

    aget v3, v3, v20

    sub-float v14, v25, v21

    sub-float v16, v1, v23

    mul-float v16, v16, v11

    mul-float/2addr v14, v3

    sub-float v16, v16, v14

    cmpg-float v14, v16, p2

    if-ltz v14, :cond_7

    sub-float v25, v25, v12

    sub-float/2addr v1, v15

    mul-float v25, v25, v3

    mul-float/2addr v1, v11

    sub-float v25, v25, v1

    cmpg-float v1, v25, p2

    if-ltz v1, :cond_7

    goto :goto_4

    :cond_6
    const/16 p2, 0x0

    :cond_7
    :goto_3
    cmpg-float v1, v6, p2

    :goto_4
    if-nez v8, :cond_8

    goto/16 :goto_9

    .line 67
    :cond_8
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    if-ne v9, v1, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v3, p9

    :goto_5
    if-ge v3, v13, :cond_b

    .line 68
    aget v8, v9, v3

    aget v11, v1, v3

    invoke-static {v8, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_a

    aget v8, v9, v3

    aget v11, v1, v3

    sub-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v11, 0x3a83126f    # 0.001f

    cmpl-float v8, v8, v11

    if-lez v8, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 69
    :cond_b
    :goto_6
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D65:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-static {v2, v1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    cmpg-float v1, v6, p2

    if-nez v1, :cond_d

    cmpg-float v1, v7, p1

    if-nez v1, :cond_d

    .line 70
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    .line 71
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    const-wide/16 v2, 0x0

    :goto_7
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_e

    .line 72
    iget-object v6, v1, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    .line 73
    invoke-interface {v4, v2, v3}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v7

    .line 74
    invoke-interface {v6, v2, v3}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v11

    sub-double/2addr v7, v11

    .line 75
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_d

    .line 76
    iget-object v6, v1, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    .line 77
    invoke-interface {v5, v2, v3}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v11

    .line 78
    invoke-interface {v6, v2, v3}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v6

    sub-double/2addr v11, v6

    .line 79
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_d

    const-wide v6, 0x3f70101010101010L    # 0.00392156862745098

    add-double/2addr v2, v6

    goto :goto_7

    :cond_d
    :goto_8
    move/from16 v10, p9

    .line 80
    :cond_e
    :goto_9
    iput-boolean v10, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->isSrgb:Z

    return-void

    .line 81
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transform must have 9 entries! Has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid range: min="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "; min must be strictly < max"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    const-class v2, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget-object v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    iget v3, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    iget v4, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget v3, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    iget v4, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    iget-object v4, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    iget-object v4, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    if-eqz v3, :cond_7

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    if-nez v2, :cond_8

    return v0

    :cond_8
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    iget-object v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    iget-object p1, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    :goto_0
    return v1
.end method

.method public final getMaxValue(I)F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    return p0
.end method

.method public final getMinValue(I)F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    return p0
.end method

.method public final hashCode()I
    .locals 5

    invoke-super {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    cmpg-float v2, v1, v2

    if-nez v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->hashCode()I

    move-result v4

    :cond_2
    add-int/2addr v0, v4

    if-nez v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_3
    return v0
.end method

.method public final isSrgb()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->isSrgb:Z

    return p0
.end method

.method public final toXy$ui_graphics_release(FFF)J
    .locals 3

    float-to-double v0, p1

    iget-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p2

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float p2, v1

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float p1, v1

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    array-length p3, p0

    const/16 v1, 0x9

    if-ge p3, v1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 p3, 0x0

    aget p3, p0, p3

    mul-float/2addr p3, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, p3

    const/4 p3, 0x6

    aget p3, p0, p3

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    mul-float/2addr v1, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    const/4 p2, 0x7

    aget p0, p0, p2

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long p0, p1, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public final toZ$ui_graphics_release(FFF)F
    .locals 3

    float-to-double v0, p1

    iget-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p2

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float p2, v1

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v1

    double-to-float p1, v1

    const/4 p3, 0x2

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    aget p3, p0, p3

    mul-float/2addr p3, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p3

    const/16 p2, 0x8

    aget p0, p0, p2

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    return p0
.end method

.method public final xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    aget v0, v1, v0

    mul-float/2addr v0, p1

    const/4 v2, 0x3

    aget v2, v1, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    const/4 v0, 0x6

    aget v0, v1, v0

    mul-float/2addr v0, p3

    add-float/2addr v0, v2

    const/4 v2, 0x1

    aget v2, v1, v2

    mul-float/2addr v2, p1

    const/4 v3, 0x4

    aget v3, v1, v3

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    const/4 v2, 0x7

    aget v2, v1, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v1, v3

    mul-float/2addr v3, p1

    const/4 p1, 0x5

    aget p1, v1, p1

    mul-float/2addr p1, p2

    add-float/2addr p1, v3

    const/16 p2, 0x8

    aget p2, v1, p2

    mul-float/2addr p2, p3

    add-float/2addr p2, p1

    float-to-double v0, v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, v2

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float p3, v0

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p1, p3, p0, p4, p5}, Landroidx/compose/ui/graphics/Brush;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
