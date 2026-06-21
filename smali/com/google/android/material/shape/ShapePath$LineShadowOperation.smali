.class public final Lcom/google/android/material/shape/ShapePath$LineShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "SourceFile"


# instance fields
.field public final operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field public final startX:F

.field public final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    iput p2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    iput p3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    return-void
.end method


# virtual methods
.method public final getAngle()F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    iget v1, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->y:F

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    sub-float/2addr v1, v2

    iget v0, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->x:F

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
