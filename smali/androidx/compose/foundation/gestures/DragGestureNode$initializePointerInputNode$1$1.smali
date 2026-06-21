.class public final Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $onDrag:Landroidx/compose/material3/ButtonKt$Button$2$1;

.field public final synthetic $onDragCancel:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

.field public final synthetic $onDragEnd:Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

.field public final synthetic $onDragStart:Landroidx/compose/foundation/IndicationKt$indication$2;

.field public final synthetic $shouldAwaitTouchSlop:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

.field public final synthetic $this_SuspendingPointerInputModifierNode:Landroidx/compose/ui/input/pointer/PointerInputScope;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollableNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollableNode;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/IndicationKt$indication$2;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;Landroidx/compose/material3/ButtonKt$Button$2$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$this_SuspendingPointerInputModifierNode:Landroidx/compose/ui/input/pointer/PointerInputScope;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDragStart:Landroidx/compose/foundation/IndicationKt$indication$2;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDragEnd:Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDragCancel:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$shouldAwaitTouchSlop:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDrag:Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$shouldAwaitTouchSlop:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    iget-object v7, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDrag:Landroidx/compose/material3/ButtonKt$Button$2$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$this_SuspendingPointerInputModifierNode:Landroidx/compose/ui/input/pointer/PointerInputScope;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDragStart:Landroidx/compose/foundation/IndicationKt$indication$2;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDragEnd:Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    iget-object v5, p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDragCancel:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/IndicationKt$indication$2;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;Landroidx/compose/material3/ButtonKt$Button$2$1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableNode;

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    iget-object v9, v4, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v15, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$this_SuspendingPointerInputModifierNode:Landroidx/compose/ui/input/pointer/PointerInputScope;

    iget-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDragStart:Landroidx/compose/foundation/IndicationKt$indication$2;

    iget-object v13, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDragEnd:Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    iget-object v12, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDragCancel:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$shouldAwaitTouchSlop:Landroidx/compose/foundation/gestures/ScrollableNode$scrollingLogic$1;

    iget-object v11, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->$onDrag:Landroidx/compose/material3/ButtonKt$Button$2$1;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1$1;->label:I

    sget v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v14}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v15, v6, v0}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    if-ne v0, v1, :cond_4

    return-object v1

    :goto_1
    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_2
    iget-object v2, v4, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz v2, :cond_3

    sget-object v4, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-interface {v2, v4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    throw v0
.end method
