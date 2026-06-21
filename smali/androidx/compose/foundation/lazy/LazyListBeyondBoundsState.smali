.class public final Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;


# instance fields
.field public final state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/LazyListState;

    return-void
.end method


# virtual methods
.method public final getFirstPlacedIndex()I
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getHasVisibleItems()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    return p0
.end method

.method public final getLastPlacedIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final itemsPerViewport()I
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v0

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    :goto_0
    long-to-int v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide v2

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object p0

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v1

    :goto_2
    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v4, v1

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    add-int/2addr v4, p0

    const/4 p0, 0x1

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    div-int/2addr v0, v4

    if-ge v0, p0, :cond_4

    :goto_3
    return p0

    :cond_4
    return v0
.end method
