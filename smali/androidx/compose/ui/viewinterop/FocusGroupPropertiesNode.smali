.class public final Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field public attachedViewTreeObserver:Landroid/view/ViewTreeObserver;

.field public focusedChild:Landroid/view/View;

.field public final onEnter:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;

.field public final onExit:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    new-instance v0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;-><init>(Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;I)V

    iput-object v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->onEnter:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;

    new-instance v0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;-><init>(Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;I)V

    iput-object v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->onExit:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;

    return-void
.end method


# virtual methods
.method public final applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->setCanFocus(Z)V

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->onEnter:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->setOnEnter(Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;)V

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->onExit:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;

    invoke-interface {p1, p0}, Landroidx/compose/ui/focus/FocusProperties;->setOnExit(Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;)V

    return-void
.end method

.method public final getFocusTargetOfEmbeddedViewWrapper()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "visitLocalDescendants called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p0, :cond_a

    iget v2, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_9

    instance-of v5, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v1, :cond_1

    return-object v3

    :cond_1
    move v1, v6

    goto :goto_4

    :cond_2
    iget v5, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_8

    instance-of v5, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_8

    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v7, v0

    :goto_2
    if-eqz v5, :cond_7

    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_6

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_3

    move-object v3, v5

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_5
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_7
    if-ne v7, v6, :cond_8

    goto :goto_1

    :cond_8
    :goto_4
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_1

    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find focus target of embedded view wrapper"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onAttach()V
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->attachedViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public final onDetach()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->attachedViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->attachedViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    iput-object v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    return-void
.end method

.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$getEmbeddedView(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0, p1}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$containsDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, p2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$containsDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    return-void

    :cond_3
    if-eqz v0, :cond_5

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->getFocusTargetOfEmbeddedViewWrapper()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->performRequestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    return-void

    :cond_4
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    const/4 p2, 0x0

    if-eqz p1, :cond_7

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->getFocusTargetOfEmbeddedViewWrapper()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x8

    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {v1, p0, v4, v4}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    :cond_6
    :goto_2
    return-void

    :cond_7
    iput-object p2, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    return-void
.end method
