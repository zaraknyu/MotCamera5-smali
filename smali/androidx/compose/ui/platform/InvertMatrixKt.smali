.class public abstract Landroidx/compose/ui/platform/InvertMatrixKt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/ViewCompositionStrategy;


# static fields
.field public static final AcceptableClasses:[Ljava/lang/Class;

.field public static final DefaultFakeNodeBounds:Landroidx/compose/ui/geometry/Rect;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 7

    const-class v5, Landroid/util/Size;

    const-class v6, Landroid/util/SizeF;

    const-class v0, Ljava/io/Serializable;

    const-class v1, Landroid/os/Parcelable;

    const-class v2, Ljava/lang/String;

    const-class v3, Landroid/util/SparseArray;

    const-class v4, Landroid/os/Binder;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/InvertMatrixKt;->AcceptableClasses:[Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/ui/platform/InvertMatrixKt;->DefaultFakeNodeBounds:Landroidx/compose/ui/geometry/Rect;

    return-void
.end method

.method public static final addPageActions(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 4

    iget-object v0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroidx/compose/ui/semantics/Role;

    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->access$enabled(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, v0, Landroidx/compose/ui/semantics/Role;->value:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v2

    :cond_3
    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_4

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v3, 0x1020046

    iget-object p1, p1, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_4
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    move-object p1, v2

    :cond_5
    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_6

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v3, 0x1020047

    iget-object p1, p1, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_6
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    move-object p1, v2

    :cond_7
    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_8

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v3, 0x1020048

    iget-object p1, p1, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_8
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    move-object v2, p1

    :goto_1
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v2, :cond_a

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v0, 0x1020049

    iget-object v1, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public static final canBeSavedToBundle(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p0, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eq v0, v2, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eq v0, v2, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, v2, :cond_5

    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->canBeSavedToBundle(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Lkotlin/Function;

    if-eqz v0, :cond_3

    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    move v0, v1

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_5

    sget-object v2, Landroidx/compose/ui/platform/InvertMatrixKt;->AcceptableClasses:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public static final composeToViewOffset(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    double-to-float p0, v0

    goto :goto_1

    :cond_0
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :goto_1
    float-to-int p0, p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final getAllUncoveredSemanticsNodesToIntObjectMap(Landroidx/compose/ui/semantics/SemanticsOwner;)Landroidx/collection/MutableIntObjectMap;
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Region;

    iget v3, v1, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v1, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v1, Landroidx/compose/ui/geometry/Rect;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v1, v1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    invoke-static {v2, p0, v0, p0, v1}, Landroidx/compose/ui/platform/InvertMatrixKt;->getAllUncoveredSemanticsNodesToIntObjectMap$findAllSemanticNodesRecursive(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Region;)V

    return-object v0

    :cond_1
    :goto_0
    sget-object p0, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    const-string v0, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.emptyIntObjectMap>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getAllUncoveredSemanticsNodesToIntObjectMap$findAllSemanticNodesRecursive(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Region;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    iget-object v6, v3, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget v7, v3, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    move v8, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v10

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    if-ne v7, v5, :cond_13

    :cond_2
    if-eqz v8, :cond_3

    iget-boolean v8, v3, Landroidx/compose/ui/semantics/SemanticsNode;->isFake:Z

    if-nez v8, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v8, v3, Landroidx/compose/ui/semantics/SemanticsNode;->outerSemanticsNode:Landroidx/compose/ui/Modifier$Node;

    iget-object v11, v3, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-boolean v12, v11, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    if-eqz v12, :cond_4

    invoke-static {v6}, Lkotlin/text/CharsKt;->getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object v8, v6

    :cond_4
    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    iget-object v6, v8, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v11, v11, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v11, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    :cond_5
    if-eqz v8, :cond_6

    move v8, v10

    goto :goto_2

    :cond_6
    move v8, v9

    :goto_2
    iget-object v11, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v11, v11, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v11, :cond_7

    goto :goto_4

    :cond_7
    const/16 v11, 0x8

    if-nez v8, :cond_8

    invoke-static {v6, v11}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/layout/ScaleFactorKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v8

    invoke-interface {v8, v6, v10}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    goto/16 :goto_5

    :cond_8
    invoke-static {v6, v11}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    iget-boolean v8, v8, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v6}, Landroidx/compose/ui/layout/ScaleFactorKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v8

    iget-object v11, v6, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    if-nez v11, :cond_a

    new-instance v11, Landroidx/compose/ui/geometry/MutableRect;

    invoke-direct {v11}, Landroidx/compose/ui/geometry/MutableRect;-><init>()V

    iput-object v11, v6, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    :cond_a
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroidx/compose/ui/node/NodeCoordinator;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    move-result-wide v12

    const/16 v14, 0x20

    shr-long v14, v12, v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    neg-float v15, v15

    iput v15, v11, Landroidx/compose/ui/geometry/MutableRect;->left:F

    const-wide v15, 0xffffffffL

    and-long/2addr v12, v15

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    neg-float v13, v13

    iput v13, v11, Landroidx/compose/ui/geometry/MutableRect;->top:F

    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    add-float/2addr v14, v13

    iput v14, v11, Landroidx/compose/ui/geometry/MutableRect;->right:F

    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    add-float/2addr v12, v13

    iput v12, v11, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    :goto_3
    if-eq v6, v8, :cond_c

    invoke-virtual {v6, v11, v9, v10}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    invoke-virtual {v11}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    :goto_4
    sget-object v6, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    goto :goto_5

    :cond_b
    iget-object v6, v6, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    new-instance v6, Landroidx/compose/ui/geometry/Rect;

    iget v8, v11, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iget v9, v11, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iget v12, v11, Landroidx/compose/ui/geometry/MutableRect;->right:F

    iget v11, v11, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    invoke-direct {v6, v8, v9, v12, v11}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    :goto_5
    iget v8, v6, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, v6, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v11, v6, Landroidx/compose/ui/geometry/Rect;->right:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v6, v6, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v8, v9, v11, v6}, Landroid/graphics/Region;->set(IIII)Z

    const/4 v12, -0x1

    if-ne v7, v5, :cond_d

    move v7, v12

    :cond_d
    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v5, v3, v13}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v7, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    const/4 v5, 0x4

    invoke-static {v5, v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v10

    :goto_6
    if-ge v12, v7, :cond_f

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v10, v13}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_7

    :cond_e
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-static {v0, v1, v2, v10, v4}, Landroidx/compose/ui/platform/InvertMatrixKt;->getAllUncoveredSemanticsNodesToIntObjectMap$findAllSemanticNodesRecursive(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Region;)V

    :goto_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_f
    invoke-static {v3}, Landroidx/compose/ui/platform/InvertMatrixKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move v4, v6

    move v1, v8

    move v2, v9

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void

    :cond_10
    iget-boolean v0, v3, Landroidx/compose/ui/semantics/SemanticsNode;->isFake:Z

    if-eqz v0, :cond_12

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v1

    if-ne v1, v10, :cond_11

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_8

    :cond_11
    sget-object v0, Landroidx/compose/ui/platform/InvertMatrixKt;->DefaultFakeNodeBounds:Landroidx/compose/ui/geometry/Rect;

    :goto_8
    new-instance v1, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v8, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v4, v5, v6, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v7, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-void

    :cond_12
    if-ne v7, v12, :cond_13

    new-instance v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v7, v0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_13
    :goto_9
    return-void
.end method

.method public static getMain()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Main$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public static final getTextLayoutResult(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/TextLayoutResult;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final invertTo-JiSxe2E([F[F)Z
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    array-length v2, v1

    if-ge v2, v4, :cond_1

    :cond_0
    move/from16 v19, v3

    goto/16 :goto_2

    :cond_1
    aget v2, v0, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v9, v0, v8

    const/4 v10, 0x4

    aget v11, v0, v10

    const/4 v12, 0x5

    aget v13, v0, v12

    const/4 v14, 0x6

    aget v15, v0, v14

    const/16 v16, 0x7

    aget v17, v0, v16

    const/16 v18, 0x8

    move/from16 v19, v3

    aget v3, v0, v18

    const/16 v20, 0x9

    move/from16 v21, v4

    aget v4, v0, v20

    const/16 v22, 0xa

    aget v23, v0, v22

    const/16 v24, 0xb

    aget v25, v0, v24

    const/16 v26, 0xc

    move/from16 v27, v6

    aget v6, v0, v26

    const/16 v28, 0xd

    aget v29, v0, v28

    const/16 v30, 0xe

    aget v31, v0, v30

    const/16 v32, 0xf

    aget v0, v0, v32

    mul-float v33, v2, v13

    mul-float v34, v5, v11

    sub-float v33, v33, v34

    mul-float v34, v2, v15

    mul-float v35, v7, v11

    sub-float v34, v34, v35

    mul-float v35, v2, v17

    mul-float v36, v9, v11

    sub-float v35, v35, v36

    mul-float v36, v5, v15

    mul-float v37, v7, v13

    sub-float v36, v36, v37

    mul-float v37, v5, v17

    mul-float v38, v9, v13

    sub-float v37, v37, v38

    mul-float v38, v7, v17

    mul-float v39, v9, v15

    sub-float v38, v38, v39

    mul-float v39, v3, v29

    mul-float v40, v4, v6

    sub-float v39, v39, v40

    mul-float v40, v3, v31

    mul-float v41, v23, v6

    sub-float v40, v40, v41

    mul-float v41, v3, v0

    mul-float v42, v25, v6

    sub-float v41, v41, v42

    mul-float v42, v4, v31

    mul-float v43, v23, v29

    sub-float v42, v42, v43

    mul-float v43, v4, v0

    mul-float v44, v25, v29

    sub-float v43, v43, v44

    mul-float v44, v23, v0

    mul-float v45, v25, v31

    sub-float v44, v44, v45

    mul-float v45, v33, v44

    mul-float v46, v34, v43

    sub-float v45, v45, v46

    mul-float v46, v35, v42

    add-float v46, v46, v45

    mul-float v45, v36, v41

    add-float v45, v45, v46

    mul-float v46, v37, v40

    sub-float v45, v45, v46

    mul-float v46, v38, v39

    add-float v46, v46, v45

    const/16 v45, 0x0

    cmpg-float v45, v46, v45

    if-nez v45, :cond_2

    goto/16 :goto_0

    :cond_2
    const/high16 v47, 0x3f800000    # 1.0f

    div-float v47, v47, v46

    mul-float v46, v13, v44

    mul-float v48, v15, v43

    sub-float v46, v46, v48

    mul-float v48, v17, v42

    add-float v48, v48, v46

    mul-float v48, v48, v47

    aput v48, v1, v19

    move/from16 v46, v8

    neg-float v8, v5

    mul-float v8, v8, v44

    mul-float v48, v7, v43

    add-float v48, v48, v8

    mul-float v8, v9, v42

    sub-float v48, v48, v8

    mul-float v48, v48, v47

    aput v48, v1, v21

    mul-float v8, v29, v38

    mul-float v48, v31, v37

    sub-float v8, v8, v48

    mul-float v48, v0, v36

    add-float v48, v48, v8

    mul-float v48, v48, v47

    aput v48, v1, v27

    neg-float v8, v4

    mul-float v8, v8, v38

    mul-float v27, v23, v37

    add-float v27, v27, v8

    mul-float v8, v25, v36

    sub-float v27, v27, v8

    mul-float v27, v27, v47

    aput v27, v1, v46

    neg-float v8, v11

    mul-float v27, v8, v44

    mul-float v46, v15, v41

    add-float v46, v46, v27

    mul-float v27, v17, v40

    sub-float v46, v46, v27

    mul-float v46, v46, v47

    aput v46, v1, v10

    mul-float v44, v44, v2

    mul-float v10, v7, v41

    sub-float v44, v44, v10

    mul-float v10, v9, v40

    add-float v10, v10, v44

    mul-float v10, v10, v47

    aput v10, v1, v12

    neg-float v10, v6

    mul-float v12, v10, v38

    mul-float v27, v31, v35

    add-float v27, v27, v12

    mul-float v12, v0, v34

    sub-float v27, v27, v12

    mul-float v27, v27, v47

    aput v27, v1, v14

    mul-float v38, v38, v3

    mul-float v12, v23, v35

    sub-float v38, v38, v12

    mul-float v12, v25, v34

    add-float v12, v12, v38

    mul-float v12, v12, v47

    aput v12, v1, v16

    mul-float v11, v11, v43

    mul-float v12, v13, v41

    sub-float/2addr v11, v12

    mul-float v17, v17, v39

    add-float v17, v17, v11

    mul-float v17, v17, v47

    aput v17, v1, v18

    neg-float v11, v2

    mul-float v11, v11, v43

    mul-float v41, v41, v5

    add-float v41, v41, v11

    mul-float v9, v9, v39

    sub-float v41, v41, v9

    mul-float v41, v41, v47

    aput v41, v1, v20

    mul-float v6, v6, v37

    mul-float v9, v29, v35

    sub-float/2addr v6, v9

    mul-float v0, v0, v33

    add-float/2addr v0, v6

    mul-float v0, v0, v47

    aput v0, v1, v22

    neg-float v0, v3

    mul-float v0, v0, v37

    mul-float v35, v35, v4

    add-float v35, v35, v0

    mul-float v25, v25, v33

    sub-float v35, v35, v25

    mul-float v35, v35, v47

    aput v35, v1, v24

    mul-float v8, v8, v42

    mul-float v13, v13, v40

    add-float/2addr v13, v8

    mul-float v15, v15, v39

    sub-float/2addr v13, v15

    mul-float v13, v13, v47

    aput v13, v1, v26

    mul-float v2, v2, v42

    mul-float v5, v5, v40

    sub-float/2addr v2, v5

    mul-float v7, v7, v39

    add-float/2addr v7, v2

    mul-float v7, v7, v47

    aput v7, v1, v28

    mul-float v10, v10, v36

    mul-float v29, v29, v34

    add-float v29, v29, v10

    mul-float v31, v31, v33

    sub-float v29, v29, v31

    mul-float v29, v29, v47

    aput v29, v1, v30

    mul-float v3, v3, v36

    mul-float v4, v4, v34

    sub-float/2addr v3, v4

    mul-float v23, v23, v33

    add-float v23, v23, v3

    mul-float v23, v23, v47

    aput v23, v1, v32

    :goto_0
    if-nez v45, :cond_3

    move/from16 v3, v21

    goto :goto_1

    :cond_3
    move/from16 v3, v19

    :goto_1
    xor-int/lit8 v0, v3, 0x1

    return v0

    :goto_2
    return v19
.end method

.method public static final isHidden(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->findCoordinatorToGetBounds$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->HideFromAccessibility:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v2, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 14

    invoke-static {p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->isHidden(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-boolean v0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    iget-object v0, p0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_4

    move v4, v1

    :goto_0
    aget-wide v5, p0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v1

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v11, v0, v10

    aget-object v10, v2, v10

    check-cast v11, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-boolean v10, v11, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->isImportantForAccessibility:Z

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static final isInOutline(Landroidx/compose/ui/graphics/Brush;FF)Z
    .locals 22

    move-object/from16 v0, p0

    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v0, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_7

    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_7

    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_7

    goto/16 :goto_0

    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v1, :cond_8

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v0, v0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    iget v1, v0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    iget-wide v2, v0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    iget-wide v4, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    iget-wide v6, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    iget v8, v0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    iget v9, v0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    iget v10, v0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    iget-wide v11, v0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    cmpg-float v13, p1, v1

    if-ltz v13, :cond_7

    cmpl-float v13, p1, v10

    if-gez v13, :cond_7

    cmpg-float v13, p2, v9

    if-ltz v13, :cond_7

    cmpl-float v13, p2, v8

    if-ltz v13, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v13, 0x20

    shr-long v14, v11, v13

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    move/from16 p0, v13

    move/from16 v16, v14

    shr-long v13, v2, p0

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    add-float/2addr v14, v15

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v15

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_6

    shr-long v14, v4, p0

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    move/from16 v17, v1

    move-wide/from16 v18, v2

    shr-long v1, v6, p0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v15

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    const-wide v2, 0xffffffffL

    and-long/2addr v11, v2

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    and-long/2addr v4, v2

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    add-float/2addr v5, v12

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v12

    cmpg-float v5, v5, v12

    if-gtz v5, :cond_6

    move-wide/from16 v20, v2

    and-long v2, v18, v20

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long v5, v6, v20

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float/2addr v6, v3

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v3

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_6

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float v3, v3, v17

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float/2addr v6, v9

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    sub-float v7, v10, v7

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v9

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v10, v1

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float v1, v8, v1

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float/2addr v8, v4

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float v4, v4, v17

    cmpg-float v5, p1, v3

    if-gez v5, :cond_2

    cmpg-float v5, p2, v6

    if-gez v5, :cond_2

    iget-wide v4, v0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    move/from16 v0, p1

    move/from16 v1, p2

    move v2, v3

    move v3, v6

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/InvertMatrixKt;->isWithinEllipse-VE1yxkc(FFFFJ)Z

    move-result v0

    return v0

    :cond_2
    cmpg-float v3, p1, v4

    if-gez v3, :cond_3

    cmpl-float v3, p2, v8

    if-lez v3, :cond_3

    move v2, v4

    iget-wide v4, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    move/from16 v0, p1

    move/from16 v1, p2

    move v3, v8

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/InvertMatrixKt;->isWithinEllipse-VE1yxkc(FFFFJ)Z

    move-result v0

    return v0

    :cond_3
    move v3, v2

    cmpl-float v2, p1, v7

    if-lez v2, :cond_4

    cmpg-float v2, p2, v3

    if-gez v2, :cond_4

    iget-wide v4, v0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    move/from16 v0, p1

    move/from16 v1, p2

    move v2, v7

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/InvertMatrixKt;->isWithinEllipse-VE1yxkc(FFFFJ)Z

    move-result v0

    return v0

    :cond_4
    cmpl-float v2, p1, v10

    if-lez v2, :cond_5

    cmpl-float v2, p2, v1

    if-lez v2, :cond_5

    iget-wide v4, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    move/from16 v0, p1

    move v3, v1

    move v2, v10

    move/from16 v1, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/InvertMatrixKt;->isWithinEllipse-VE1yxkc(FFFFJ)Z

    move-result v0

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_6
    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/platform/InvertMatrixKt;->isInPath(Landroidx/compose/ui/graphics/Path;FF)Z

    move-result v0

    return v0

    :cond_7
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_8
    move/from16 v1, p1

    move/from16 v2, p2

    instance-of v3, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v3, :cond_9

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v0, v0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/platform/InvertMatrixKt;->isInPath(Landroidx/compose/ui/graphics/Path;FF)Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static final isInPath(Landroidx/compose/ui/graphics/Path;FF)Z
    .locals 4

    const v0, 0x3ba3d70a    # 0.005f

    sub-float v1, p1, v0

    sub-float v2, p2, v0

    add-float/2addr p1, v0

    add-float/2addr p2, v0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/graphics/Path$Direction;->$VALUES:[Landroidx/compose/ui/graphics/Path$Direction;

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "Invalid rectangle, make sure no value is NaN"

    invoke-static {v3}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    :cond_2
    iget-object v3, v0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, v0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget-object p2, v0, Landroidx/compose/ui/graphics/AndroidPath;->rectF:Landroid/graphics/RectF;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, v0, p2}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    iget-object p0, p1, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    xor-int/2addr p0, p2

    return p0
.end method

.method public static final isWithinEllipse-VE1yxkc(FFFFJ)Z
    .locals 2

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    const/16 p2, 0x20

    shr-long p2, p4, p2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const-wide v0, 0xffffffffL

    and-long p3, p4, v0

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    mul-float/2addr p0, p0

    mul-float/2addr p2, p2

    div-float/2addr p0, p2

    mul-float/2addr p1, p1

    mul-float/2addr p3, p3

    div-float/2addr p1, p3

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    iget v2, v2, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static final simpleIdentityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%07x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toLegacyClassName-V4PA4sw(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "android.widget.Button"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "android.widget.CheckBox"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "android.widget.RadioButton"

    return-object p0

    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    const-string p0, "android.widget.ImageView"

    return-object p0

    :cond_3
    const/4 v0, 0x6

    if-ne p0, v0, :cond_4

    const-string p0, "android.widget.Spinner"

    return-object p0

    :cond_4
    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    const-string p0, "android.widget.NumberPicker"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static updateDisplayList(Landroid/view/View;)V
    .locals 7

    const-class v0, Landroid/view/View;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v4, Landroidx/compose/ui/platform/ViewLayer;->hasRetrievedMethod:Z

    if-nez v4, :cond_2

    sput-boolean v3, Landroidx/compose/ui/platform/ViewLayer;->hasRetrievedMethod:Z

    const-string v4, "getDeclaredMethod"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v1, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string/jumbo v6, "updateDisplayListIfDirty"

    new-array v5, v5, [Ljava/lang/Class;

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    sput-object v4, Landroidx/compose/ui/platform/ViewLayer;->updateDisplayListIfDirtyMethod:Ljava/lang/reflect/Method;

    const-string v4, "getDeclaredField"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "mRecreateDisplayList"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->recreateDisplayList:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->updateDisplayListIfDirtyMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_0
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->recreateDisplayList:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    :goto_1
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->recreateDisplayList:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    :cond_3
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->updateDisplayListIfDirtyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    sput-boolean v3, Landroidx/compose/ui/platform/ViewLayer;->shouldUseDispatchDraw:Z

    return-void
.end method
