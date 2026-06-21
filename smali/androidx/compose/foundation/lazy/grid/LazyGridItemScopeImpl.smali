.class public final Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    return-void
.end method

.method public static animateItem$default(Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;)Landroidx/compose/ui/Modifier;
    .locals 11

    const/high16 v0, 0x43c80000    # 400.0f

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v3

    const/4 v4, 0x1

    int-to-long v5, v4

    const/16 v7, 0x20

    shl-long v7, v5, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v5, v9

    or-long/2addr v5, v7

    new-instance v7, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    invoke-static {v0, v4, v7}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v4

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemElement;

    invoke-direct {p0, v3, v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemElement;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    return-object p0
.end method
