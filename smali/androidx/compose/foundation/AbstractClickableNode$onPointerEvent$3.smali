.class public final Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1$1;

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0

    :pswitch_0
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    new-instance v4, Landroidx/compose/foundation/IndicationKt$indication$2;

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;->this$0:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroidx/compose/foundation/gestures/ScrollableNode;

    const/4 p0, 0x2

    invoke-direct {v4, p0, v2, v0}, Landroidx/compose/foundation/IndicationKt$indication$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    const/4 p0, 0x6

    invoke-direct {v5, v0, p1, v2, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v6, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    const/4 p0, 0x1

    invoke-direct {v6, v2, p0}, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V

    new-instance v7, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    const/4 p0, 0x2

    invoke-direct {v7, v2, p0}, Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V

    new-instance v8, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/4 p0, 0x1

    invoke-direct {v8, p0, v0, v2}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/IndicationKt$indication$2;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;Landroidx/compose/material3/ButtonKt$Button$2$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p2}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-object p0

    :pswitch_1
    move-object v3, p1

    new-instance p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1;

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object p0

    :pswitch_2
    move-object v3, p1

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/AbstractClickableNode;

    invoke-virtual {p0, v3, p2}, Landroidx/compose/foundation/AbstractClickableNode;->clickPointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
