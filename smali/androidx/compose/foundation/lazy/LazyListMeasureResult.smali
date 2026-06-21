.class public final Landroidx/compose/foundation/lazy/LazyListMeasureResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final afterContentPadding:I

.field public final canScrollForward:Z

.field public final childConstraints:J

.field public final consumedScroll:F

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

.field public final firstVisibleItemScrollOffset:I

.field public final mainAxisItemSpacing:I

.field public final measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final remeasureNeeded:Z

.field public final scrollBackAmount:F

.field public final totalItemsCount:I

.field public final viewportEndOffset:I

.field public final viewportStartOffset:I

.field public final visibleItemsInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    iput p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->consumedScroll:F

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    iput p6, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->scrollBackAmount:F

    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->remeasureNeeded:Z

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    iput-wide p10, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->childConstraints:J

    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    iput p13, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    iput p14, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    iput p15, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 p1, p17

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->afterContentPadding:I

    move/from16 p1, p18

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    return-void
.end method


# virtual methods
.method public final copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->remeasureNeeded:Z

    if-nez v2, :cond_d

    iget-object v15, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v2, :cond_d

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    sub-int v5, v3, v1

    if-ltz v5, :cond_d

    if-ge v5, v2, :cond_d

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-boolean v4, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    if-nez v4, :cond_d

    iget-boolean v4, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    if-eqz v4, :cond_0

    goto/16 :goto_a

    :cond_0
    iget v4, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    iget v6, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    if-gez v1, :cond_1

    iget v7, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v7, v2

    sub-int/2addr v7, v6

    iget v2, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v3, v1

    if-le v2, v3, :cond_d

    goto :goto_0

    :cond_1
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    sub-int/2addr v6, v2

    iget v2, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    sub-int/2addr v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v2, v1, :cond_d

    :goto_0
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_a

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-boolean v7, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    iget-object v8, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    iget-boolean v9, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    if-eqz v9, :cond_3

    :cond_2
    move/from16 v18, v4

    goto :goto_7

    :cond_3
    iget v9, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    add-int/2addr v9, v1

    iput v9, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_7

    and-int/lit8 v11, v10, 0x1

    if-eqz v7, :cond_4

    if-nez v11, :cond_5

    :cond_4
    if-nez v7, :cond_6

    if-nez v11, :cond_6

    :cond_5
    aget v11, v8, v10

    add-int/2addr v11, v1

    aput v11, v8, v10

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_2

    iget-object v8, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_2

    iget-object v10, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v11, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-wide v11, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    const-wide v13, 0xffffffffL

    const/16 v16, 0x20

    if-eqz v7, :cond_8

    move/from16 v18, v4

    shr-long v3, v11, v16

    long-to-int v3, v3

    and-long/2addr v11, v13

    long-to-int v4, v11

    add-int/2addr v4, v1

    :goto_4
    int-to-long v11, v3

    shl-long v11, v11, v16

    int-to-long v3, v4

    and-long/2addr v3, v13

    or-long/2addr v3, v11

    goto :goto_5

    :cond_8
    move/from16 v18, v4

    shr-long v3, v11, v16

    long-to-int v3, v3

    add-int/2addr v3, v1

    and-long/2addr v11, v13

    long-to-int v4, v11

    goto :goto_4

    :goto_5
    iput-wide v3, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    goto :goto_6

    :cond_9
    move/from16 v18, v4

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v18

    goto :goto_3

    :goto_7
    add-int/lit8 v4, v18, 0x1

    goto :goto_1

    :cond_a
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    if-nez v2, :cond_c

    if-lez v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v2, 0x1

    move v6, v2

    :goto_9
    int-to-float v7, v1

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->afterContentPadding:I

    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    iget v9, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->scrollBackAmount:F

    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->remeasureNeeded:Z

    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    iget-wide v13, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->childConstraints:J

    move/from16 v20, v1

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v19, v0

    move/from16 v18, v1

    move/from16 v21, v2

    invoke-direct/range {v3 .. v21}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v3

    :cond_d
    :goto_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlignmentLines()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getRulers()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public final getViewportSize-YbymL2g()J
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public final placeChildren()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method
