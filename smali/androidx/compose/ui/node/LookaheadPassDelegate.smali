.class public final Landroidx/compose/ui/node/LookaheadPassDelegate;
.super Landroidx/compose/ui/layout/Placeable;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/node/AlignmentLinesOwner;
.implements Landroidx/compose/ui/node/MotionReferencePlacementDelegate;


# instance fields
.field public final _childDelegates:Landroidx/compose/runtime/collection/MutableVector;

.field public _placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

.field public final alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

.field public childDelegatesDirty:Z

.field public lastExplicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public lastLayerBlock:Lkotlin/jvm/functions/Function1;

.field public lastPosition:J

.field public layingOutChildren:Z

.field public final layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

.field public lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

.field public measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public measuredOnce:Z

.field public onNodePlacedCalled:Z

.field public parentData:Ljava/lang/Object;

.field public parentDataDirty:Z

.field public placeOrder:I

.field public placedOnce:Z

.field public previousPlaceOrder:I

.field public relayoutWithoutParentInProgress:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->previousPlaceOrder:I

    iput v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lastPosition:J

    sget-object v0, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsNotPlaced:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    new-instance v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;-><init>(Landroidx/compose/ui/node/AlignmentLinesOwner;I)V

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->_childDelegates:Landroidx/compose/runtime/collection/MutableVector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->childDelegatesDirty:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->parentDataDirty:Z

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object p1, p1, Landroidx/compose/ui/node/MeasurePassDelegate;->parentData:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->parentData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final forEachChildAlignmentLinesOwner(Landroidx/compose/runtime/Recomposer$effectJob$1$1;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    return-object p0
.end method

.method public final getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    return-object p0
.end method

.method public final getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParentData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->parentData:Ljava/lang/Object;

    return-object p0
.end method

.method public final isPlaced()Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    sget-object v0, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsNotPlaced:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final layoutChildren()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layingOutChildren:Z

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->recalculateQueryOwner()V

    iget-object v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    iget-object v5, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_2

    aget-object v7, v5, v6

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    iget-object v8, v7, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v9, v8, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParentInLookahead$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v7, v9, :cond_1

    iget-object v7, v8, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v8, :cond_0

    iget-object v8, v8, Landroidx/compose/ui/node/LookaheadPassDelegate;->lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v8, v8, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/node/LookaheadPassDelegate;->remeasure-BRTryo0(J)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x7

    invoke-static {v3, v4, v7}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v5, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPendingForAlignment:Z

    if-nez v5, :cond_3

    iget-boolean v5, v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-nez v5, :cond_6

    iget-boolean v5, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    if-eqz v5, :cond_6

    :cond_3
    iput-boolean v4, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    iget-object v5, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v6, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object v6, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-static {v3}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v6

    invoke-virtual {v1, v4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setLookaheadCoordinatesAccessedDuringPlacement(Z)V

    check-cast v6, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v6

    new-instance v7, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/16 v8, 0xf

    invoke-direct {v7, v8, p0, v2}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v3, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v8, :cond_4

    iget-object v8, v6, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLookahead:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {v6, v3, v8, v7}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_4
    iget-object v8, v6, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayout:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {v6, v3, v8, v7}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :goto_2
    iput-object v5, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iget-boolean v3, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadCoordinatesAccessedDuringPlacement:Z

    if-eqz v3, :cond_5

    iget-boolean v2, v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->requestLayout()V

    :cond_5
    iput-boolean v4, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPendingForAlignment:Z

    :cond_6
    iget-boolean v1, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getRequired$ui_release()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->recalculate()V

    :cond_7
    iput-boolean v4, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layingOutChildren:Z

    return-void
.end method

.method public final markNodeAndSubtreeAsNotPlaced$ui_release(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz p1, :cond_0

    iget-boolean v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPlacement:Z

    if-nez v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPlacement:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsNotPlaced:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    iput-object p1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p1, v0

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/LookaheadPassDelegate;->markNodeAndSubtreeAsNotPlaced$ui_release(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final markNodeAndSubtreeAsPlaced()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    iget-object v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPlacement:Z

    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsPlacedInApproach:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    iput-object v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsPlacedInLookahead:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    iput-object v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    :goto_0
    sget-object p0, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsPlacedInLookahead:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    if-eq v0, p0, :cond_1

    iget-boolean p0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    const/4 v0, 0x1

    invoke-static {v3, v0, p0}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_4

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v3, :cond_3

    iget v4, v3, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_2

    invoke-virtual {v3}, Landroidx/compose/ui/node/LookaheadPassDelegate;->markNodeAndSubtreeAsPlaced()V

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNode;->rescheduleRemeasureOrRelayout$ui_release(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: Child node\'s lookahead pass delegate cannot be null when in a lookahead scope."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public final measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadMeasuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v1, v3, :cond_2

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    :cond_1
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v2, v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPass:Z

    :cond_3
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v3, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v3, v4, :cond_5

    iget-boolean v1, v1, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object v1, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Measurable could be only measured from the parent\'s measure or layout block. Parents state is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    goto :goto_3

    :cond_8
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :goto_3
    iput-object v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    goto :goto_4

    :cond_9
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :goto_4
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage$ui_release()V

    :cond_a
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LookaheadPassDelegate;->remeasure-BRTryo0(J)Z

    return-object p0
.end method

.method public final notifyChildrenUsingLookaheadCoordinatesWhilePlacing()V
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->childrenAccessingLookaheadCoordinatesDuringPlacement:I

    if-lez v0, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_3

    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v5, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadCoordinatesAccessedDuringPlacement:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadCoordinatesAccessedDuringModifierPlacement:Z

    if-eqz v5, :cond_1

    :cond_0
    iget-boolean v5, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    if-nez v5, :cond_1

    invoke-virtual {v3, v1}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui_release(Z)V

    :cond_1
    iget-object v3, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/compose/ui/node/LookaheadPassDelegate;->notifyChildrenUsingLookaheadCoordinatesWhilePlacing()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onNodePlaced$ui_release()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->onNodePlacedCalled:Z

    iget-object v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    sget-object v4, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsPlacedInLookahead:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    iget-boolean v4, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPlacement:Z

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsPlacedInApproach:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    if-eq v3, v4, :cond_2

    iget-boolean v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPlacement:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->markNodeAndSubtreeAsPlaced()V

    iget-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->relayoutWithoutParentInProgress:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui_release(Z)V

    :cond_2
    if-eqz v2, :cond_5

    iget-object v1, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->relayoutWithoutParentInProgress:Z

    if-nez v2, :cond_6

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v3, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v2, v3, :cond_3

    sget-object v3, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v2, v3, :cond_6

    :cond_3
    iget v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "Place was called on a node which was placed already"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    iget v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->nextChildLookaheadPlaceOrder:I

    iput v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    add-int/2addr v2, v0

    iput v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->nextChildLookaheadPlaceOrder:I

    goto :goto_1

    :cond_5
    iput v5, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutChildren()V

    return-void
.end method

.method public final placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeSelf-MLgxB_4$1(JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeSelf-MLgxB_4$1(JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final placeSelf-MLgxB_4$1(JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    iput-boolean v4, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPlacement:Z

    :cond_1
    iget-boolean v1, v2, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "place is called on a deactivated node"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_2
    iput-object v3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->placedOnce:Z

    iput-boolean v4, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->onNodePlacedCalled:Z

    iget-wide v5, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lastPosition:J

    invoke-static {p1, p2, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadCoordinatesAccessedDuringModifierPlacement:Z

    if-nez v3, :cond_3

    iget-boolean v3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadCoordinatesAccessedDuringPlacement:Z

    if-eqz v3, :cond_4

    :cond_3
    iput-boolean v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->notifyChildrenUsingLookaheadCoordinatesWhilePlacing()V

    :cond_5
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    iget-boolean v3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->isPlaced()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v2, v1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p1, p2, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/node/LookaheadDelegate;->placeSelf--gyyYBs(J)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->onNodePlaced$ui_release()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setLookaheadCoordinatesAccessedDuringModifierPlacement(Z)V

    iget-object v3, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    iput-boolean v4, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierLayout:Z

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/node/LookaheadPassDelegate$placeSelf$2;

    invoke-direct {v4, p0, v1, p1, p2}, Landroidx/compose/ui/node/LookaheadPassDelegate$placeSelf$2;-><init>(Landroidx/compose/ui/node/LookaheadPassDelegate;Landroidx/compose/ui/node/Owner;J)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v1, :cond_7

    iget-object v1, v3, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayoutModifierInLookahead:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {v3, v2, v1, v4}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_7
    iget-object v1, v3, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayoutModifier:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {v3, v2, v1, v4}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :goto_1
    iput-wide p1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lastPosition:J

    iput-object p3, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lastLayerBlock:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lastExplicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    sget-object p0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object p0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    return-void
.end method

.method public final remeasure-BRTryo0(J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v5, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-boolean v4, v4, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz v4, :cond_0

    const-string v4, "measure is called on a deactivated node"

    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    iget-boolean v6, v5, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_2

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v7

    :goto_1
    iput-boolean v4, v5, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    iget-object v4, v5, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v4, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-nez v4, :cond_6

    iget-object v4, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

    if-nez v4, :cond_3

    move v4, v8

    goto :goto_2

    :cond_3
    iget-wide v9, v4, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v4

    :goto_2
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v5, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_5

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, v5, v7}, Landroidx/compose/ui/platform/AndroidComposeView;->forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;Z)V

    :cond_5
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->resetSubtreeIntrinsicsUsage$ui_release()V

    return v8

    :cond_6
    :goto_3
    new-instance v4, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v4, v1, v2}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    iput-object v4, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->lookaheadConstraints:Landroidx/compose/ui/unit/Constraints;

    invoke-virtual/range {p0 .. p2}, Landroidx/compose/ui/layout/Placeable;->setMeasurementConstraints-BRTryo0(J)V

    iget-object v4, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    iput-boolean v8, v4, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierMeasurement:Z

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v4

    iget-object v5, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v4, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v6, v8

    :goto_4
    if-ge v6, v4, :cond_7

    aget-object v9, v5, v6

    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    iget-object v9, v9, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v9, v9, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v9, v9, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    iget-boolean v4, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredOnce:Z

    const-wide v5, 0xffffffffL

    const/16 v9, 0x20

    if-eqz v4, :cond_8

    iget-wide v10, v0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    goto :goto_5

    :cond_8
    const/high16 v4, -0x80000000

    int-to-long v10, v4

    shl-long v12, v10, v9

    and-long/2addr v10, v5

    or-long/2addr v10, v12

    :goto_5
    iput-boolean v7, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredOnce:Z

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v4

    if-eqz v4, :cond_9

    move v12, v7

    goto :goto_6

    :cond_9
    move v12, v8

    :goto_6
    if-nez v12, :cond_a

    const-string v12, "Lookahead result from lookaheadRemeasure cannot be null"

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_a
    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v3, :cond_d

    sget-object v12, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadMeasuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iget-object v13, v3, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iput-object v12, v13, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iget-object v12, v13, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v14, v13, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iput-boolean v8, v13, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    invoke-static {v14}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v15}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v15

    move-wide/from16 v16, v5

    new-instance v5, Landroidx/compose/ui/node/LookaheadPassDelegate$performMeasure$1;

    invoke-direct {v5, v3, v1, v2}, Landroidx/compose/ui/node/LookaheadPassDelegate$performMeasure$1;-><init>(Landroidx/compose/ui/node/LookaheadPassDelegate;J)V

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v14, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v1, :cond_b

    iget-object v1, v15, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLookaheadMeasure:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {v15, v14, v1, v5}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_b
    iget-object v1, v15, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingMeasure:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {v15, v14, v1, v5}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :goto_7
    iput-boolean v7, v13, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPending:Z

    iput-boolean v7, v13, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadLayoutPendingForAlignment:Z

    invoke-static {v14}, Landroidx/compose/ui/node/HitTestResultKt;->isOutMostLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v7, v12, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    iput-boolean v7, v12, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPendingForAlignment:Z

    goto :goto_8

    :cond_c
    iput-boolean v7, v12, Landroidx/compose/ui/node/MeasurePassDelegate;->measurePending:Z

    :goto_8
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object v1, v13, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    goto :goto_9

    :cond_d
    move-wide/from16 v16, v5

    :goto_9
    iget v1, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v2, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v5, v1

    shl-long/2addr v5, v9

    int-to-long v1, v2

    and-long v1, v1, v16

    or-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/layout/Placeable;->setMeasuredSize-ozmzZPI(J)V

    shr-long v0, v10, v9

    long-to-int v0, v0

    iget v1, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    if-ne v0, v1, :cond_f

    and-long v0, v10, v16

    long-to-int v0, v0

    iget v1, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    if-eq v0, v1, :cond_e

    goto :goto_a

    :cond_e
    return v8

    :cond_f
    :goto_a
    return v7
.end method

.method public final requestLayout()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui_release(Z)V

    return-void
.end method

.method public final requestMeasure()V
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return-void
.end method

.method public final updatePlacedUnderMotionFrameOfReference(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUnderMotionFrameOfReference:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUnderMotionFrameOfReference:Z

    :cond_2
    :goto_1
    return-void
.end method
