.class public final Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentAngle:F

.field public final end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

.field public final maxLength:F

.field public final minLength:F

.field public final start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;)V
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget-object v1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    .line 5
    iget v2, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    .line 6
    iget v1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    .line 7
    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;-><init>(FF)V

    .line 8
    new-instance v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget-object v2, p1, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    .line 9
    iget v3, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    .line 10
    iget v2, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    .line 11
    invoke-direct {v1, v3, v2}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;-><init>(FF)V

    .line 12
    iget v2, p1, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->minLength:F

    .line 13
    iget v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->maxLength:F

    .line 14
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;-><init>(Lcom/motorola/camera/utility/TiltShiftUtil$Point;Lcom/motorola/camera/utility/TiltShiftUtil$Point;FF)V

    .line 15
    iget p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->currentAngle:F

    iput p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->currentAngle:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/utility/TiltShiftUtil$Point;Lcom/motorola/camera/utility/TiltShiftUtil$Point;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iput-object p2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iput p3, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->minLength:F

    .line 3
    iput p4, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->maxLength:F

    return-void
.end method

.method public static roundPoint(Lcom/motorola/camera/utility/TiltShiftUtil$Point;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    float-to-double v0, v0

    const-wide v2, 0x4202a05f20000000L    # 1.0E10

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    float-to-double v0, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    return-void
.end method


# virtual methods
.method public final center()Lcom/motorola/camera/utility/TiltShiftUtil$Point;
    .locals 4

    new-instance v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget-object v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v2, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    add-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    add-float/2addr v1, p0

    div-float/2addr v1, v3

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;-><init>(FF)V

    return-object v0
.end method

.method public final getCurrentLength()F
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const/4 v3, 0x2

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v0, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    sub-float/2addr v0, p0

    float-to-double v5, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p0, v2

    add-float/2addr v1, p0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final rotateAroundCenter(F)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->currentAngle:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->currentAngle:F

    const v1, 0x40c90fdb

    rem-float/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    add-float/2addr v0, v1

    :cond_0
    float-to-double v1, v0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    const v1, 0x40490fdb    # (float)Math.PI

    sub-float/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->currentAngle:F

    invoke-virtual {p0}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->center()Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    move-result-object v0

    iget v1, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    neg-float v1, v1

    iget v2, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    neg-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->translate(FF)V

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    iget-object v3, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v4, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr p1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr p1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr v4, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v4, v6

    iget-object v6, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v7, v6, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr v4, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, v6, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, v6, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr v7, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, v6, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v7

    iput p1, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iput v5, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iput v4, v6, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iput v1, v6, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget p1, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget v0, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->translate(FF)V

    invoke-static {v3}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->roundPoint(Lcom/motorola/camera/utility/TiltShiftUtil$Point;)V

    invoke-static {v6}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->roundPoint(Lcom/motorola/camera/utility/TiltShiftUtil$Point;)V

    return-void
.end method

.method public final scaleAroundCenter(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->center()Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    move-result-object v0

    iget v1, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    neg-float v1, v1

    iget v2, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    neg-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->translate(FF)V

    iget-object v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v2, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr v2, p1

    iput v2, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget v2, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr v2, p2

    iput v2, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget-object v2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr p1, p2

    iput p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-virtual {p0}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->getCurrentLength()F

    move-result p1

    iget p2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->minLength:F

    cmpg-float v3, p1, p2

    if-gez v3, :cond_0

    div-float/2addr p2, p1

    iget p1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr p1, p2

    iput p1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget p1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr p1, p2

    iput p1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr p1, p2

    iput p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr p1, p2

    iput p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->maxLength:F

    cmpl-float v3, p1, p2

    if-lez v3, :cond_1

    div-float/2addr p2, p1

    iget p1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr p1, p2

    iput p1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget p1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr p1, p2

    iput p1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    mul-float/2addr p1, p2

    iput p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    mul-float/2addr p1, p2

    iput p1, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    :cond_1
    :goto_0
    iget p1, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget p2, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->translate(FF)V

    invoke-static {v1}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->roundPoint(Lcom/motorola/camera/utility/TiltShiftUtil$Point;)V

    invoke-static {v2}, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->roundPoint(Lcom/motorola/camera/utility/TiltShiftUtil$Point;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineSegment(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final translate(FF)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->start:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget v1, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$LineSegment;->end:Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    return-void
.end method
