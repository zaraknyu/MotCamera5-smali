.class public abstract Landroidx/compose/ui/node/NodeKindKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final classToKindSetMap:Landroidx/collection/MutableObjectIntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/collection/ObjectIntMapKt;->EmptyObjectIntMap:Landroidx/collection/MutableObjectIntMap;

    new-instance v0, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v0}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    return-void
.end method

.method public static final autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V
    .locals 2

    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    iget v1, v0, Landroidx/compose/ui/node/DelegatingNode;->selfKindSet:I

    and-int/2addr v1, p1

    invoke-static {p0, v1, p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeSelf(Landroidx/compose/ui/Modifier$Node;II)V

    iget p0, v0, Landroidx/compose/ui/node/DelegatingNode;->selfKindSet:I

    not-int p0, p0

    and-int/2addr p0, p1

    iget-object p1, v0, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {p1, p0, p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr p1, v0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeSelf(Landroidx/compose/ui/Modifier$Node;II)V

    return-void
.end method

.method public static final autoInvalidateNodeSelf(Landroidx/compose/ui/Modifier$Node;II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getShouldAutoInvalidate()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v3, :cond_2

    instance-of v3, v0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    if-ne v2, v7, :cond_2

    invoke-static {v0, v7}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    iput-boolean v6, v3, Landroidx/compose/ui/node/NodeCoordinator;->released:Z

    iget-object v8, v3, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->invoke()Ljava/lang/Object;

    iget-object v8, v3, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v8, :cond_2

    iget-object v8, v3, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v8, :cond_1

    iput-object v5, v3, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :cond_1
    invoke-virtual {v3, v5, v4}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    iget-object v3, v3, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    :cond_2
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_3

    instance-of v3, v0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v3, :cond_3

    if-eq v2, v7, :cond_3

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_3
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_5

    instance-of v3, v0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v3, :cond_5

    if-eq v2, v7, :cond_5

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, v2, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v7, v3, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    iget-object v7, v7, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v7, v7, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iput-boolean v6, v2, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    invoke-virtual {v3, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_5
    :goto_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_6

    instance-of v2, v0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_6
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_7

    instance-of v2, v0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v2, :cond_7

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    iput-boolean v6, v2, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    :cond_7
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_8

    instance-of v2, v0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/node/ParentDataModifierNode;

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iput-boolean v6, v3, Landroidx/compose/ui/node/MeasurePassDelegate;->parentDataDirty:Z

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v2, :cond_8

    iput-boolean v6, v2, Landroidx/compose/ui/node/LookaheadPassDelegate;->parentDataDirty:Z

    :cond_8
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_15

    instance-of v2, v0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v2, :cond_15

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    sput-object v5, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    sget-object v3, Landroidx/compose/ui/node/CanFocusChecker;->INSTANCE:Landroidx/compose/ui/node/CanFocusChecker;

    invoke-interface {v2, v3}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V

    sget-object v3, Landroidx/compose/ui/node/CanFocusChecker;->canFocusValue:Ljava/lang/Boolean;

    if-eqz v3, :cond_15

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    iget-object v3, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v3, v3, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v3, :cond_9

    const-string/jumbo v3, "visitChildren called on an unattached node"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_9
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v8, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v8, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v8, :cond_a

    invoke-static {v3, v2}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_1

    :cond_a
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_b
    :goto_1
    iget v2, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-eqz v2, :cond_15

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    iget v8, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_c

    invoke-static {v3, v2}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_1

    :cond_c
    :goto_2
    if-eqz v2, :cond_b

    iget v8, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_14

    move-object v8, v5

    :goto_3
    if-eqz v2, :cond_b

    instance-of v9, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v9, :cond_d

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v12, v9, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    iget-object v9, v12, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v9, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, v12, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    if-nez v2, :cond_13

    iget-object v2, v12, Landroidx/compose/ui/focus/FocusInvalidationManager;->onRequestApplyChangesListener:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance v10, Landroidx/room/RoomDatabase$closeBarrier$1;

    const/16 v17, 0x0

    const/16 v18, 0x3

    const/4 v11, 0x0

    const-class v13, Landroidx/compose/ui/focus/FocusInvalidationManager;

    const-string v14, "invalidateNodes"

    const-string v15, "invalidateNodes()V"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v18}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v2, v10}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v6, v12, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    goto :goto_6

    :cond_d
    iget v9, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_13

    instance-of v9, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_13

    move-object v9, v2

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v10, v4

    :goto_4
    if-eqz v9, :cond_12

    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_11

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v6, :cond_e

    move-object v2, v9

    goto :goto_5

    :cond_e
    if-nez v8, :cond_f

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v2, v5

    :cond_10
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_11
    :goto_5
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_12
    if-ne v10, v6, :cond_13

    goto :goto_3

    :cond_13
    :goto_6
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_3

    :cond_14
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto/16 :goto_2

    :cond_15
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_16

    instance-of v1, v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz v1, :cond_16

    check-cast v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v9, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    iget-object v1, v9, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, v9, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    if-nez v0, :cond_16

    iget-object v0, v9, Landroidx/compose/ui/focus/FocusInvalidationManager;->onRequestApplyChangesListener:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance v7, Landroidx/room/RoomDatabase$closeBarrier$1;

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/4 v8, 0x0

    const-class v10, Landroidx/compose/ui/focus/FocusInvalidationManager;

    const-string v11, "invalidateNodes"

    const-string v12, "invalidateNodes()V"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v15}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v0, v7}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v6, v9, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    :cond_16
    :goto_7
    return-void
