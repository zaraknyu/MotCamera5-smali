.class public final Landroidx/compose/ui/node/MeasurePassDelegate;
.super Landroidx/compose/ui/layout/Placeable;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/node/AlignmentLinesOwner;
.implements Landroidx/compose/ui/node/MotionReferencePlacementDelegate;


# instance fields
.field public final _childDelegates:Landroidx/compose/runtime/collection/MutableVector;

.field public final alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

.field public childDelegatesDirty:Z

.field public isPlaced:Z

.field public isPlacedByParent:Z

.field public lastExplicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public lastLayerBlock:Lkotlin/jvm/functions/Function1;

.field public lastPosition:J

.field public lastZIndex:F

.field public layingOutChildren:Z

.field public final layoutChildrenBlock:Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

.field public final layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

.field public layoutPending:Z

.field public layoutPendingForAlignment:Z

.field public measurePending:Z

.field public measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public measuredOnce:Z

.field public needsCoordinatesUpdate:Z

.field public onNodePlacedCalled:Z

.field public parentData:Ljava/lang/Object;

.field public parentDataDirty:Z

.field public final performMeasureBlock:Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

.field public performMeasureConstraints:J

.field public placeOrder:I

.field public final placeOuterCoordinatorBlock:Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

.field public placeOuterCoordinatorLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public placeOuterCoordinatorLayerBlock:Lkotlin/jvm/functions/Function1;

.field public placeOuterCoordinatorPosition:J

.field public placeOuterCoordinatorZIndex:F

.field public placedOnce:Z

.field public previousPlaceOrder:I

.field public relayoutWithoutParentInProgress:Z

