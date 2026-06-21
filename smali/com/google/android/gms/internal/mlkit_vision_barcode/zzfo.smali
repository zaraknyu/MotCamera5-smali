.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final visibleLinesAverageMainAxisSize$lineOf(ZLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;I)I
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    return p0

    :cond_0
    iget-object p0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    return p0
.end method
