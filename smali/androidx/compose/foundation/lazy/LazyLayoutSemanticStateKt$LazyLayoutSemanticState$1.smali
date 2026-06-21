.class public final Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;


# instance fields
.field public final synthetic $isVertical:Z

.field public final synthetic $r8$classId:I

.field public final synthetic $state:Landroidx/compose/foundation/gestures/ScrollableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ScrollableState;ZI)V
    .locals 0

    iput p3, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$isVertical:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collectionInfo()Landroidx/compose/ui/semantics/CollectionInfo;
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$isVertical:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/compose/ui/semantics/CollectionInfo;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/compose/ui/semantics/CollectionInfo;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    :goto_0
    return-object p0

    :pswitch_0
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$isVertical:Z

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/compose/ui/semantics/CollectionInfo;

    invoke-direct {p0, v1, v0}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/compose/ui/semantics/CollectionInfo;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getContentPadding()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    neg-int v0, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    :goto_0
    add-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v0

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    neg-int v0, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->afterContentPadding:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaxScrollOffset()F
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/foundation/pager/PagerStateKt;->calculateNewMaxScrollOffset(Landroidx/compose/foundation/pager/PagerMeasureResult;I)J

    move-result-wide v0

    long-to-float p0, v0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollForward()Z

    move-result p0

    if-eqz p0, :cond_0

    mul-int/lit16 v0, v0, 0x1f4

    add-int/2addr v0, v1

    int-to-float p0, v0

    const/16 v0, 0x64

    int-to-float v0, v0

    add-float/2addr p0, v0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x1f4

    add-int/2addr v0, v1

    int-to-float p0, v0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getScrollOffset()F
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerScrollPositionKt;->currentAbsoluteScrollOffset(Landroidx/compose/foundation/pager/PagerState;)J

    move-result-wide v0

    long-to-float p0, v0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p0

    mul-int/lit16 v0, v0, 0x1f4

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getViewport()I
    .locals 4

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    :goto_0
    long-to-int p0, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long/2addr v0, p0

    goto :goto_0

    :goto_1
    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    :goto_2
    long-to-int p0, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportSize-YbymL2g()J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long/2addr v0, p0

    goto :goto_2

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final scrollToItem(ILandroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerState;->scrollToPage$default(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;ILkotlin/coroutines/Continuation;)V

    sget-object p1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/foundation/lazy/LazyListState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-ne p0, p1, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
