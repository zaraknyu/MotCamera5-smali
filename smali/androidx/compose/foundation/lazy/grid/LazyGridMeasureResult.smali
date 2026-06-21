.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final afterContentPadding:I

.field public final canScrollForward:Z

.field public final consumedScroll:F

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

.field public final firstVisibleLineScrollOffset:I

.field public final mainAxisItemSpacing:I

.field public final measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final prefetchInfoRetriever:Lkotlin/jvm/internal/Lambda;

.field public final remeasureNeeded:Z

.field public final scrollBackAmount:F

.field public final slotsPerLine:I

.field public final totalItemsCount:I

.field public final viewportEndOffset:I

.field public final viewportStartOffset:I

.field public final visibleItemsInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->canScrollForward:Z

    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->consumedScroll:F

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->scrollBackAmount:F

    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->remeasureNeeded:Z

    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    iput p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->slotsPerLine:I

    check-cast p11, Lkotlin/jvm/internal/Lambda;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->prefetchInfoRetriever:Lkotlin/jvm/internal/Lambda;

    iput-object p12, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    iput p13, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportStartOffset:I

    iput p14, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportEndOffset:I

    iput p15, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->totalItemsCount:I

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 p1, p17

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->afterContentPadding:I

    move/from16 p1, p18

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->mainAxisItemSpacing:I

    return-void
.end method


# virtual methods
.method public final copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->remeasureNeeded:Z

    if-nez v2, :cond_8

    iget-object v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v2, :cond_8

    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    iget v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    sub-int v5, v3, v1

    if-ltz v5, :cond_8

    if-ge v5, v2, :cond_8

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-boolean v4, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    if-nez v4, :cond_8

    iget-boolean v4, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    if-eqz v4, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportEndOffset:I

    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportStartOffset:I

    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-gez v1, :cond_1

    invoke-static {v2, v7}, Lcom/google/android/gms/common/wrappers/InstantApps;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v8

    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v6

    invoke-static {v3, v7}, Lcom/google/android/gms/common/wrappers/InstantApps;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v2

    iget v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v3, v1

    if-le v2, v3, :cond_8

    goto :goto_0

    :cond_1
    invoke-static {v2, v7}, Lcom/google/android/gms/common/wrappers/InstantApps;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v2

    sub-int/2addr v6, v2

    invoke-static {v3, v7}, Lcom/google/android/gms/common/wrappers/InstantApps;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v2

    sub-int/2addr v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v2, v1, :cond_8

    :goto_0
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v8, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    if-eqz v8, :cond_2

    move v12, v4

    goto :goto_4

    :cond_2
    iget-wide v8, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    const/16 v10, 0x20

    shr-long v11, v8, v10

    long-to-int v11, v11

    const-wide v12, 0xffffffffL

    and-long/2addr v8, v12

    long-to-int v8, v8

    add-int/2addr v8, v1

    move v14, v4

    int-to-long v3, v11

    shl-long/2addr v3, v10

    move v11, v10

    int-to-long v9, v8

    and-long v8, v9, v12

    or-long/2addr v3, v8

    iput-wide v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    if-eqz p2, :cond_4

    iget-object v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    iget-object v8, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v9, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    invoke-virtual {v8, v4, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-wide v9, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    move-wide/from16 v17, v12

    move v13, v11

    shr-long v11, v9, v13

    long-to-int v11, v11

    and-long v9, v9, v17

    long-to-int v9, v9

    add-int/2addr v9, v1

    int-to-long v10, v11

    shl-long/2addr v10, v13

    move v12, v14

    int-to-long v13, v9

    and-long v13, v13, v17

    or-long v9, v10, v13

    iput-wide v9, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    goto :goto_3

    :cond_3
    move-wide/from16 v17, v12

    move v12, v14

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v14, v12

    move-wide/from16 v12, v17

    const/16 v11, 0x20

    goto :goto_2

    :cond_4
    move v12, v14

    :goto_4
    add-int/lit8 v4, v12, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->canScrollForward:Z

    if-nez v2, :cond_7

    if-lez v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v3, 0x1

    move v6, v3

    :goto_6
    int-to-float v1, v1

    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->scrollBackAmount:F

    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->remeasureNeeded:Z

    iget-object v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    iget v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->slotsPerLine:I

    iget-object v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->prefetchInfoRetriever:Lkotlin/jvm/internal/Lambda;

    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportStartOffset:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportEndOffset:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->totalItemsCount:I

    move/from16 v18, v1

    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->afterContentPadding:I

    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->mainAxisItemSpacing:I

    move/from16 v21, v0

    move/from16 v20, v1

    move-object/from16 v19, v7

    move/from16 v7, v16

    move/from16 v16, v2

    invoke-direct/range {v3 .. v21}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v3

    :cond_8
    :goto_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlignmentLines()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getRulers()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public final getViewportSize-YbymL2g()J
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

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

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public final placeChildren()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method
