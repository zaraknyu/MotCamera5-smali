.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/ComposeNodeLifecycleCallback;


# instance fields
.field public final approachComposedSlotIds:Landroidx/compose/runtime/collection/MutableVector;

.field public final approachMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;

.field public final approachPrecomposeSlotHandleMap:Landroidx/collection/MutableScatterMap;

.field public compositionContext:Landroidx/compose/runtime/CompositionContext;

.field public currentApproachIndex:I

.field public currentIndex:I

.field public final nodeToNodeState:Landroidx/collection/MutableScatterMap;

.field public final precomposeMap:Landroidx/collection/MutableScatterMap;

.field public precomposedCount:I

.field public reusableCount:I

.field public final reusableSlotIdsSet:Landroidx/collection/Values;

.field public final root:Landroidx/compose/ui/node/LayoutNode;

.field public final scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

.field public final slotIdToNode:Landroidx/collection/MutableScatterMap;

.field public slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    sget-object p1, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->approachMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;

    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/collection/Values;

    invoke-direct {p1}, Landroidx/collection/Values;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/collection/Values;

    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->approachPrecomposeSlotHandleMap:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 p2, 0x10

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->approachComposedSlotIds:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method public static subcomposeInto(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/ui/node/LayoutNode;ZLandroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Landroidx/compose/runtime/CompositionImpl;
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->disposed:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object p0, Landroidx/compose/ui/platform/Wrapper_androidKt;->DefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    new-instance p0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {p0, p1}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    new-instance p1, Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {p1, p3, p0}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/core/view/MenuHostHelper;)V

    move-object p0, p1

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p4}, Landroidx/compose/runtime/CompositionImpl;->composeInitial(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-object p0

    :cond_2
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    const/16 p2, 0x64

    iput p2, p1, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/4 p3, 0x1

    iput-boolean p3, p1, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    invoke-virtual {p0, p4}, Landroidx/compose/runtime/CompositionImpl;->composeInitial(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    iget-boolean p3, p1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-nez p3, :cond_3

    iget p3, p1, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ne p3, p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "Cannot disable reuse from root if it was caused by other groups"

    invoke-static {p2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    const/4 p2, -0x1

    iput p2, p1, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    return-object p0
.end method


# virtual methods
.method public final disposeOrReuseStartingFromIndex(I)V
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-gt p1, v3, :cond_7

    iget-object v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/collection/Values;

    invoke-virtual {v5}, Landroidx/collection/Values;->clear()V

    if-gt p1, v3, :cond_0

    move v5, p1

    :goto_0
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v7, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iget-object v6, v6, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->slotId:Ljava/lang/Object;

    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/collection/Values;

    iget-object v7, v7, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast v7, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v7, v6}, Landroidx/collection/MutableOrderedScatterSet;->add(Ljava/lang/Object;)Z

    if-eq v5, v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    iget-object v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/collection/Values;

    invoke-interface {v2, v5}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->getSlotsToRetain(Landroidx/collection/Values;)V

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6

    move v7, v0

    :goto_2
    if-lt v3, p1, :cond_6

    :try_start_0
    move-object v8, v1

    check-cast v8, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    iget-object v9, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v9, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iget-object v10, v9, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->slotId:Ljava/lang/Object;

    iget-object v11, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/collection/Values;

    iget-object v11, v11, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    check-cast v11, Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v11, v10}, Landroidx/collection/MutableOrderedScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget v11, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    add-int/2addr v11, v4

    iput v11, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget-object v11, v9, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v7, v8, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v8, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    sget-object v11, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v11, v8, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v7, :cond_2

    iput-object v11, v7, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :cond_2
    iget-object v7, v9, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    move v7, v4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    iget-object v11, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    iput-boolean v4, v11, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    iget-object v12, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v12, v8}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v9, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->composition:Landroidx/compose/runtime/CompositionImpl;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/compose/runtime/CompositionImpl;->dispose()V

    :cond_4
    iget-object v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v8, v3, v4}, Landroidx/compose/ui/node/LayoutNode;->removeAt$ui_release(II)V

    iput-boolean v0, v11, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    :cond_5
    :goto_3
    iget-object v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v10}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :goto_4
    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0

    :cond_6
    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    goto :goto_5

    :cond_7
    move v7, v0

    :goto_5
    if-eqz v7, :cond_9

    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    iget-object v1, v1, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v4, :cond_8

    move v0, v4

    :cond_8
    monitor-exit p1

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot()V

    goto :goto_6

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_9
    :goto_6
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    return-void
.end method

.method public final makeSureStateIsConsistent()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    iget v2, v1, Landroidx/collection/MutableScatterMap;->_size:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency between the count of nodes tracked by the state ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroidx/collection/MutableScatterMap;->_size:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") and the children count on the SubcomposeLayout ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    sub-int v1, v0, v1

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Incorrect state. Total children "

    const-string v2, ". Reusable children "

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Precomposed children "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Landroidx/collection/MutableScatterMap;

    iget v1, v0, Landroidx/collection/MutableScatterMap;->_size:I

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect state. Precomposed children "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Map size "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroidx/collection/MutableScatterMap;->_size:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    return-void
.end method

