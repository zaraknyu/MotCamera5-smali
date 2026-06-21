.class public final Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;->this$0:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;->this$0:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;

    invoke-static {p0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$getEmbeddedView(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object p0

    iget v2, p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->requestedFocusDirection:I

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->toAndroidFocusDirection-3ESFkO8(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$getCurrentlyFocusedRect(Landroidx/compose/ui/focus/FocusOwner;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {v0, v2, p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->requestInteropFocus(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled:Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$onExit$1;->this$0:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;

    invoke-static {p0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$getEmbeddedView(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object v2

    instance-of v3, v0, Landroid/view/ViewGroup;

    const-string v4, "host view did not take focus"

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$getCurrentlyFocusedRect(Landroidx/compose/ui/focus/FocusOwner;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v3, p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->requestedFocusDirection:I

    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTraversalKt;->toAndroidFocusDirection-3ESFkO8(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_3
    const/16 v3, 0x82

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    if-eqz p0, :cond_4

    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, p0, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v5, p0, v1, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_5

    invoke-static {v0, p0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$containsDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled:Z

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
