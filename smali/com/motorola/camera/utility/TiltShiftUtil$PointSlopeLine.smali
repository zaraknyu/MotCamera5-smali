.class public final Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

.field public slope:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/TiltShiftUtil$Point;Ljava/lang/Float;)V
    .locals 1

    const-string/jumbo v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iput-object p2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;

    iget-object v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget-object v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    iget-object p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final intersect(Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;)Lcom/motorola/camera/utility/TiltShiftUtil$Point;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget-object v2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v2, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget-object v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget-object p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    sub-float/2addr p0, v3

    mul-float/2addr p0, v1

    iget p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    add-float/2addr p0, p1

    invoke-direct {v0, v2, p0}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;-><init>(FF)V

    return-object v0

    :cond_1
    iget-object v2, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    if-nez v2, :cond_2

    new-instance v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget-object v2, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v2, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    sub-float/2addr p1, v3

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    add-float/2addr p1, p0

    invoke-direct {v1, v2, p1}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;-><init>(FF)V

    return-object v1

    :cond_2
    iget-object v2, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v2, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget-object v3, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iget-object v2, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    iget-object v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    iget-object p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    sub-float/2addr v2, p1

    div-float/2addr v0, v2

    iget-object p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    sub-float p1, v0, p1

    mul-float/2addr p1, v1

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    add-float/2addr p1, p0

    new-instance p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;-><init>(FF)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PointSlopeLine(point="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", slope="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final yFromX(F)F
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x4202a05f20000000L    # 1.0E10

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->slope:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$PointSlopeLine;->point:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    sub-float/2addr p1, v1

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    add-float/2addr p1, p0

    return p1
.end method
