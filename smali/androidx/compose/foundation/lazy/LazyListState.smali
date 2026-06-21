.class public final Landroidx/compose/foundation/lazy/LazyListState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# static fields
.field public static final Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;


# instance fields
.field public final _lazyLayoutScrollDeltaBetweenPasses:Lcom/google/android/gms/tasks/zzs;

.field public approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

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

.field public final prefetchScope:Lcom/google/android/gms/tasks/zza;

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

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchStrategy:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;-><init>(III)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    sget-object p2, Landroidx/compose/foundation/lazy/LazyListStateKt;->EmptyLazyListMeasureResult:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    sget-object v0, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {v1, p2, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {p2}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    new-instance p2, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v0, 0xc

    invoke-direct {p2, v0, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/fsm/Fsm;

    invoke-direct {v0, p2}, Lcom/motorola/camera/fsm/Fsm;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    new-instance p2, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;I)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    new-instance p2, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-direct {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    new-instance p2, Landroidx/room/ObservedTableVersions;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroidx/room/ObservedTableVersions;-><init>(IB)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    invoke-direct {p2, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    new-instance p1, Lcom/google/android/gms/tasks/zza;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchScope:Lcom/google/android/gms/tasks/zza;

    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    new-instance p1, Lcom/google/android/gms/tasks/zzs;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->_lazyLayoutScrollDeltaBetweenPasses:Lcom/google/android/gms/tasks/zzs;

    return-void
.end method


# virtual methods
.method public final applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V
    .locals 9

    if-nez p2, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    :cond_1
    iget-object v1, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-object v2, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    iget v3, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget v5, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-nez v5, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v0

    :goto_2
    iget-object v6, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean v5, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    iget-object v6, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    iget v6, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->consumedScroll:F

    sub-float/2addr v5, v6

    iput v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const-string/jumbo v5, "scrollOffset should be non-negative"

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    if-eqz p3, :cond_7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p3, v3

    cmpl-float p3, p3, v6

    if-ltz p3, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    if-nez v0, :cond_6

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_6
    iget-object p3, v7, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    if-eqz v1, :cond_8

    iget-object v8, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move-object v8, p3

    :goto_4
    iput-object v8, v7, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    iget-boolean v8, v7, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->hadFirstNotEmptyLayout:Z

    if-nez v8, :cond_9

    iget v8, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    if-lez v8, :cond_d

    :cond_9
    iput-boolean v0, v7, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->hadFirstNotEmptyLayout:Z

    int-to-float v8, v3

    cmpl-float v6, v8, v6

    if-ltz v6, :cond_a

    move v6, v0

    goto :goto_5

    :cond_a
    move v6, v4

    :goto_5
    if-nez v6, :cond_b

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_b
    if-eqz v1, :cond_c

    iget v4, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    :cond_c
    invoke-virtual {v7, v4, v3}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->update(II)V

    :cond_d
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchStrategy:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_10

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    iget-boolean v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-eqz v3, :cond_e

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int/2addr v2, v0

    goto :goto_6

    :cond_e
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    sub-int/2addr v2, v0

    :goto_6
    iget v0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    if-eq v0, v2, :cond_10

    iput v4, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    :cond_f
    iput-object p3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    :cond_10
    :goto_7
    if-eqz p2, :cond_11

    iget p2, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->scrollBackAmount:F

    iget-object p3, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->_lazyLayoutScrollDeltaBetweenPasses:Lcom/google/android/gms/tasks/zzs;

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/android/gms/tasks/zzs;->updateScrollDeltaForApproach$foundation_release(FLandroidx/compose/ui/unit/Density;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_11
    return-void
.end method

.method public final dispatchRawDelta(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/Fsm;->dispatchRawDelta(F)F

    move-result p0

    return p0
.end method

.method public final getCanScrollBackward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getCanScrollForward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    return-object p0
.end method

.method public final isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method public final notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 9

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    iget-object v1, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int/2addr v3, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_6

    iget v2, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    if-ge v3, v2, :cond_6

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchStrategy:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget v4, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    if-eq v3, v4, :cond_4

    iget-boolean v4, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    if-eq v4, v0, :cond_2

    iget-object v4, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    :cond_2
    iput-boolean v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzc:Z

    iput v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzb:I

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchScope:Lcom/google/android/gms/tasks/zza;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6

    :try_start_0
    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    iget-wide v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->childConstraints:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v6, v5}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-virtual {p0, v3, v7, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object p0

    iput-object p0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-static {v4, v6, v5}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    iget p0, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    neg-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_6

    iget-object p0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    return-void

    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget p2, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_6

    iget-object p0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    :cond_6
    return-void
.end method

.method public final scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

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
    iget-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    iget-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    move-object p3, p2

    check-cast p3, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput v4, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    const/4 p3, 0x0

    iput-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

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
