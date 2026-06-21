.class public abstract Landroidx/compose/ui/graphics/colorspace/Illuminant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field public static final D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field public static final D50Xyz:[F

.field public static final D60:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

.field public static final D65:Landroidx/compose/ui/graphics/colorspace/WhitePoint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3e9ec02f    # 0.31006f

    const v2, 0x3ea1dfb9    # 0.31616f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->C:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3eb0fba9

    const v2, 0x3eb78d50    # 0.3585f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3ea4b33e    # 0.32168f

    const v2, 0x3eace315    # 0.33767f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D60:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const v1, 0x3ea01b86

    const v2, 0x3ea8754f    # 0.32902f

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D65:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50Xyz:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data
.end method

.method public static adapt$default(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 13

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    sget-wide v2, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Rgb:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    sget-object v5, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-static {v1, v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object p0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;->Bradford:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;

    iget-object v2, v2, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion$Bradford$1;->transform:[F

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v1

    invoke-static {v2, v1, p0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->chromaticAdaptation([F[F[F)[F

    move-result-object p0

    iget-object v1, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->mul3x3([F[F)[F

    move-result-object v6

    new-instance v2, Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget-object v3, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    iget-object v4, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    iget-object v7, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    iget-object v8, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    iget v9, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    iget v10, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    iget-object v11, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const/4 v12, -0x1

    invoke-direct/range {v2 .. v12}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-object v2

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static area([F)F
    .locals 8

    array-length v0, p0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget v4, p0, v4

    const/4 v5, 0x4

    aget v5, p0, v5

    const/4 v6, 0x5

    aget p0, p0, v6

    mul-float v6, v0, v4

    mul-float v7, v1, v5

    add-float/2addr v7, v6

    mul-float v6, v3, p0

    add-float/2addr v6, v7

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    mul-float/2addr v1, v3

    sub-float/2addr v6, v1

    mul-float/2addr v0, p0

    sub-float/2addr v6, v0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v6, p0

    cmpg-float p0, v6, v2

    if-gez p0, :cond_1

    neg-float p0, v6

    return p0

    :cond_1
    return v6
.end method

.method public static final chromaticAdaptation([F[F[F)[F
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->mul3x3Float3([F[F)[F

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->mul3x3Float3([F[F)[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v4, p1, v2

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v6, p1, v4

    div-float/2addr v5, v6

    const/4 v6, 0x2

    aget v1, v1, v6

    aget v7, p1, v6

    div-float/2addr v1, v7

    const/4 v7, 0x3

    new-array v8, v7, [F

    aput v3, v8, v2

    aput v5, v8, v4

    aput v1, v8, v6

    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->inverse3x3([F)[F

    move-result-object v1

    aget v3, v8, v2

    aget v5, v0, v2

    mul-float/2addr v5, v3

    aget v9, v8, v4

    aget v10, v0, v4

    mul-float/2addr v10, v9

    aget v8, v8, v6

    aget v11, v0, v6

    mul-float/2addr v11, v8

    aget v12, v0, v7

    mul-float/2addr v12, v3

    const/4 v13, 0x4

    aget v14, v0, v13

    mul-float/2addr v14, v9

    const/4 v15, 0x5

    aget v16, v0, v15

    mul-float v16, v16, v8

    const/16 v17, 0x6

    aget v18, v0, v17

    mul-float v3, v3, v18

    const/16 v18, 0x7

    aget v19, v0, v18

    mul-float v9, v9, v19

    const/16 v19, 0x8

    aget v0, v0, v19

    mul-float/2addr v8, v0

    const/16 v0, 0x9

    new-array v0, v0, [F

    aput v5, v0, v2

    aput v10, v0, v4

    aput v11, v0, v6

    aput v12, v0, v7

    aput v14, v0, v13

    aput v16, v0, v15

    aput v3, v0, v17

    aput v9, v0, v18

    aput v8, v0, v19

    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->mul3x3([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public static final compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->x:F

    iget v2, p1, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget p0, p0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->y:F

    iget p1, p1, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->y:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final createConnector-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 4

    if-ne p0, p1, :cond_0

    new-instance p1, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p0, v0}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V

    return-object p1

    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    sget-wide v2, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Rgb:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    check-cast p1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;)V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V

    return-object v0
.end method

.method public static final inverse3x3([F)[F
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v4, v0, v3

    const/4 v5, 0x6

    aget v6, v0, v5

    const/4 v7, 0x1

    aget v8, v0, v7

    const/4 v9, 0x4

    aget v10, v0, v9

    const/4 v11, 0x7

    aget v12, v0, v11

    const/4 v13, 0x2

    aget v14, v0, v13

    const/4 v15, 0x5

    aget v16, v0, v15

    const/16 v17, 0x8

    aget v18, v0, v17

    mul-float v19, v10, v18

    mul-float v20, v12, v16

    sub-float v19, v19, v20

    mul-float v20, v12, v14

    mul-float v21, v8, v18

    sub-float v20, v20, v21

    mul-float v21, v8, v16

    mul-float v22, v10, v14

    sub-float v21, v21, v22

    mul-float v22, v2, v19

    mul-float v23, v4, v20

    add-float v23, v23, v22

    mul-float v22, v6, v21

    add-float v22, v22, v23

    array-length v0, v0

    new-array v0, v0, [F

    div-float v19, v19, v22

    aput v19, v0, v1

    div-float v20, v20, v22

    aput v20, v0, v7

    div-float v21, v21, v22

    aput v21, v0, v13

    mul-float v1, v6, v16

    mul-float v7, v4, v18

    sub-float/2addr v1, v7

    div-float v1, v1, v22

    aput v1, v0, v3

    mul-float v18, v18, v2

    mul-float v1, v6, v14

    sub-float v18, v18, v1

    div-float v18, v18, v22

    aput v18, v0, v9

    mul-float/2addr v14, v4

    mul-float v16, v16, v2

    sub-float v14, v14, v16

    div-float v14, v14, v22

    aput v14, v0, v15

    mul-float v1, v4, v12

    mul-float v3, v6, v10

    sub-float/2addr v1, v3

    div-float v1, v1, v22

    aput v1, v0, v5

    mul-float/2addr v6, v8

    mul-float/2addr v12, v2

    sub-float/2addr v6, v12

    div-float v6, v6, v22

    aput v6, v0, v11

    mul-float/2addr v2, v10

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    div-float v2, v2, v22

    aput v2, v0, v17

    return-object v0
.end method

.method public static final mul3x3([F[F)[F
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    new-array v3, v2, [F

    array-length v4, v0

    if-ge v4, v2, :cond_0

    goto :goto_0

    :cond_0
    array-length v4, v1

    if-ge v4, v2, :cond_1

    :goto_0
    return-object v3

    :cond_1
    const/4 v2, 0x0

    aget v4, v0, v2

    aget v5, v1, v2

    mul-float/2addr v4, v5

    const/4 v5, 0x3

    aget v6, v0, v5

    const/4 v7, 0x1

    aget v8, v1, v7

    mul-float v9, v6, v8

    add-float/2addr v9, v4

    const/4 v4, 0x6

    aget v10, v0, v4

    const/4 v11, 0x2

    aget v12, v1, v11

    mul-float v13, v10, v12

    add-float/2addr v13, v9

    aput v13, v3, v2

    aget v9, v0, v7

    aget v13, v1, v2

    mul-float/2addr v9, v13

    const/4 v14, 0x4

    aget v15, v0, v14

    mul-float/2addr v8, v15

    add-float/2addr v8, v9

    const/4 v9, 0x7

    aget v16, v0, v9

    mul-float v17, v16, v12

    add-float v17, v17, v8

    aput v17, v3, v7

    aget v8, v0, v11

    mul-float/2addr v8, v13

    const/4 v13, 0x5

    aget v17, v0, v13

    aget v18, v1, v7

    mul-float v18, v18, v17

    add-float v18, v18, v8

    const/16 v8, 0x8

    aget v19, v0, v8

    mul-float v12, v12, v19

    add-float v12, v12, v18

    aput v12, v3, v11

    aget v2, v0, v2

    aget v12, v1, v5

    mul-float/2addr v12, v2

    aget v18, v1, v14

    mul-float v6, v6, v18

    add-float/2addr v6, v12

    aget v12, v1, v13

    mul-float v20, v10, v12

    add-float v20, v20, v6

    aput v20, v3, v5

    aget v6, v0, v7

    aget v7, v1, v5

    mul-float v20, v6, v7

    mul-float v15, v15, v18

    add-float v15, v15, v20

    mul-float v18, v16, v12

    add-float v18, v18, v15

    aput v18, v3, v14

    aget v11, v0, v11

    mul-float/2addr v7, v11

    aget v15, v1, v14

    mul-float v17, v17, v15

    add-float v17, v17, v7

    mul-float v12, v12, v19

    add-float v12, v12, v17

    aput v12, v3, v13

    aget v7, v1, v4

    mul-float/2addr v2, v7

    aget v5, v0, v5

    aget v7, v1, v9

    mul-float/2addr v5, v7

    add-float/2addr v5, v2

    aget v2, v1, v8

    mul-float/2addr v10, v2

    add-float/2addr v10, v5

    aput v10, v3, v4

    aget v4, v1, v4

    mul-float/2addr v6, v4

    aget v5, v0, v14

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    mul-float v16, v16, v2

    add-float v16, v16, v5

    aput v16, v3, v9

    mul-float/2addr v11, v4

    aget v0, v0, v13

    aget v1, v1, v9

    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    mul-float v19, v19, v2

    add-float v19, v19, v0

    aput v19, v3, v8

    return-object v3
.end method

.method public static final mul3x3Float3([F[F)[F
    .locals 8

    array-length v0, p0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :goto_0
    return-object p1

    :cond_1
    const/4 v0, 0x0

    aget v2, p1, v0

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x2

    aget v6, p1, v5

    aget v7, p0, v0

    mul-float/2addr v7, v2

    aget v1, p0, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v7

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float/2addr v7, v6

    add-float/2addr v7, v1

    aput v7, p1, v0

    aget v0, p0, v3

    mul-float/2addr v0, v2

    const/4 v1, 0x4

    aget v1, p0, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    const/4 v0, 0x7

    aget v0, p0, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v1

    aput v0, p1, v3

    aget v0, p0, v5

    mul-float/2addr v0, v2

    const/4 v1, 0x5

    aget v1, p0, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    const/16 v0, 0x8

    aget p0, p0, v0

    mul-float/2addr p0, v6

    add-float/2addr p0, v1

    aput p0, p1, v5

    return-object p1
.end method
