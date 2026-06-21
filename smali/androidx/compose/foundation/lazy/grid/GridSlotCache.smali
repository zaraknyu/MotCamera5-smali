.class public final Landroidx/compose/foundation/lazy/grid/GridSlotCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cachedConstraints:J

.field public cachedDensity:F

.field public cachedSizes:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

.field public final calculation:Landroidx/compose/animation/core/InfiniteTransition$run$2;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/InfiniteTransition$run$2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->calculation:Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/4 p1, 0x0

    const/16 v0, 0xf

    invoke-static {p1, p1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->cachedConstraints:J

    return-void
.end method
