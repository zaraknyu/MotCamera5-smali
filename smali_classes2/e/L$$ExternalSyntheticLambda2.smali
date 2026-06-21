.class public final synthetic Le/L$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:Le/D;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:F

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(FLe/D;IJJJFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/L$$ExternalSyntheticLambda2;->f$0:F

    iput-object p2, p0, Le/L$$ExternalSyntheticLambda2;->f$1:Le/D;

    iput p3, p0, Le/L$$ExternalSyntheticLambda2;->f$2:I

    iput-wide p4, p0, Le/L$$ExternalSyntheticLambda2;->f$3:J

    iput-wide p6, p0, Le/L$$ExternalSyntheticLambda2;->f$4:J

    iput-wide p8, p0, Le/L$$ExternalSyntheticLambda2;->f$5:J

    iput p10, p0, Le/L$$ExternalSyntheticLambda2;->f$6:F

    iput-wide p11, p0, Le/L$$ExternalSyntheticLambda2;->f$7:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/ui/unit/Density;

    const-string v0, "$this$absoluteOffset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Le/L$$ExternalSyntheticLambda2;->f$0:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Le/L$$ExternalSyntheticLambda2;->f$1:Le/D;

    iget-object v3, v2, Le/D;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v2, v2, Le/D;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget v6, p0, Le/L$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    iget-wide v2, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-wide v6, p0, Le/L$$ExternalSyntheticLambda2;->f$3:J

    invoke-static {v2, v3, v6, v7}, La/l;->a(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-wide v6, p0, Le/L$$ExternalSyntheticLambda2;->f$4:J

    invoke-static {v6, v7, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v2

    iget-wide v6, p0, Le/L$$ExternalSyntheticLambda2;->f$5:J

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    iget v6, p0, Le/L$$ExternalSyntheticLambda2;->f$6:F

    invoke-static {v6, v2, v3}, La/l;->a(FJ)J

    move-result-wide v2

    iget-wide v6, p0, Le/L$$ExternalSyntheticLambda2;->f$7:J

    invoke-static {v6, v7, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    shr-long v2, v0, p1

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    int-to-long v1, p0

    shl-long p0, v1, p1

    int-to-long v0, v0

    and-long/2addr v0, v4

    or-long/2addr p0, v0

    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object v0
.end method
