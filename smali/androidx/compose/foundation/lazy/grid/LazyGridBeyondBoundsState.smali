.class public final Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;


# instance fields
.field public final state:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    return-void
.end method


# virtual methods
.method public final getFirstPlacedIndex()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public final getHasVisibleItems()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->totalItemsCount:I

    return p0
.end method

.method public final getLastPlacedIndex()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    return p0
.end method

.method public final itemsPerViewport()I
    .locals 15

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v0

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/16 v4, 0x20

    const-wide v5, 0xffffffffL

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide v7

    and-long/2addr v7, v5

    :goto_0
    long-to-int v0, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide v7

    shr-long/2addr v7, v4

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object p0

    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v7, 0x1

    if-ne v2, v3, :cond_2

    move v2, v7

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    move v8, v1

    move v9, v8

    move v10, v9

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_6

    invoke-static {v2, p0, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfo;->visibleLinesAverageMainAxisSize$lineOf(ZLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move v12, v1

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_5

    invoke-static {v2, p0, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfo;->visibleLinesAverageMainAxisSize$lineOf(ZLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;I)I

    move-result v13

    if-ne v13, v11, :cond_5

    if-eqz v2, :cond_4

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v13, v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    and-long/2addr v13, v5

    :goto_5
    long-to-int v13, v13

    goto :goto_6

    :cond_4
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v13, v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    shr-long/2addr v13, v4

    goto :goto_5

    :goto_6
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v9, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    div-int/2addr v9, v10

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->mainAxisItemSpacing:I

    add-int/2addr v9, p0

    if-nez v9, :cond_7

    goto :goto_7

    :cond_7
    div-int/2addr v0, v9

    if-ge v0, v7, :cond_8

    :goto_7
    return v7

    :cond_8
    return v0
.end method
