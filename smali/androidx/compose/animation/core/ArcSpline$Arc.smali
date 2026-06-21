.class public final Landroidx/compose/animation/core/ArcSpline$Arc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final arcDistance:F

.field public final arcVelocity:F

.field public final ellipseA:F

.field public final ellipseB:F

.field public final ellipseCenterX:F

.field public final ellipseCenterY:F

.field public final isLinear:Z

.field public final lut:[F

.field public final oneOverDeltaTime:F

.field public final time1:F

.field public final time2:F

.field public tmpCosAngle:F

.field public tmpSinAngle:F

.field public final vertical:F

.field public final x1:F

.field public final x2:F

.field public final y1:F

.field public final y2:F


# direct methods
.method public constructor <init>(IFFFFFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    iput v3, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    iput v4, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->x1:F

    iput v5, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->y1:F

    iput v6, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->x2:F

    iput v7, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->y2:F

    sub-float v8, v6, v4

    sub-float v9, v7, v5

    const/4 v10, 0x0

    const/4 v12, 0x1

    if-eq v1, v12, :cond_2

    const/4 v13, 0x4

    if-eq v1, v13, :cond_3

    const/4 v13, 0x5

    if-eq v1, v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    cmpg-float v13, v9, v10

    if-gez v13, :cond_0

    :cond_2
    :goto_0
    move v13, v12

    goto :goto_1

    :cond_3
    cmpl-float v13, v9, v10

    if-lez v13, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v13, :cond_4

    const/high16 v14, -0x40800000    # -1.0f

    goto :goto_2

    :cond_4
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_2
    iput v14, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->vertical:F

    int-to-float v15, v12

    sub-float v2, v3, v2

    div-float/2addr v15, v2

    iput v15, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->oneOverDeltaTime:F

    const/16 v2, 0x65

    new-array v2, v2, [F

    iput-object v2, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->lut:[F

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    move v1, v12

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v16, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v16

    if-ltz v3, :cond_6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v16

    if-gez v3, :cond_7

    :cond_6
    move/from16 v17, v12

    goto/16 :goto_a

    :cond_7
    mul-float/2addr v8, v14

    iput v8, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    neg-float v3, v14

    mul-float/2addr v9, v3

    iput v9, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    if-eqz v13, :cond_8

    move v3, v6

    goto :goto_4

    :cond_8
    move v3, v4

    :goto_4
    iput v3, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    if-eqz v13, :cond_9

    move v3, v5

    goto :goto_5

    :cond_9
    move v3, v7

    :goto_5
    iput v3, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    sub-float v3, v6, v4

    sub-float v4, v5, v7

    sget-object v5, Landroidx/compose/animation/core/ArcSplineKt;->OurPercentCache:[F

    const/16 v6, 0x5a

    int-to-float v7, v6

    move v14, v4

    move v9, v10

    move v13, v9

    move v8, v12

    :goto_6
    const-wide v15, 0x4056800000000000L    # 90.0

    move/from16 v17, v12

    move/from16 p1, v13

    int-to-double v12, v8

    mul-double/2addr v12, v15

    move/from16 v16, v10

    int-to-double v10, v6

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v12, v3

    mul-float/2addr v10, v4

    sub-float v11, v12, p1

    move v13, v7

    float-to-double v6, v11

    sub-float v11, v10, v14

    float-to-double v14, v11

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    add-float/2addr v9, v6

    aput v9, v5, v8

    const/16 v6, 0x5a

    if-eq v8, v6, :cond_a

    add-int/lit8 v8, v8, 0x1

    move v14, v10

    move v7, v13

    move/from16 v10, v16

    move v13, v12

    move/from16 v12, v17

    goto :goto_6

    :cond_a
    iput v9, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcDistance:F

    move/from16 v3, v17

    :goto_7
    aget v4, v5, v3

    div-float/2addr v4, v9

    aput v4, v5, v3

    if-eq v3, v6, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_e

    int-to-float v6, v4

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    const/16 v7, 0x5b

    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v6}, Ljava/util/Arrays;->binarySearch([FIIF)I

    move-result v7

    if-ltz v7, :cond_c

    int-to-float v6, v7

    div-float/2addr v6, v13

    aput v6, v2, v4

    goto :goto_9

    :cond_c
    const/4 v9, -0x1

    if-ne v7, v9, :cond_d

    aput v16, v2, v4

    goto :goto_9

    :cond_d
    neg-int v7, v7

    add-int/lit8 v9, v7, -0x2

    add-int/lit8 v7, v7, -0x1

    int-to-float v10, v9

    aget v9, v5, v9

    sub-float/2addr v6, v9

    aget v7, v5, v7

    sub-float/2addr v7, v9

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    div-float/2addr v6, v13

    aput v6, v2, v4

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    iget v2, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcDistance:F

    iget v3, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->oneOverDeltaTime:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    move v12, v1

    goto :goto_b

    :goto_a
    float-to-double v1, v9

    float-to-double v3, v8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcDistance:F

    mul-float/2addr v1, v15

    iput v1, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    mul-float/2addr v8, v15

    iput v8, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterX:F

    mul-float/2addr v9, v15

    iput v9, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseCenterY:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    iput v1, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    move/from16 v12, v17

    :goto_b
    iput-boolean v12, v0, Landroidx/compose/animation/core/ArcSpline$Arc;->isLinear:Z

    return-void
.end method


# virtual methods
.method public final calcDX()F
    .locals 6

    iget v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    iget v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpCosAngle:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    neg-float v1, v1

    iget v2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpSinAngle:F

    mul-float/2addr v1, v2

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    div-float/2addr v2, v1

    iget p0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->vertical:F

    mul-float/2addr v0, p0

    mul-float/2addr v0, v2

    return v0
.end method

.method public final calcDY()F
    .locals 6

    iget v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseA:F

    iget v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpCosAngle:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->ellipseB:F

    neg-float v1, v1

    iget v2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpSinAngle:F

    mul-float/2addr v1, v2

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->arcVelocity:F

    div-float/2addr v2, v0

    iget p0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->vertical:F

    mul-float/2addr v1, p0

    mul-float/2addr v1, v2

    return v1
.end method

.method public final setPoint(F)V
    .locals 4

    iget v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->vertical:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->time2:F

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->time1:F

    sub-float v0, p1, v0

    :goto_0
    iget p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->oneOverDeltaTime:F

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, p1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x64

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float v1, p1

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->lut:[F

    aget v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    invoke-static {p1, v2, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p1

    :goto_1
    const v0, 0x3fc90fdb

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpSinAngle:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Landroidx/compose/animation/core/ArcSpline$Arc;->tmpCosAngle:F

    return-void
.end method
