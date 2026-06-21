.class public final Landroidx/compose/foundation/ScrollingContainerNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# instance fields
.field public bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public enabled:Z

.field public flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public localOverscrollFactory:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

.field public localOverscrollFactoryCreatedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public overscrollNode:Landroidx/compose/ui/node/DelegatableNode;

.field public scrollableNode:Landroidx/compose/foundation/gestures/ScrollableNode;

.field public shouldReverseDirection:Z

.field public state:Landroidx/compose/foundation/gestures/ScrollableState;

.field public useLocalOverscrollFactory:Z

.field public userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# virtual methods
.method public final attachOverscrollNodeIfNeeded()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->overscrollNode:Landroidx/compose/ui/node/DelegatableNode;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->useLocalOverscrollFactory:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/Pending$keyMap$2;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->useLocalOverscrollFactory:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactoryCreatedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->node:Landroidx/compose/foundation/StretchOverscrollNode;

    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->overscrollNode:Landroidx/compose/ui/node/DelegatableNode;

    return-void

    :cond_2
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    :cond_3
    return-void
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAttach()V
    .locals 10

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollingContainerNode;->shouldReverseDirection()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->shouldReverseDirection:Z

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollingContainerNode;->attachOverscrollNodeIfNeeded()V

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->scrollableNode:Landroidx/compose/foundation/gestures/ScrollableNode;

    if-nez v0, :cond_1

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-object v6, p0, Landroidx/compose/foundation/ScrollingContainerNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->useLocalOverscrollFactory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactoryCreatedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    goto :goto_0

    :goto_1
    iget-object v4, p0, Landroidx/compose/foundation/ScrollingContainerNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v5, p0, Landroidx/compose/foundation/ScrollingContainerNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v8, p0, Landroidx/compose/foundation/ScrollingContainerNode;->enabled:Z

    iget-boolean v9, p0, Landroidx/compose/foundation/ScrollingContainerNode;->shouldReverseDirection:Z

    iget-object v7, p0, Landroidx/compose/foundation/ScrollingContainerNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v3, p0, Landroidx/compose/foundation/ScrollingContainerNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/gestures/ScrollableNode;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v1, p0, Landroidx/compose/foundation/ScrollingContainerNode;->scrollableNode:Landroidx/compose/foundation/gestures/ScrollableNode;

    :cond_1
    return-void
.end method

.method public final onDetach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->overscrollNode:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_0
    return-void
.end method

.method public final onLayoutDirectionChange()V
    .locals 11

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollingContainerNode;->shouldReverseDirection()Z

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingContainerNode;->shouldReverseDirection:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->shouldReverseDirection:Z

    iget-object v7, p0, Landroidx/compose/foundation/ScrollingContainerNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v6, p0, Landroidx/compose/foundation/ScrollingContainerNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v9, p0, Landroidx/compose/foundation/ScrollingContainerNode;->useLocalOverscrollFactory:Z

    if-eqz v9, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactoryCreatedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    goto :goto_0

    :goto_1
    iget-boolean v10, p0, Landroidx/compose/foundation/ScrollingContainerNode;->enabled:Z

    iget-object v5, p0, Landroidx/compose/foundation/ScrollingContainerNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v8, p0, Landroidx/compose/foundation/ScrollingContainerNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v4, p0, Landroidx/compose/foundation/ScrollingContainerNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Landroidx/compose/foundation/ScrollingContainerNode;->update(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V

    :cond_1
    return-void
.end method

.method public final onObservedReadsChanged()V
    .locals 11

    sget-object v0, Landroidx/compose/foundation/OverscrollKt;->LocalOverscrollFactory:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactory:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactory:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactoryCreatedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingContainerNode;->overscrollNode:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_0
    iput-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->overscrollNode:Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollingContainerNode;->attachOverscrollNodeIfNeeded()V

    iget-object v2, p0, Landroidx/compose/foundation/ScrollingContainerNode;->scrollableNode:Landroidx/compose/foundation/gestures/ScrollableNode;

    if-eqz v2, :cond_2

    iget-object v7, p0, Landroidx/compose/foundation/ScrollingContainerNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v6, p0, Landroidx/compose/foundation/ScrollingContainerNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->useLocalOverscrollFactory:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactoryCreatedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    goto :goto_0

    :goto_1
    iget-boolean v9, p0, Landroidx/compose/foundation/ScrollingContainerNode;->enabled:Z

    iget-boolean v10, p0, Landroidx/compose/foundation/ScrollingContainerNode;->shouldReverseDirection:Z

    iget-object v5, p0, Landroidx/compose/foundation/ScrollingContainerNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v8, p0, Landroidx/compose/foundation/ScrollingContainerNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object v4, p0, Landroidx/compose/foundation/ScrollingContainerNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-virtual/range {v2 .. v10}, Landroidx/compose/foundation/gestures/ScrollableNode;->update(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V

    :cond_2
    return-void
.end method

.method public final shouldReverseDirection()Z
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iget-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final update(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V
    .locals 9

    move/from16 v0, p7

    iput-object p5, p0, Landroidx/compose/foundation/ScrollingContainerNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-object p4, p0, Landroidx/compose/foundation/ScrollingContainerNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingContainerNode;->useLocalOverscrollFactory:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->useLocalOverscrollFactory:Z

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Landroidx/compose/foundation/ScrollingContainerNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object p1, p0, Landroidx/compose/foundation/ScrollingContainerNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move/from16 v7, p8

    goto :goto_4

    :cond_3
    :goto_3
    iget-object p1, p0, Landroidx/compose/foundation/ScrollingContainerNode;->overscrollNode:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/ScrollingContainerNode;->overscrollNode:Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollingContainerNode;->attachOverscrollNodeIfNeeded()V

    goto :goto_2

    :goto_4
    iput-boolean v7, p0, Landroidx/compose/foundation/ScrollingContainerNode;->enabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/ScrollingContainerNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p6, p0, Landroidx/compose/foundation/ScrollingContainerNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-object p2, p0, Landroidx/compose/foundation/ScrollingContainerNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollingContainerNode;->shouldReverseDirection()Z

    move-result v8

    iput-boolean v8, p0, Landroidx/compose/foundation/ScrollingContainerNode;->shouldReverseDirection:Z

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->scrollableNode:Landroidx/compose/foundation/gestures/ScrollableNode;

    if-eqz v0, :cond_6

    iget-boolean p1, p0, Landroidx/compose/foundation/ScrollingContainerNode;->useLocalOverscrollFactory:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->localOverscrollFactoryCreatedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    :goto_5
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    goto :goto_6

    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/ScrollingContainerNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    goto :goto_5

    :goto_6
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollableNode;->update(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V

    :cond_6
    return-void
.end method
