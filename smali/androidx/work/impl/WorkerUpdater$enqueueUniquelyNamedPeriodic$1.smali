.class public final Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $name:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

.field public final synthetic $workRequest:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    const/4 p4, 0x5

    iput p4, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Landroidx/work/impl/constraints/SharedNetworkCallback;->requestsLock:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    iget-object v3, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    check-cast v3, Landroid/net/ConnectivityManager;

    iget-object v0, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/SharedNetworkCallback;

    monitor-enter v1

    :try_start_0
    sget-object v4, Landroidx/work/impl/constraints/SharedNetworkCallback;->requests:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    const-string v5, "NetworkRequestConstraintController unregister shared callback"

    invoke-virtual {v2, v4, v5}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_1
    monitor-exit v1

    throw v0

    :pswitch_0
    iget-object v1, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/platform/AbstractComposeView;

    iget-object v2, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;

    const-string v2, "listener"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/customview/poolingcontainer/PoolingContainer;->getPoolingContainerListenerHolder(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    move-result-object v1

    iget-object v1, v1, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v3, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v0, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/SlotReader;

    iget-object v4, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    :try_start_1
    iput-object v3, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v3, v1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v5, v1, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iget-object v6, v1, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    const/4 v7, 0x0

    iput-object v7, v1, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v7, v1, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iput-object v0, v1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-boolean v7, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    const/4 v0, 0x0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    iput-boolean v7, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_5
    iput-object v3, v1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iput-object v5, v1, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v6, v1, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    iput-object v4, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    throw v0

    :pswitch_2
    iget-object v1, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    iget-object v2, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v0, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    invoke-static {v1, v2, v0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->access$bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/gestures/ContentInViewNode;

    iget-wide v2, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Expected BringIntoViewRequester to not be used before parents are placed."

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    iget-wide v2, v1, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-virtual {v1, v0, v2, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-BMxPBkI(Landroidx/compose/ui/geometry/Rect;J)J

    move-result-wide v1

    const-wide v3, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :pswitch_3
    new-instance v1, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    iget-object v2, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function4;

    iget-object v3, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;I)V

    return-object v1

    :pswitch_4
    iget-object v1, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v1}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    new-instance v2, Lcom/google/common/base/Splitter;

    iget-object v3, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v4, v3, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object v4, v4, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/ranges/IntRange;

    invoke-direct {v2, v4, v1}, Lcom/google/common/base/Splitter;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    new-instance v4, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object v0, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    invoke-direct {v4, v3, v1, v0, v2}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Lcom/google/common/base/Splitter;)V

    return-object v4

    :pswitch_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v2, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/ContentInViewNode;

    iget-object v3, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Lcom/google/android/gms/tasks/zzad;

    :goto_3
    iget-object v4, v3, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    iget v5, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    if-eqz v5, :cond_4

    add-int/lit8 v5, v5, -0x1

    iget-object v4, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v4, v4, v5

    check-cast v4, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v4, v4, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->currentBounds:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    invoke-virtual {v4}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    if-nez v4, :cond_3

    move v4, v6

    goto :goto_4

    :cond_3
    iget-wide v7, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-virtual {v2, v4, v7, v8}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    iget v5, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v4, v4, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v4, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const-string v0, "MutableVector is empty."

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-boolean v3, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedChildBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-wide v7, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    invoke-virtual {v2, v3, v7, v8}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v3

    if-ne v3, v6, :cond_6

    goto :goto_5

    :cond_6
    move v6, v4

    :goto_5
    if-eqz v6, :cond_7

    iput-boolean v4, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    :cond_7
    iget-object v3, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iget-object v0, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-static {v2, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->access$calculateScrollDelta(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)F

    move-result v0

    iput v0, v3, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    return-object v1

    :pswitch_6
    iget-object v1, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$workRequest:Ljava/lang/Object;

    check-cast v1, Landroidx/work/WorkRequest;

    iget-object v2, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$this_enqueueUniquelyNamedPeriodic:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroidx/work/impl/WorkManagerImpl;

    iget-object v0, v0, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$1;->$name:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v4, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x1

    if-gt v3, v6, :cond_13

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/model/WorkSpec$IdAndState;

    if-nez v2, :cond_8

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v3, Landroidx/work/impl/WorkContinuationImpl;

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-static {v3}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueue(Landroidx/work/impl/WorkContinuationImpl;)V

    goto/16 :goto_7

    :cond_8
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v2, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    sget-object v7, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v6, v7, :cond_9

    invoke-virtual {v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v3, Landroidx/work/impl/WorkContinuationImpl;

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-static {v3}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueue(Landroidx/work/impl/WorkContinuationImpl;)V

    goto/16 :goto_7

    :cond_9
    iget-object v5, v1, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v6, v2, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    const/16 v17, 0x0

    const v18, 0xfffffe

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-static/range {v5 .. v18}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJIIJII)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    iget-object v2, v4, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    const-string/jumbo v3, "processor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v4, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    const-string/jumbo v5, "workDatabase"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v4, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    const-string v6, "configuration"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    const-string/jumbo v6, "schedulers"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    const-string v6, "OneTime"

    const-string v7, "Periodic"

    iget-object v8, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v9

    if-eqz v9, :cond_10

    iget-object v10, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v10}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v9}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v10

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v11

    xor-int/2addr v10, v11

    if-nez v10, :cond_d

    invoke-virtual {v2, v8}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/work/impl/Scheduler;

    invoke-interface {v6, v8}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    new-instance v19, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;

    move-object/from16 v22, v0

    move-object/from16 v25, v1

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v8

    move-object/from16 v21, v9

    invoke-direct/range {v19 .. v26}, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    move-object/from16 v2, v19

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    new-instance v3, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    if-nez v26, :cond_c

    invoke-static {v5, v0, v1}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_c
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_d
    move-object/from16 v22, v0

    move-object/from16 v21, v9

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v2, v7

    goto :goto_8

    :cond_e
    move-object v2, v6

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Worker to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v6, v7

    :cond_f
    const-string v2, " Worker. Update operation must preserve worker\'s type."

    invoke-static {v1, v6, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v0, v8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Worker with "

    const-string v3, " doesn\'t exist"

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WorkSpec with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", that matches a name \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", wasn\'t found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t apply UPDATE policy to the chains of work."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
