.class public final Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public hasLookaheadOccurred:Z

.field public final scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v5, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    iget v6, v5, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result p2

    const-wide p3, 0xffffffffL

    const/16 v1, 0x20

    iget-object v2, p0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->hasLookaheadOccurred:Z

    iget-object p0, v2, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;->targetSize:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    int-to-long v5, v3

    shl-long v1, v5, v1

    int-to-long v5, v4

    and-long p2, v5, p3

    or-long/2addr p2, v1

    new-instance p4, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {p4, p2, p3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-virtual {p0, p4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->hasLookaheadOccurred:Z

    if-nez p0, :cond_2

    iget-object p0, v2, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;->targetSize:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    int-to-long v5, v3

    shl-long v1, v5, v1

    int-to-long v5, v4

    and-long p2, v5, p3

    or-long/2addr p2, v1

    new-instance p4, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {p4, p2, p3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-virtual {p0, p4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    new-instance p0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;

    const/4 p2, 0x1

    invoke-direct {p0, p2, v0}, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;-><init>(ILjava/util/ArrayList;)V

    sget-object p2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, v3, v4, p2, p0}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
