.class public final Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $id:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $workManagerImpl:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/AndroidUriHandler;)V
    .locals 0

    const/16 p1, 0x8

    iput p1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Lcom/tinder/StateMachine$Matcher$predicates$1;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0, p0}, Lcom/tinder/StateMachine$Matcher$predicates$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    iget-object v0, v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->tracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->stopTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_1
    monitor-exit v1

    throw p0

    :pswitch_1
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/window/layout/FoldingFeature$State;

    iget-object v0, v0, Landroidx/window/layout/FoldingFeature$State;->description:Ljava/lang/Object;

    check-cast v0, Landroidx/window/layout/adapter/WindowBackend;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-interface {v0, p0}, Landroidx/window/layout/adapter/WindowBackend;->unregisterLayoutChangeCallback(Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    if-nez v0, :cond_4

    :cond_1
    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_3

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_3
    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/ScrollObservationScope;

    iget-object v1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    iget-object v2, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    iget-object v3, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    iget-object v4, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    iget-object v6, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v6, v3

    goto :goto_4

    :cond_5
    move v6, v5

    :goto_4
    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    iget-object v3, v2, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_5

    :cond_6
    move v3, v5

    :goto_5
    cmpg-float v4, v6, v5

    if-nez v4, :cond_7

    cmpg-float v3, v3, v5

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    iget v3, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->semanticsNodeIdToAccessibilityVirtualNodeId(I)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v4

    iget v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->accessibilityFocusedVirtualViewId:I

    invoke-virtual {v4, v5}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v4, :cond_8

    :try_start_1
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyAccessibilityFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v5, :cond_8

    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v4

    iget v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->focusedVirtualViewId:I

    invoke-virtual {v4, v5}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v4, :cond_9

    :try_start_2
    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->currentlyFocusedANI:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v5, :cond_9

    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsInScreen(Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_9
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getCurrentSemanticsNodes()Landroidx/collection/IntObjectMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v4, :cond_c

    iget-object v4, v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    if-eqz v4, :cond_c

    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v4, :cond_c

    if-eqz v1, :cond_a

    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingHorizontalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v5, v3, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_a
    if-eqz v2, :cond_b

    iget-object v5, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->pendingVerticalScrollEvents:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v5, v3, v2}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_b
    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_c
    :goto_6
    if-eqz v1, :cond_d

    iget-object v0, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    :cond_d
    if-eqz v2, :cond_e

    iget-object v0, v2, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    :cond_e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v1

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getHolderToLayoutNode()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroid/view/KeyEvent;

    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->access$dispatchKeyEvent$s408734394(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/LookaheadPassDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layoutNodeLayoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->nextChildLookaheadPlaceOrder:I

    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    iget-object v4, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v5, v2

    :goto_7
    const v6, 0x7fffffff

    if-ge v5, v3, :cond_10

    aget-object v7, v4, v5

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v8, v7, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    iput v8, v7, Landroidx/compose/ui/node/LookaheadPassDelegate;->previousPlaceOrder:I

    iput v6, v7, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    iget-object v6, v7, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v8, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v6, v8, :cond_f

    sget-object v6, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v6, v7, Landroidx/compose/ui/node/LookaheadPassDelegate;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    iget-object v4, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v5, v2

    :goto_8
    if-ge v5, v3, :cond_11

    aget-object v7, v4, v5

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v7, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_11
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    if-eqz v3, :cond_13

    iget-boolean v3, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v5, v4, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v5, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v7, v2

    :goto_9
    if-ge v7, v5, :cond_13

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v8, v8, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v8

    if-nez v8, :cond_12

    goto :goto_a

    :cond_12
    iput-boolean v3, v8, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_13
    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LookaheadDelegate;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadDelegate;->getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    if-eqz p0, :cond_15

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->vector:Landroidx/compose/runtime/collection/MutableVector;

    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_15

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/collection/MutableVector$MutableVectorList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v4

    if-nez v4, :cond_14

    goto :goto_c

    :cond_14
    iput-boolean v2, v4, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_15
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v3, v2

    :goto_d
    if-ge v3, p0, :cond_17

    aget-object v4, v0, v3

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v4, Landroidx/compose/ui/node/LookaheadPassDelegate;->previousPlaceOrder:I

    iget v7, v4, Landroidx/compose/ui/node/LookaheadPassDelegate;->placeOrder:I

    if-eq v5, v7, :cond_16

    if-ne v7, v6, :cond_16

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/LookaheadPassDelegate;->markNodeAndSubtreeAsNotPlaced$ui_release(Z)V

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_17
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v1, v2

    :goto_e
    if-ge v1, p0, :cond_18

    aget-object v3, v0, v1

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Landroidx/compose/ui/node/LookaheadPassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v2, v3, Landroidx/compose/ui/node/LookaheadAlignmentLines;->previousUsedDuringParentLayout:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/PlaceableResult;

    iget-object v0, v0, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    new-instance v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$rulerScope$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$rulerScope$1;-><init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    iget v1, v1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_24

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    :goto_f
    if-eqz v0, :cond_24

    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v1

    :goto_10
    if-eqz v2, :cond_23

    instance-of v4, v2, Landroidx/compose/ui/node/SemanticsModifierNode;

    const/4 v5, 0x1

    if-eqz v4, :cond_1c

    check-cast v2, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-interface {v2}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldClearDescendantSemantics()Z

    move-result v4

    if-eqz v4, :cond_1a

    new-instance v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    iput-object v4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-boolean v5, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    :cond_1a
    invoke-interface {v2}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldMergeDescendantSemantics()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iput-boolean v5, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    :cond_1b
    iget-object v4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-interface {v2, v4}, Landroidx/compose/ui/node/SemanticsModifierNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    goto :goto_13

    :cond_1c
    iget v4, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_22

    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_22

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v6, 0x0

    :goto_11
    if-eqz v4, :cond_21

    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_20

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_1d

    move-object v2, v4

    goto :goto_12

    :cond_1d
    if-nez v3, :cond_1e

    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_1e
    if-eqz v2, :cond_1f

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_1f
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_20
    :goto_12
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_11

    :cond_21
    if-ne v6, v5, :cond_22

    goto :goto_10

    :cond_22
    :goto_13
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_10

    :cond_23
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_f

    :cond_24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->removePointerInputModifierNode(Landroidx/compose/ui/Modifier$Node;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    iget-object v0, v0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->block:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/draw/CacheDrawScope;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    iget-object v1, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_28

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_27

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_15
    if-ge v9, v7, :cond_26

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_25

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    invoke-virtual {p0, v10}, Landroidx/compose/runtime/CompositionImpl;->recordWriteOf(Ljava/lang/Object;)V

    :cond_25
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_26
    if-ne v7, v8, :cond_28

    :cond_27
    if-eq v4, v2, :cond_28

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidUriHandler;

    instance-of v1, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    iget-object v0, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidUriHandler;->openUri(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_16

    :cond_29
    instance-of p0, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    if-eqz p0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :catch_2
    :cond_2a
    :goto_16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    if-eqz v0, :cond_2d

    iget-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->annotators:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_18

    :cond_2b
    new-instance v2, Landroidx/compose/foundation/text/TextAnnotatorScope;

    iget-object v3, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v2, v3}, Landroidx/compose/foundation/text/TextAnnotatorScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_2c

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2c
    iget-object v1, v2, Landroidx/compose/foundation/text/TextAnnotatorScope;->styledText:Landroidx/compose/ui/text/AnnotatedString;

    :goto_18
    iput-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    if-nez v1, :cond_2e

    :cond_2d
    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    :cond_2e
    return-object v1

    :pswitch_f
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    new-instance v1, Lcom/google/common/base/Splitter;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v2, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntRange;

    invoke-direct {v1, v2, v0}, Lcom/google/common/base/Splitter;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    new-instance v2, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    invoke-direct {v2, p0, v0, v1}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;Lcom/google/common/base/Splitter;)V

    return-object v2

    :pswitch_10
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    iget-object v1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    sget-object v2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)V

    return-object v0

    :pswitch_11
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    new-instance v1, Lcom/google/common/base/Splitter;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntRange;

    invoke-direct {v1, v2, v0}, Lcom/google/common/base/Splitter;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    invoke-direct {v2, p0, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lcom/google/common/base/Splitter;)V

    return-object v2

    :pswitch_12
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/FocusableNode;

    sget-object v1, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/BackgroundNode;

    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, p0}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;

    move-result-object p0

    iput-object p0, v0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/Brush;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$workManagerImpl:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    const-string/jumbo v2, "workManagerImpl.workDatabase"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->$id:Ljava/lang/Object;

    check-cast p0, Ljava/util/UUID;

    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v3, 0x1c

    invoke-direct {v2, v3, v0, p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    iget-object p0, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-static {p0, v1, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