.field public zIndex:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V
    .locals 4

    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->previousPlaceOrder:I

    iput p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOrder:I

    sget-object p1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->lastPosition:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->parentDataDirty:Z

    new-instance v2, Landroidx/compose/ui/node/LookaheadAlignmentLines;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/compose/ui/node/LookaheadAlignmentLines;-><init>(Landroidx/compose/ui/node/AlignmentLinesOwner;I)V

    iput-object v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v3, 0x10

    new-array v3, v3, [Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->_childDelegates:Landroidx/compose/runtime/collection/MutableVector;

    iput-boolean p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->childDelegatesDirty:Z

    const/4 p1, 0x0

    const/16 v2, 0xf

    invoke-static {p1, p1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->performMeasureConstraints:J

    new-instance p1, Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;-><init>(Landroidx/compose/ui/node/MeasurePassDelegate;I)V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->performMeasureBlock:Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

    new-instance p1, Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;-><init>(Landroidx/compose/ui/node/MeasurePassDelegate;I)V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutChildrenBlock:Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

    iput-wide v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOuterCoordinatorPosition:J

    new-instance p1, Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;-><init>(Landroidx/compose/ui/node/MeasurePassDelegate;I)V

    iput-object p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOuterCoordinatorBlock:Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

    return-void
.end method


# virtual methods
.method public final forEachChildAlignmentLinesOwner(Landroidx/compose/runtime/Recomposer$effectJob$1$1;)V
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

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

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    return-object p0
.end method

.method public final getChildDelegates$ui_release()Ljava/util/List;
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->updateChildrenIfDirty$ui_release()V

    iget-boolean v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->childDelegatesDirty:Z

    iget-object v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->_childDelegates:Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v6, v3, v5

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    iget v7, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-gt v7, v5, :cond_1

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v7, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v8, v7, v5

    aput-object v6, v7, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    iget v1, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    invoke-virtual {v2, v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeRange(II)V

    iput-boolean v4, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->childDelegatesDirty:Z

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    return-object p0
.end method

.method public final getMeasuredHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public final getMeasuredWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public final getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParentData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->parentData:Ljava/lang/Object;

    return-object p0
.end method

.method public final isPlaced()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    return p0
.end method

.method public final layoutChildren()V
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layingOutChildren:Z

    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->recalculateQueryOwner()V

    iget-boolean v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    iget-object v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_4

    aget-object v6, v4, v5

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v7

    iget-object v8, v6, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz v7, :cond_3

    iget-object v7, v8, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v9, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v10, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v9, v10, :cond_3

    iget-boolean v9, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredOnce:Z

    if-eqz v9, :cond_0

    iget-wide v9, v7, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    new-instance v7, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v7, v9, v10}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    iget-object v9, v6, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v10, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v9, v10, :cond_1

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage$ui_release()V

    :cond_1
    iget-object v6, v8, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-wide v7, v7, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/node/MeasurePassDelegate;->remeasure-BRTryo0(J)Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    if-eqz v6, :cond_3

    iget-object v6, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 v7, 0x7

    invoke-static {v6, v3, v7}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPendingForAlignment:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    if-eqz v1, :cond_7

    :cond_5
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    iget-object v1, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v4, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object v4, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {v2, v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setCoordinatesAccessedDuringPlacement(Z)V

    iget-object v4, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v4}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v5

    iget-object v6, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutChildrenBlock:Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

    iget-object v7, v5, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayout:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {v5, v4, v7, v6}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->coordinatesAccessedDuringPlacement:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->requestLayout()V

    :cond_6
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPendingForAlignment:Z

    :cond_7
    iget-boolean v1, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getRequired$ui_release()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->recalculate()V

    :cond_8
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layingOutChildren:Z

    return-void
.end method

.method public final markNodeAndSubtreeAsPlaced$1()V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-nez v0, :cond_1

    iget-object v0, v2, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onPlaced()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    const/4 v3, 0x6

    if-eqz v0, :cond_0

    invoke-static {p0, v1, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    if-eqz v0, :cond_1

    invoke-static {p0, v1, v3}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    :cond_1
    :goto_0
    iget-object v0, v2, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v1, v2, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    :goto_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    :cond_2
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_5

    aget-object v2, v0, v1

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui_release()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {v3}, Landroidx/compose/ui/node/MeasurePassDelegate;->markNodeAndSubtreeAsPlaced$1()V

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNode;->rescheduleRemeasureOrRelayout$ui_release(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final markSubtreeAsNotPlaced()V
    .locals 13

    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v2, v1, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    :goto_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v2, :cond_c

    const/high16 v3, 0x100000

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget v4, v4, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_9

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    if-nez v6, :cond_1

    goto :goto_6

    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_9

    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_9

    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_8

    move-object v7, v4

    move-object v8, v5

    :goto_3
    if-eqz v7, :cond_8

    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_7

    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_7

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v10, v0

    :goto_4
    const/4 v11, 0x1

    if-eqz v9, :cond_6

    iget v12, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v12, v3

    if-eqz v12, :cond_5

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v11, :cond_2

    move-object v7, v9

    goto :goto_5

    :cond_2
    if-nez v8, :cond_3

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v11, 0x10

    new-array v11, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v7, v5

    :cond_4
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_5
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_6
    if-ne v10, v11, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_3

    :cond_8
    if-eq v4, v6, :cond_9

    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_9
    :goto_6
    iget-object v3, v2, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v3, :cond_b

    iget-object v3, v2, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v3, :cond_a

    iput-object v5, v2, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :cond_a
    invoke-virtual {v2, v5, v0}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    iget-object v3, v2, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    :cond_b
    iget-object v2, v2, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    goto/16 :goto_0

    :cond_c
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :goto_7
    if-ge v0, p0, :cond_d

    aget-object v2, v1, v0

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {v2}, Landroidx/compose/ui/node/MeasurePassDelegate;->markSubtreeAsNotPlaced()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method public final measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v3, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage$ui_release()V

    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->isOutMostLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v3, v1, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v1, p1, p2}, Landroidx/compose/ui/node/LookaheadPassDelegate;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    :cond_1
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v2, v3, :cond_3

    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Measurable could be only measured from the parent\'s measure or layout block. Parents state is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :goto_1
    iput-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    goto :goto_2

    :cond_6
    iput-object v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasurePassDelegate;->remeasure-BRTryo0(J)Z

    return-object p0
.end method

.method public final notifyChildrenUsingCoordinatesWhilePlacing()V
    .locals 7

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->childrenAccessingCoordinatesDuringPlacement:I

    if-lez v0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v5, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->coordinatesAccessedDuringPlacement:Z

    iget-object v6, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    if-nez v5, :cond_0

    iget-boolean v4, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->coordinatesAccessedDuringModifierPlacement:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, v6, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    :cond_1
    invoke-virtual {v6}, Landroidx/compose/ui/node/MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onNodePlaced$ui_release()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->onNodePlacedCalled:Z

    iget-object v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v3

    iget v3, v3, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v5, v4, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/node/InnerNodeCoordinator;

    :goto_0
    if-eq v5, v4, :cond_0

    const-string v6, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget v6, v6, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    add-float/2addr v3, v6

    iget-object v5, v5, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_0
    iget v4, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    cmpg-float v4, v3, v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iput v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated$ui_release()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    :cond_3
    :goto_1
    iget-boolean v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    const/4 v4, 0x0

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->markNodeAndSubtreeAsPlaced$1()V

    iget-boolean v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->relayoutWithoutParentInProgress:Z

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v4}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    goto :goto_2

    :cond_5
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->onPlaced()V

    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    iget-object v1, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-boolean v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->relayoutWithoutParentInProgress:Z

    if-nez v2, :cond_9

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v3, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v2, v3, :cond_9

    iget v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOrder:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    const-string v2, "Place was called on a node which was placed already"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_3
    iget v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->nextChildPlaceOrder:I

    iput v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOrder:I

    add-int/2addr v2, v0

    iput v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->nextChildPlaceOrder:I

    goto :goto_4

    :cond_8
    iput v4, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOrder:I

    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutChildren()V

    return-void
.end method

.method public final placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->placeSelf-MLgxB_4$2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->placeSelf-MLgxB_4$2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final placeOuterCoordinator-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 13

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-boolean v2, v2, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "place is called on a deactivated node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object v2, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iget-boolean v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placedOnce:Z

    const/4 v8, 0x1

    xor-int/2addr v2, v8

    iput-wide p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->lastPosition:J

    iput v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->lastZIndex:F

    iput-object v4, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->lastLayerBlock:Lkotlin/jvm/functions/Function1;

    iput-object v5, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->lastExplicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iput-boolean v8, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placedOnce:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->onNodePlacedCalled:Z

    invoke-static {v7}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v10

    invoke-virtual {v10, v7, p1, p2, v2}, Landroidx/compose/ui/spatial/RectManager;->onLayoutPositionChanged-70tqf50(Landroidx/compose/ui/node/LayoutNode;JZ)V

    iget-boolean v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced:Z

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    iget-wide v7, v2, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p1, p2, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v0

    move-wide v11, v0

    move-object v0, v2

    move-wide v1, v11

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->onNodePlaced$ui_release()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    iput-boolean v8, v2, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierLayout:Z

    invoke-virtual {v6, v8}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setCoordinatesAccessedDuringModifierPlacement(Z)V

    iput-object v4, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOuterCoordinatorLayerBlock:Lkotlin/jvm/functions/Function1;

    iput-wide p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOuterCoordinatorPosition:J

    iput v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOuterCoordinatorZIndex:F

    iput-object v5, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOuterCoordinatorLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOuterCoordinatorBlock:Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

    iget-object v1, v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayoutModifier:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {v0, v7, v1, p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    sget-object p0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object p0, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    return-void
.end method

.method public final placeSelf-MLgxB_4$2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlacedByParent:Z

    iget-wide v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->lastPosition:J

    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->needsCoordinatesUpdate:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v1, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->coordinatesAccessedDuringModifierPlacement:Z

    if-nez v1, :cond_1

    iget-boolean v1, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->coordinatesAccessedDuringPlacement:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->needsCoordinatesUpdate:Z

    if-eqz v1, :cond_2

    :cond_1
    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->needsCoordinatesUpdate:Z

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    :cond_3
    iget-object v1, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v1, :cond_6

    iget-object v5, v1, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v6, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->isOutMostLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v1, v1, Landroidx/compose/ui/node/LookaheadPassDelegate;->_placedState:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    sget-object v6, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->IsNotPlaced:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    if-ne v1, v6, :cond_5

    iget-boolean v1, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPass:Z

    if-nez v1, :cond_5

    iput-boolean v0, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPlacement:Z

    :cond_5
    iget-boolean v1, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->detachedFromParentLookaheadPlacement:Z

    :goto_0
    if-ne v1, v0, :cond_6

    move v1, v0

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v1, :cond_7

    iget-object v1, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->placementScope:Landroidx/compose/ui/layout/OuterPlacementScope;

    if-nez v1, :cond_8

    :cond_7
    invoke-static {v4}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    move-result-object v1

    :cond_8
    iget-object v5, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iput v2, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->nextChildLookaheadPlaceOrder:I

    :cond_9
    const v4, 0x7fffffff

    iput v4, v5, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    const/16 v4, 0x20

    shr-long v6, p1, v4

    long-to-int v4, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v6, p1

    long-to-int v6, v6

    invoke-static {v1, v5, v4, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :cond_a
    iget-object v1, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v1, :cond_b

    iget-boolean v1, v1, Landroidx/compose/ui/node/LookaheadPassDelegate;->placedOnce:Z

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    move v0, v2

    :goto_2
    if-eqz v0, :cond_c

    const-string v0, "Error: Placement happened before lookahead."

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {p0 .. p5}, Landroidx/compose/ui/node/MeasurePassDelegate;->placeOuterCoordinator-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final remeasure-BRTryo0(J)Z
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-boolean v1, v1, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    if-eqz v1, :cond_0

    const-string v1, "measure is called on a deactivated node"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    iget-boolean v4, v2, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    iput-boolean v3, v2, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v3, p0, Landroidx/compose/ui/layout/Placeable;->measurementConstraints:J

    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1, v2, v6}, Landroidx/compose/ui/platform/AndroidComposeView;->forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;Z)V

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->resetSubtreeIntrinsicsUsage$ui_release()V

    return v6

    :cond_4
    :goto_2
    iget-object v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    iput-boolean v6, v1, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierMeasurement:Z

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v4, v6

    :goto_3
    if-ge v4, v1, :cond_5

    aget-object v7, v3, v4

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v7, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v5, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredOnce:Z

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-wide v3, v1, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->setMeasurementConstraints-BRTryo0(J)V

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v7, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v1, v7, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, "layout state is not idle before measure starts"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_4
    iput-wide p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->performMeasureConstraints:J

    sget-object p1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-boolean v6, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->measurePending:Z

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p2

    iget-object v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->performMeasureBlock:Landroidx/compose/ui/node/MeasurePassDelegate$layoutChildrenBlock$1;

    iget-object v8, p2, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingMeasure:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    invoke-virtual {p2, v2, v8, v1}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iget-object p2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne p2, p1, :cond_7

    iput-boolean v5, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    iput-boolean v5, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPendingForAlignment:Z

    iput-object v7, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    :cond_7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    iget-wide p1, p1, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-static {p1, p2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    iget p1, p1, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    if-ne p1, p2, :cond_9

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    iget p1, p1, Landroidx/compose/ui/layout/Placeable;->height:I

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    if-eq p1, p2, :cond_8

    goto :goto_5

    :cond_8
    move v5, v6

    :cond_9
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    iget p1, p1, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p2

    iget p2, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->setMeasuredSize-ozmzZPI(J)V

    return v5
.end method

.method public final requestLayout()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    return-void
.end method

.method public final requestMeasure()V
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    return-void
.end method

.method public final updatePlacedUnderMotionFrameOfReference(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUnderMotionFrameOfReference:Z

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getOuterCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUnderMotionFrameOfReference:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->needsCoordinatesUpdate:Z

    :cond_0
    return-void
.end method