.method public final markActiveNodesAsReused(Z)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v2, v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    if-eq v3, v2, :cond_6

    iput v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    :goto_1
    if-ge v0, v2, :cond_5

    :try_start_0
    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v7, v6}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    if-eqz v7, :cond_4

    iget-object v8, v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v8, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    sget-object v9, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v9, v8, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v6, :cond_1

    iput-object v9, v6, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :cond_1
    if-eqz p1, :cond_3

    iget-object v6, v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->composition:Landroidx/compose/runtime/CompositionImpl;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/compose/runtime/CompositionImpl;->deactivate()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_2
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v6

    iput-object v6, v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    goto :goto_3

    :cond_3
    iget-object v6, v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_3
    sget-object v6, Landroidx/compose/ui/layout/ScaleFactorKt;->ReusedSlotId:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    iput-object v6, v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->slotId:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_4
    invoke-static {v3, v5, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0

    :cond_5
    invoke-static {v3, v5, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p1}, Landroidx/collection/MutableScatterMap;->clear()V

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->markActiveNodesAsReused(Z)V

    return-void
.end method

.method public final onRelease()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    iput-boolean v1, v2, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    iget-object v3, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object v4, v1, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x0

    if-ltz v5, :cond_3

    move v7, v6

    :goto_0
    aget-wide v8, v4, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v6

    :goto_1
    if-ge v12, v10, :cond_1

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v3, v13

    check-cast v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iget-object v13, v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->composition:Landroidx/compose/runtime/CompositionImpl;

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroidx/compose/runtime/CompositionImpl;->dispose()V

    :cond_0
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v11, :cond_3

    :cond_2
    if-eq v7, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->removeAll$ui_release()V

    iput-boolean v6, v2, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    iput v6, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    iput v6, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->clear()V

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    return-void
.end method

.method public final onReuse()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->markActiveNodesAsReused(Z)V

    return-void
.end method

.method public final precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->approachPrecomposeSlotHandleMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v5, v5, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/collection/MutableVector;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v6, v6, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v6, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iput-boolean v4, v0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    invoke-virtual {v0, v5, v6, v4}, Landroidx/compose/ui/node/LayoutNode;->move$ui_release(III)V

    iput-boolean v3, v0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v2, v2, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    new-instance v5, Landroidx/compose/ui/node/LayoutNode;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroidx/compose/ui/node/LayoutNode;-><init>(I)V

    iput-boolean v4, v0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    invoke-virtual {v0, v2, v5}, Landroidx/compose/ui/node/LayoutNode;->insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V

    iput-boolean v3, v0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    move-object v2, v5

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0, v2, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_3
    new-instance p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$2;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    sget-object v3, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->slotId:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->content:Lkotlin/jvm/functions/Function2;

    iput-object v2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->composition:Landroidx/compose/runtime/CompositionImpl;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p2

    iput-object p2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p1, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iget-object p2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->composition:Landroidx/compose/runtime/CompositionImpl;

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget-object v4, p2, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object p2, p2, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    iget p2, p2, Landroidx/collection/MutableScatterMap;->_size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_2
    move p2, v3

    :goto_1
    iget-object v4, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->content:Lkotlin/jvm/functions/Function2;

    if-ne v4, p3, :cond_4

    if-nez p2, :cond_4

    iget-boolean p2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceRecompose:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    iput-object p3, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->content:Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    :cond_5
    invoke-static {p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p3

    :try_start_1
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    iput-boolean v3, v4, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    iget-object v5, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->content:Lkotlin/jvm/functions/Function2;

    iget-object v6, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->composition:Landroidx/compose/runtime/CompositionImpl;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    if-eqz p0, :cond_6

    iget-boolean v7, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceReuse:Z

    new-instance v8, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/16 v9, 0xb

    invoke-direct {v8, v9, v1, v5}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, -0x68551fe9

    invoke-direct {v5, v8, v3, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {v6, p1, v7, p0, v5}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcomposeInto(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/ui/node/LayoutNode;ZLandroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Landroidx/compose/runtime/CompositionImpl;

    move-result-object p0

    iput-object p0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->composition:Landroidx/compose/runtime/CompositionImpl;

    iput-boolean v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceReuse:Z

    iput-boolean v0, v4, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p2, p3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iput-boolean v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceRecompose:Z

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_6
    :try_start_2
    const-string/jumbo p0, "parent composition reference not set"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    invoke-static {p2, p3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0
.end method

.method public final takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;
    .locals 11

    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v2, v1, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    sub-int v3, v2, v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    move v5, v2

    :goto_0
    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    const/4 v7, -0x1

    if-lt v5, v3, :cond_2

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v6, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iget-object v8, v8, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->slotId:Ljava/lang/Object;

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    move v8, v7

    :goto_1
    if-ne v8, v7, :cond_6

    :goto_2
    if-lt v2, v3, :cond_5

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v6, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iget-object v9, v5, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->slotId:Ljava/lang/Object;

    sget-object v10, Landroidx/compose/ui/layout/ScaleFactorKt;->ReusedSlotId:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    if-eq v9, v10, :cond_4

    iget-object v10, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    invoke-interface {v10, p1, v9}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->areCompatible(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    iput-object p1, v5, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->slotId:Ljava/lang/Object;

    move v5, v2

    move v8, v5

    goto :goto_4

    :cond_5
    move v5, v2

    :cond_6
    :goto_4
    if-ne v8, v7, :cond_7

    :goto_5
    const/4 p0, 0x0

    return-object p0

    :cond_7
    if-eq v5, v3, :cond_8

    iput-boolean v4, v0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    invoke-virtual {v0, v5, v3, v4}, Landroidx/compose/ui/node/LayoutNode;->move$ui_release(III)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    :cond_8
    iget p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    add-int/2addr p1, v7

    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v6, p0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->activeState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-boolean v4, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceReuse:Z

    iput-boolean v4, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceRecompose:Z

    return-object p0
.end method
