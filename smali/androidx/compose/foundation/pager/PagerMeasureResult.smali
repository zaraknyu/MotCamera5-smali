.class public final Landroidx/compose/foundation/pager/PagerMeasureResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final afterContentPadding:I

.field public final beyondViewportPageCount:I

.field public final canScrollForward:Z

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final currentPage:Landroidx/compose/foundation/pager/MeasuredPage;

.field public final currentPageOffsetFraction:F

.field public final extraPagesAfter:Ljava/util/List;

.field public final extraPagesBefore:Ljava/util/List;

.field public final firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

.field public final firstVisiblePageScrollOffset:I

.field public final measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final pageSize:I

.field public final pageSpacing:I

.field public final remeasureNeeded:Z

.field public final snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

.field public final viewportEndOffset:I

.field public final viewportStartOffset:I

.field public final visiblePagesInfo:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 20

    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v13, 0x0

    const/16 v16, 0x0

    .line 1
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v19, p9

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 4
    iput p2, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 5
    iput p3, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    .line 6
    iput p4, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    .line 7
    iput-object p5, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 8
    iput p6, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    .line 9
    iput p7, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportEndOffset:I

    .line 10
    iput p8, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->beyondViewportPageCount:I

    .line 11
    iput-object p9, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

    .line 12
    iput-object p10, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPage:Landroidx/compose/foundation/pager/MeasuredPage;

    .line 13
    iput p11, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPageOffsetFraction:F

    .line 14
    iput p12, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePageScrollOffset:I

    .line 15
    iput-boolean p13, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->canScrollForward:Z

    .line 16
    iput-object p14, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 17
    iput-object p15, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    move/from16 p1, p16

    .line 18
    iput-boolean p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->remeasureNeeded:Z

    move-object/from16 p1, p17

    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    move-object/from16 p1, p18

    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    move-object/from16 p1, p19

    .line 21
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final copyWithScrollDeltaWithoutRemeasure(I)Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    iget v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    add-int/2addr v2, v3

    iget-boolean v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->remeasureNeeded:Z

    if-nez v3, :cond_8

    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

    if-eqz v4, :cond_8

    iget v4, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePageScrollOffset:I

    sub-int/2addr v4, v1

    if-ltz v4, :cond_8

    if-ge v4, v2, :cond_8

    if-eqz v2, :cond_0

    int-to-float v5, v1

    int-to-float v6, v2

    div-float/2addr v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget v6, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPageOffsetFraction:F

    sub-float v16, v6, v5

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPage:Landroidx/compose/foundation/pager/MeasuredPage;

    if-eqz v5, :cond_8

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v5, v16, v5

    if-gez v5, :cond_8

    const/high16 v5, -0x41000000    # -0.5f

    cmpg-float v5, v16, v5

    if-gtz v5, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v7, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportEndOffset:I

    iget v8, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    if-gez v1, :cond_2

    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v8

    iget v6, v6, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    add-int/2addr v6, v2

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v5, v1

    if-le v2, v5, :cond_8

    goto :goto_1

    :cond_2
    iget v2, v5, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    sub-int/2addr v8, v2

    iget v2, v6, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    sub-int/2addr v7, v2

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v2, v1, :cond_8

    :goto_1
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v2, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v7, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->applyScrollDelta(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v6, v5

    :goto_3
    if-ge v6, v3, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v7, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->applyScrollDelta(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v6, v5

    :goto_4
    if-ge v6, v3, :cond_5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v7, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->applyScrollDelta(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    new-instance v2, Landroidx/compose/foundation/pager/PagerMeasureResult;

    iget-boolean v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->canScrollForward:Z

    if-nez v3, :cond_7

    if-lez v1, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    move/from16 v18, v5

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v5, 0x1

    goto :goto_5

    :goto_7
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    iget v7, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    iget v8, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    iget v9, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    iget-object v10, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget v11, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    iget v12, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportEndOffset:I

    iget v13, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->beyondViewportPageCount:I

    iget-object v14, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object v15, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPage:Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    move-object/from16 v20, v1

    iget-boolean v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->remeasureNeeded:Z

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    move-object/from16 v22, v0

    move/from16 v21, v1

    move-object/from16 v24, v3

    move/from16 v17, v4

    move-object/from16 v19, v5

    move-object v5, v2

    invoke-direct/range {v5 .. v24}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v5

    :cond_8
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlignmentLines()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getRulers()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public final getViewportSize-YbymL2g()J
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

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

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public final placeChildren()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method
