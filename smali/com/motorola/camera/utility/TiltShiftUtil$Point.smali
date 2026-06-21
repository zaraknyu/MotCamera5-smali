.class public final Lcom/motorola/camera/utility/TiltShiftUtil$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iput p2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final rotate(FLcom/motorola/camera/utility/TiltShiftUtil$Point;)Lcom/motorola/camera/utility/TiltShiftUtil$Point;
    .locals 5

    const-string v0, "about"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget v1, p2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    sub-float/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget v1, p2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    sub-float/2addr p0, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    mul-float/2addr p1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, p0

    sub-float/2addr p1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    new-instance v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, p2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    add-float/2addr p1, v1

    iget p2, p2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    add-float/2addr p0, p2

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;-><init>(FF)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Point(x="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