.end method

.method public static final autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string v0, "autoInvalidateUpdatedNode called on unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    return-void
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/layout/LayoutModifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    instance-of v1, p0, Landroidx/compose/foundation/IndicationModifier;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 3
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    .line 4
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    .line 5
    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-nez v1, :cond_4

    instance-of v1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    if-eqz v1, :cond_5

    :cond_4
    or-int/lit8 v0, v0, 0x20

    .line 6
    :cond_5
    instance-of v1, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x100

    .line 7
    :cond_6
    instance-of v1, p0, Landroidx/compose/ui/layout/ParentDataModifier;

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x40

    .line 8
    :cond_7
    instance-of p0, p0, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    if-eqz p0, :cond_8

    const/high16 p0, 0x80000

    or-int/2addr p0, v0

    return p0

    :cond_8
    return v0
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Node;)I
    .locals 4

    .line 9
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    if-eqz v0, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 11
    sget-object v1, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    invoke-virtual {v1, v0}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 12
    iget-object p0, v1, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget p0, p0, v2

    return p0

    .line 13
    :cond_1
    instance-of v2, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 14
    :goto_0
    instance-of v3, p0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x4

    .line 15
    :cond_3
    instance-of v3, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x8

    .line 16
    :cond_4
    instance-of v3, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x10

    .line 17
    :cond_5
    instance-of v3, p0, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x20

    .line 18
    :cond_6
    instance-of v3, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v3, :cond_7

    or-int/lit8 v2, v2, 0x40

    .line 19
    :cond_7
    instance-of v3, p0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v3, :cond_8

    or-int/lit16 v2, v2, 0x80

    .line 20
    :cond_8
    instance-of v3, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v3, :cond_9

    or-int/lit16 v2, v2, 0x100

    .line 21
    :cond_9
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_a

    or-int/lit16 v2, v2, 0x400

    .line 22
    :cond_a
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v3, :cond_b

    or-int/lit16 v2, v2, 0x800

    .line 23
    :cond_b
    instance-of v3, p0, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz v3, :cond_c

    or-int/lit16 v2, v2, 0x1000

    .line 24
    :cond_c
    instance-of v3, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v3, :cond_d

    or-int/lit16 v2, v2, 0x2000

    .line 25
    :cond_d
    instance-of v3, p0, Landroidx/compose/ui/input/rotary/RotaryInputNode;

    if-eqz v3, :cond_e

    or-int/lit16 v2, v2, 0x4000

    .line 26
    :cond_e
    instance-of v3, p0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    if-eqz v3, :cond_f

    const v3, 0x8000

    or-int/2addr v2, v3

    .line 27
    :cond_f
    instance-of v3, p0, Landroidx/compose/ui/node/TraversableNode;

    if-eqz v3, :cond_10

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    .line 28
    :cond_10
    instance-of p0, p0, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    if-eqz p0, :cond_11

    const/high16 p0, 0x80000

    or-int/2addr v2, p0

    .line 29
    :cond_11
    invoke-virtual {v1, v2, v0}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    return v2
.end method

.method public static final calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I
    .locals 2

    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/compose/ui/node/DelegatingNode;

    iget v0, p0, Landroidx/compose/ui/node/DelegatingNode;->selfKindSet:I

    iget-object p0, p0, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    :goto_0
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Node;)I

    move-result p0

    return p0
.end method

.method public static final getIncludeSelfInTraversal-H91voCI(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
