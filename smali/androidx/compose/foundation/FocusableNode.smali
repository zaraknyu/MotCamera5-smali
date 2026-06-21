.class public final Landroidx/compose/foundation/FocusableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/TraversableNode;


# static fields
.field public static final TraverseKey:Landroidx/compose/foundation/NoIndicationInstance;


# instance fields
.field public final focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

.field public focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

.field public globalLayoutCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

.field public interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final onFocusChange:Landroidx/room/InvalidationTracker$implementation$1;

.field public pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

.field public requestFocus:Landroidx/compose/runtime/Pending$keyMap$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/NoIndicationInstance;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/compose/foundation/NoIndicationInstance;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/FocusableNode;->TraverseKey:Landroidx/compose/foundation/NoIndicationInstance;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/room/InvalidationTracker$implementation$1;)V
    .locals 9

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-object p2, p0, Landroidx/compose/foundation/FocusableNode;->onFocusChange:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance v0, Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x2

    const-class v3, Landroidx/compose/foundation/FocusableNode;

    const-string v4, "onFocusStateChange"

    const-string v5, "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    new-instance p0, Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(ILkotlin/jvm/functions/Function2;I)V

    invoke-virtual {v2, p0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object p0, v2, Landroidx/compose/foundation/FocusableNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    return-void
.end method


# virtual methods
.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    move-result v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->requestFocus:Landroidx/compose/runtime/Pending$keyMap$2;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/Pending$keyMap$2;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->requestFocus:Landroidx/compose/runtime/Pending$keyMap$2;

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode;->requestFocus:Landroidx/compose/runtime/Pending$keyMap$2;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    return-void
.end method

.method public final emitWithFallback(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/interaction/Interaction;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/ContextScope;

    iget-object v0, v0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p1, p2}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    new-instance v2, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;

    invoke-direct {v2, p1, p2, v0, v1}, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/DisposableHandle;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)V

    return-void
.end method

.method public final getFocusedBoundsObserver()Landroidx/compose/foundation/FocusedBoundsObserverNode;
    .locals 9

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_b

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    :goto_1
    if-eqz v0, :cond_9

    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    move-object v2, v0

    move-object v4, v1

    :goto_2
    if-eqz v2, :cond_8

    instance-of v5, v2, Landroidx/compose/ui/node/TraversableNode;

    if-eqz v5, :cond_1

    check-cast v2, Landroidx/compose/ui/node/TraversableNode;

    invoke-interface {v2}, Landroidx/compose/ui/node/TraversableNode;->getTraverseKey()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/FocusedBoundsObserverNode;->TraverseKey:Landroidx/compose/foundation/NoIndicationInstance;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_1
    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_7

    instance-of v5, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_7

    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x1

    if-eqz v5, :cond_6

    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_2

    move-object v2, v5

    goto :goto_4

    :cond_2
    if-nez v4, :cond_3

    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_4
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_6
    if-ne v6, v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_2

    :cond_8
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    goto :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_0

    :cond_b
    move-object v2, v1

    :goto_5
    instance-of p0, v2, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    if-eqz p0, :cond_c

    check-cast v2, Landroidx/compose/foundation/FocusedBoundsObserverNode;

    return-object v2

    :cond_c
    return-object v1
.end method

.method public final getTraverseKey()Ljava/lang/Object;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/FocusableNode;->TraverseKey:Landroidx/compose/foundation/NoIndicationInstance;

    return-object p0
.end method

.method public final onGloballyPositioned(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->globalLayoutCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/FocusableNode;->globalLayoutCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableNode;->getFocusedBoundsObserver()Landroidx/compose/foundation/FocusedBoundsObserverNode;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode;->globalLayoutCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/FocusedBoundsObserverNode;->onFocusBoundsChanged(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableNode;->getFocusedBoundsObserver()Landroidx/compose/foundation/FocusedBoundsObserverNode;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusedBoundsObserverNode;->onFocusBoundsChanged(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onObservedReadsChanged()V
    .locals 3

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->release()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->pin()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    :cond_2
    return-void
.end method

.method public final onReset()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->pinnedHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    return-void
.end method

.method public final update(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    invoke-direct {v2, v1}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->focusedInteraction:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    :cond_1
    return-void
.end method
