.class public final Landroidx/compose/foundation/ClickableNode;
.super Landroidx/compose/foundation/AbstractClickableNode;
.source "SourceFile"


# virtual methods
.method public final clickPointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    new-instance v2, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v2, p0, v0, v1}, Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;I)V

    new-instance v3, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/4 v0, 0x5

    invoke-direct {v3, v0, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    sget-object p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    new-instance v4, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    invoke-direct {v4, p1}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;-><init>(Landroidx/compose/ui/unit/Density;)V

    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/ClickableNode$clickPointerInput$2;Landroidx/compose/runtime/Recomposer$effectJob$1$1;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object p2
.end method

.method public final onClickKeyDownEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onClickKeyUpEvent-ZmokQxo(Landroid/view/KeyEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
