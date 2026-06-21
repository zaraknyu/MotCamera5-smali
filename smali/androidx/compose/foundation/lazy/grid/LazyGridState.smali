.class public final Landroidx/compose/foundation/lazy/grid/LazyGridState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# static fields
.field public static final Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;


# instance fields
.field public final _lazyLayoutScrollDeltaBetweenPasses:Lcom/google/android/gms/tasks/zzs;

.field public approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

.field public final awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field public final beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

.field public final canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public hasLookaheadOccurred:Z

.field public final internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field public final layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

.field public final pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field public final placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

.field public final prefetchScope:Lcom/google/android/gms/tasks/zzad;

.field public final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final prefetchStrategy:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public final prefetchingEnabled:Z

.field public remeasurement:Landroidx/compose/ui/node/LayoutNode;

.field public final remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

.field public final scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

.field public scrollToBeConsumed:F

.field public final scrollableState:Lcom/motorola/camera/fsm/Fsm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$1;

    sget-object v1, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchStrategy:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;-><init>(III)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    sget-object p2, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->EmptyLazyGridLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    sget-object v0, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {v1, p2, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {p2}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    new-instance p2, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v0, 0xd

    invoke-direct {p2, v0, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/fsm/Fsm;

    invoke-direct {v0, p2}, Lcom/motorola/camera/fsm/Fsm;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    new-instance p2, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;I)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    new-instance p2, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-direct {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    new-instance p2, Landroidx/room/ObservedTableVersions;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroidx/room/ObservedTableVersions;-><init>(IB)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList$addAll$1;-><init>(IILjava/lang/Object;)V

    invoke-direct {p2, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    new-instance p1, Lcom/google/android/gms/tasks/zzad;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchScope:Lcom/google/android/gms/tasks/zzad;

    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Lcom/google/android/gms/tasks/zzs;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->_lazyLayoutScrollDeltaBetweenPasses:Lcom/google/android/gms/tasks/zzs;

    return-void
.end method


# virtual methods
.method public final applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V
    .locals 8

    if-nez p2, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    :cond_1
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    iget v2, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->consumedScroll:F

    iget-object v3, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v4, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    iget v5, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    iget-object v6, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    sub-float/2addr v1, v2

    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-eqz v6, :cond_2

    iget v2, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->index:I

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v0

    :goto_2
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean v2, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->canScrollForward:Z

    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    if-eqz p3, :cond_7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p3, v5

    cmpl-float p3, p3, v2

    if-ltz p3, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    if-nez v0, :cond_6

    const-string/jumbo p3, "scrollOffset should be non-negative"

    invoke-static {p3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_6
    iget-object p3, v7, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p3, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    goto/16 :goto_b

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_8

    iget-object p3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz p3, :cond_8

    iget-object p3, p3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    goto :goto_4

    :cond_8
    const/4 p3, 0x0

    :goto_4
    iput-object p3, v7, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    iget-boolean p3, v7, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->hadFirstNotEmptyLayout:Z

    if-nez p3, :cond_9

    iget p3, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->totalItemsCount:I

    if-lez p3, :cond_d

    :cond_9
    iput-boolean v0, v7, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->hadFirstNotEmptyLayout:Z

    int-to-float p3, v5

    cmpl-float p3, p3, v2

    if-ltz p3, :cond_a

    move p3, v0

    goto :goto_5

    :cond_a
    move p3, v1

    :goto_5
    if-nez p3, :cond_b

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scrollOffset should be non-negative ("

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_b
    if-eqz v6, :cond_c

    iget-object p3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz p3, :cond_c

    iget p3, p3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    goto :goto_6

    :cond_c
    move p3, v1

    :goto_6
    invoke-virtual {v7, p3, v5}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->update(II)V

    :cond_d
    iget-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    if-eqz p3, :cond_12

    iget-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchStrategy:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget-object v2, p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    iget v5, p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_12

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    iget-boolean v5, p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-eqz v5, :cond_f

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v3, v5, :cond_e

    iget v3, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    goto :goto_7

    :cond_e
    iget v3, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    :goto_7
    add-int/2addr v3, v0

    goto :goto_9

    :cond_f
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v3, v5, :cond_10

    iget v3, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    goto :goto_8

    :cond_10
    iget v3, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    :goto_8
    sub-int/2addr v3, v0

    :goto_9
    iget v0, p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    if-eq v0, v3, :cond_12

    iput v6, p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    iget-object p3, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v0, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :goto_a
    if-ge v1, v0, :cond_11

    aget-object v3, p3, v1

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_12
    :goto_b
    if-eqz p2, :cond_13

    iget p2, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->scrollBackAmount:F

    iget-object p3, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->_lazyLayoutScrollDeltaBetweenPasses:Lcom/google/android/gms/tasks/zzs;

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/android/gms/tasks/zzs;->updateScrollDeltaForApproach$foundation_release(FLandroidx/compose/ui/unit/Density;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_13
    return-void
.end method

.method public final dispatchRawDelta(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/Fsm;->dispatchRawDelta(F)F

    move-result p0

    return p0
.end method

.method public final getCanScrollBackward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getCanScrollForward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    return-object p0
.end method

.method public final isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method public final notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchStrategy:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget-object v4, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    iget-object v5, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    iget-object v6, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v7, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    const/4 v9, 0x1

    if-gez v5, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v6, v11, :cond_1

    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    goto :goto_1

    :cond_1
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    :goto_1
    add-int/2addr v10, v9

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v11, v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    add-int/2addr v11, v9

    goto :goto_3

    :cond_2
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v6, v11, :cond_3

    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->row:I

    goto :goto_2

    :cond_3
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->column:I

    :goto_2
    add-int/lit8 v10, v10, -0x1

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v11, v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    sub-int/2addr v11, v9

    :goto_3
    if-ltz v11, :cond_b

    iget v9, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->totalItemsCount:I

    if-ge v11, v9, :cond_b

    iget v9, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    if-eq v10, v9, :cond_8

    if-ltz v10, :cond_8

    iget-boolean v9, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-eq v9, v5, :cond_4

    iget-object v9, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v11, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_4

    aget-object v13, v9, v12

    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    iput-boolean v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    iput v10, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchScope:Lcom/google/android/gms/tasks/zzad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v11

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v12

    :try_start_0
    iget-boolean v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    if-eqz v13, :cond_6

    iget-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_6
    iget-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    :goto_6
    if-eqz v13, :cond_7

    iget-object v13, v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->prefetchInfoRetriever:Lkotlin/jvm/internal/Lambda;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v13, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_7

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/Pair;

    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-object/from16 p0, v0

    iget-object v0, v15, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v15, v15, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/ui/unit/Constraints;

    move/from16 v16, v13

    move/from16 v17, v14

    iget-wide v13, v15, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-virtual {v8, v0, v13, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v14, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v13, v16

    goto :goto_7

    :cond_7
    invoke-static {v9, v12, v11}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget v0, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    invoke-virtual {v4, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->addAll(Ljava/util/List;I)V

    goto :goto_9

    :goto_8
    invoke-static {v9, v12, v11}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_8
    :goto_9
    if-eqz v5, :cond_a

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v6, v3, :cond_9

    iget-wide v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    :goto_a
    long-to-int v3, v7

    goto :goto_b

    :cond_9
    iget-wide v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    const/16 v3, 0x20

    shr-long/2addr v7, v3

    goto :goto_a

    :goto_b
    iget v5, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->mainAxisItemSpacing:I

    invoke-static {v0, v6}, Lcom/google/android/gms/common/wrappers/InstantApps;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v5

    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportEndOffset:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iget-object v0, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v1, :cond_b

    aget-object v2, v0, v8

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_a
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportStartOffset:I

    invoke-static {v0, v6}, Lcom/google/android/gms/common/wrappers/InstantApps;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iget-object v0, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v1, :cond_b

    aget-object v2, v0, v8

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_b
    return-void
.end method

.method public final scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    iget-object p0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    move-object p3, p2

    check-cast p3, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    iget-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    const/4 p3, 0x0

    iput-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/Fsm;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
