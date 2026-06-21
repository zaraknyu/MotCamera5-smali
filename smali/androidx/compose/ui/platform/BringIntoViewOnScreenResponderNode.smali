.class public final Landroidx/compose/ui/platform/BringIntoViewOnScreenResponderNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/relocation/BringIntoViewModifierNode;


# instance fields
.field public view:Landroid/view/ViewGroup;


# virtual methods
.method public final bringIntoView(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/platform/BringIntoViewOnScreenResponderNode;->view:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/compose/ui/graphics/Brush;->toAndroidRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
