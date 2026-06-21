.class public final Landroidx/compose/ui/node/InnerNodeCoordinator;
.super Landroidx/compose/ui/node/NodeCoordinator;
.source "SourceFile"


# static fields
.field public static final innerBoundsPaint:Landroidx/compose/ui/graphics/AndroidPaint;


# instance fields
.field public lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

.field public final tail:Landroidx/compose/ui/node/TailModifierNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v0

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Red:J

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    iget-object v1, v0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->setStyle-k9PVt8s(I)V

    sput-object v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->innerBoundsPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    new-instance v0, Landroidx/compose/ui/node/TailModifierNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    iput-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iput-object p0, v0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    invoke-direct {p1, p0}, Landroidx/compose/ui/node/LookaheadDelegate;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    return-void
.end method


# virtual methods
.method public final calculateAlignmentLine(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;->calculateAlignmentLine(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    iget-object v1, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v2, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iput-boolean v3, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierMeasurement:Z

    iget-boolean v1, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPending:Z

    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutPendingForAlignment:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierLayout:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v1

    iput-boolean v3, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->layoutChildren()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object p0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    iget-object p0, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLineMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final ensureLookaheadDelegateCreated()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/LookaheadDelegate;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    iput-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    :cond_0
    return-void
.end method

.method public final getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    return-object p0
.end method

.method public final getTail()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    return-object p0
.end method

.method public final hitTestChild-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move-object/from16 v9, p4

    iget v2, v1, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    iget-object v5, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    if-ne v2, v12, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v13

    :goto_0
    xor-int/2addr v2, v12

    goto :goto_1

    :pswitch_0
    move v2, v12

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->withinLayerBounds-k-4lQ0M(J)Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v2, p5

    move/from16 v11, p6

    move v0, v12

    goto :goto_2

    :cond_1
    move/from16 v2, p5

    if-ne v2, v12, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v6

    invoke-virtual {v0, v3, v4, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v6, 0x7fffffff

    and-int/2addr v0, v6

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v0, v6, :cond_3

    move v0, v12

    move v11, v13

    goto :goto_2

    :cond_2
    move/from16 v2, p5

    :cond_3
    move/from16 v11, p6

    move v0, v13

    :goto_2
    if-eqz v0, :cond_10

    iget v0, v9, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v5

    iget-object v14, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v5, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr v5, v12

    move v15, v5

    :goto_3
    if-ltz v15, :cond_f

    aget-object v5, v14, v15

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v6

    if-eqz v6, :cond_e

    iget v6, v1, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    packed-switch v6, :pswitch_data_1

    iget-object v6, v5, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v7, v6, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v7, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(J)J

    move-result-wide v7

    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/node/NodeCoordinator;

    move-object v10, v5

    move-object v5, v6

    sget-object v6, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    move-object/from16 v16, v10

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    move-object/from16 v9, p4

    move-object/from16 v10, v16

    goto :goto_4

    :pswitch_1
    move v6, v2

    move-object v2, v5

    move-object v5, v9

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/node/LayoutNode;->hitTest-6fMxITs$ui_release(JLandroidx/compose/ui/node/HitTestResult;IZ)V

    move-object v10, v2

    :goto_4
    invoke-virtual {v9}, Landroidx/compose/ui/node/HitTestResult;->findBestHitDistance-fn2tFes()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/node/HitTestResultKt;->getDistance-impl(J)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    invoke-static {v2, v3}, Landroidx/compose/ui/node/HitTestResultKt;->isInLayer-impl(J)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v2, v3}, Landroidx/compose/ui/node/HitTestResultKt;->isInExpandedBounds-impl(J)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v10, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x10

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_a

    :cond_4
    iget-boolean v4, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v4, :cond_f

    iget-object v4, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v4, v4, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v4, :cond_5

    const-string/jumbo v4, "visitLocalDescendants called on an unattached node"

    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget v4, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_f

    :goto_5
    if-eqz v2, :cond_f

    iget v4, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    move-object v5, v2

    move-object v6, v4

    :goto_6
    if-eqz v5, :cond_d

    instance-of v7, v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v7, :cond_6

    check-cast v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {v5}, Landroidx/compose/ui/node/PointerInputModifierNode;->sharePointerInputWithSiblings()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v2, v9, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    iget v2, v2, Landroidx/collection/MutableObjectList;->_size:I

    sub-int/2addr v2, v12

    iput v2, v9, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    goto :goto_9

    :cond_6
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_c

    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_c

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v8, v13

    :goto_7
    if-eqz v7, :cond_b

    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v10, v3

    if-eqz v10, :cond_a

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v12, :cond_7

    move-object v5, v7

    goto :goto_8

    :cond_7
    if-nez v6, :cond_8

    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_9
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_a
    :goto_8
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_7

    :cond_b
    if-ne v8, v12, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v6}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_6

    :cond_d
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_5

    :cond_e
    :goto_9
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v3, p2

    move/from16 v2, p5

    goto/16 :goto_3

    :cond_f
    :goto_a
    iput v0, v9, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public final measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 6

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->setMeasurementConstraints-BRTryo0(J)V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    iget-object v2, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v2, v3

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v5, v4, Landroidx/compose/ui/node/MeasurePassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getChildDelegates$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0, p1, p2}, Landroidx/compose/ui/layout/MeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->setMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onMeasured()V

    return-object p0
.end method

.method public final performDraw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    iget-object v2, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v2, v3

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->draw$ui_release(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int p0, v2

    int-to-float p0, p0

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float v5, p0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    int-to-float p0, p0

    sub-float v6, p0, p2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    sget-object v7, Landroidx/compose/ui/node/InnerNodeCoordinator;->innerBoundsPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/graphics/Canvas;->drawRect(FFFFLandroidx/compose/ui/graphics/AndroidPaint;)V

    :cond_2
    return-void
.end method

.method public final placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 8
    iget-boolean p0, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isShallowPlacing:Z

    if-eqz p0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p0, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 11
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->onNodePlaced$ui_release()V

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
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 2
    iget-boolean p0, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isShallowPlacing:Z

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->onNodePlaced$ui_release()V

    return-void
.end method
