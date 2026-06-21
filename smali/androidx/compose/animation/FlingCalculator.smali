.class public final Landroidx/compose/animation/FlingCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/FloatDecayAnimationSpec;
.implements Landroidx/compose/ui/graphics/Shape;


# instance fields
.field public friction:F

.field public magicPhysicalCoefficient:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x33d6bf95    # 1.0E-7f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    const p1, 0x38d1b717    # 1.0E-4f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v2, "layoutDirection"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "density"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/compose/ui/graphics/Outline$Rounded;

    const/16 v3, 0x20

    shr-long v4, p1, v3

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    iget v5, v0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v4, v5

    const-wide v5, 0xffffffffL

    and-long v7, p1, v5

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v8, v4

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v10, v4

    shl-long v7, v8, v3

    and-long v9, v10, v5

    or-long/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    iget v0, v0, Landroidx/compose/animation/FlingCalculator;->friction:F

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v10, v7

    shl-long v7, v8, v3

    and-long v9, v10, v5

    or-long v16, v7, v9

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v10, v7

    shl-long v7, v8, v3

    and-long v9, v10, v5

    or-long v18, v7, v9

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v10, v7

    shl-long v7, v8, v3

    and-long v9, v10, v5

    or-long v20, v7, v9

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v7, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v7, v3

    and-long/2addr v0, v5

    or-long v22, v7, v0

    new-instance v11, Landroidx/compose/ui/geometry/RoundRect;

    iget v12, v4, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v13, v4, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v14, v4, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v15, v4, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-direct/range {v11 .. v23}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    invoke-direct {v2, v11}, Landroidx/compose/ui/graphics/Outline$Rounded;-><init>(Landroidx/compose/ui/geometry/RoundRect;)V

    return-object v2
.end method

.method public flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;
    .locals 9

    invoke-virtual {p0, p1}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v0

    sget v2, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v4

    new-instance v6, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    iget v7, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v7, p0

    float-to-double v7, v7

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    double-to-float p0, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {v6, p1, p0, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo;-><init>(FFJ)V

    return-object v6
.end method

.method public getAbsVelocityThreshold()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    return p0
.end method

.method public getDurationNanos(F)J
    .locals 2

    iget v0, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    div-float/2addr p1, p0

    float-to-long p0, p1

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public getSplineDeceleration(F)D
    .locals 2

    sget-object v0, Landroidx/compose/animation/AndroidFlingSpline;->SplinePositions:[F

    iget v0, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v0, p0

    const p0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p0

    float-to-double p0, p1

    float-to-double v0, v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getTargetValue(FF)F
    .locals 4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return p1

    :cond_0
    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    float-to-double v2, p0

    div-double/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-double v2, v2

    mul-double/2addr v0, v2

    div-float v2, p2, p0

    sub-float/2addr p1, v2

    div-float/2addr p2, p0

    float-to-double v2, p0

    mul-double/2addr v2, v0

    const/high16 p0, 0x447a0000    # 1000.0f

    float-to-double v0, p0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    return p2
.end method

.method public getValueFromNanos(FFJ)F
    .locals 2

    const-wide/32 v0, 0xf4240

    div-long/2addr p3, v0

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    div-float v0, p2, p0

    sub-float/2addr p1, v0

    div-float/2addr p2, p0

    long-to-float p3, p3

    mul-float/2addr p0, p3

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p0, p3

    float-to-double p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    double-to-float p0, p3

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    return p2
.end method

.method public getVelocityFromNanos(FJ)F
    .locals 2

    const-wide/32 v0, 0xf4240

    div-long/2addr p2, v0

    long-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr p2, p0

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    double-to-float p0, p2

    mul-float/2addr p1, p0

    return p1
.end method
