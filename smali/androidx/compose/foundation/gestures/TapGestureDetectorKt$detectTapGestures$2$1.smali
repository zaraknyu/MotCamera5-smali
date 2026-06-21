.class public final Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $onDoubleTap:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onLongPress:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onPress:Lkotlin/jvm/functions/Function3;

.field public final synthetic $onTap:Lkotlin/jvm/functions/Function1;

.field public final synthetic $pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onPress:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onDoubleTap:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onTap:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;

    iget-object v5, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onTap:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onPress:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onDoubleTap:Lkotlin/jvm/functions/Function1;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->label:I

    const/4 v3, 0x3

    iget-object v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onDoubleTap:Lkotlin/jvm/functions/Function1;

    sget-object v6, Landroidx/compose/foundation/gestures/LongPressResult$Success;->INSTANCE:Landroidx/compose/foundation/gestures/LongPressResult$Success;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onPress:Lkotlin/jvm/functions/Function3;

    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onTap:Lkotlin/jvm/functions/Function1;

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v10, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x1

    iget-object v12, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    const/4 v13, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    move-object v9, v12

    goto/16 :goto_b

    :pswitch_1
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/Job;

    iget-object v11, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    move-object v14, v11

    move-object v9, v12

    move-object v11, v2

    move-object v2, v7

    move-object/from16 v7, p1

    goto/16 :goto_9

    :pswitch_2
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object/from16 v17, v9

    move-object v9, v12

    move-object/from16 v0, p1

    goto/16 :goto_8

    :pswitch_3
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v14, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    move-object/from16 v16, v12

    goto/16 :goto_7

    :pswitch_4
    iget-object v0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v14, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v15, p1

    goto/16 :goto_2

    :pswitch_6
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v14, p1

    goto :goto_1

    :pswitch_7
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v14, p1

    goto :goto_0

    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    iput v11, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->label:I

    invoke-static {v2, v0, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;I)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v1, :cond_0

    goto/16 :goto_a

    :cond_0
    :goto_0
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    sget-object v15, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    sget-object v15, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v3, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$resetJob$1;

    invoke-direct {v3, v12, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$resetJob$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v13, v15, v3, v11}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v3

    sget-object v15, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    if-eq v7, v15, :cond_1

    new-instance v15, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;

    invoke-direct {v15, v7, v12, v14, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v3, v15}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_1
    if-nez v10, :cond_3

    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    const/4 v14, 0x2

    iput v14, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->label:I

    sget-object v14, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-static {v2, v14, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForUpOrCancellation(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v1, :cond_2

    goto/16 :goto_a

    :cond_2
    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_1
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    goto :goto_5

    :cond_3
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$2:Ljava/lang/Object;

    const/4 v15, 0x3

    iput v15, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->label:I

    sget-object v15, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-static {v2, v15, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForLongPress(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v1, :cond_4

    goto/16 :goto_a

    :cond_4
    move-object/from16 v18, v14

    move-object v14, v2

    move-object v2, v3

    move-object/from16 v3, v18

    :goto_2
    check-cast v15, Landroidx/compose/foundation/gestures/LongPressResult;

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    iget-wide v5, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v10, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->label:I

    invoke-static {v14, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->access$consumeUntilUp(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    goto/16 :goto_a

    :cond_5
    move-object v0, v2

    :goto_3
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$2;

    invoke-direct {v1, v12, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$2;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v0, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-object v9

    :cond_6
    instance-of v3, v15, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    if-eqz v3, :cond_7

    check-cast v15, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    iget-object v3, v15, Landroidx/compose/foundation/gestures/LongPressResult$Released;->finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;

    goto :goto_4

    :cond_7
    instance-of v3, v15, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    if-eqz v3, :cond_17

    move-object v3, v13

    :goto_4
    move-object/from16 v18, v14

    move-object v14, v3

    move-object/from16 v3, v18

    :goto_5
    if-nez v14, :cond_8

    new-instance v15, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$3;

    invoke-direct {v15, v12, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v15}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v2

    goto :goto_6

    :cond_8
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    new-instance v15, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$4;

    invoke-direct {v15, v12, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$4;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v15}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v2

    :goto_6
    if-eqz v14, :cond_9

    if-nez v5, :cond_a

    if-eqz v8, :cond_9

    iget-wide v0, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_9
    move-object/from16 v17, v9

    goto/16 :goto_d

    :cond_a
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$2:Ljava/lang/Object;

    const/4 v15, 0x5

    iput v15, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->label:I

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v15

    move-object/from16 v16, v12

    invoke-interface {v15}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapTimeoutMillis()J

    move-result-wide v11

    new-instance v15, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitSecondDown$2;

    invoke-direct {v15, v14, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitSecondDown$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v3, v11, v12, v15, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->withTimeoutOrNull(JLandroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitSecondDown$2;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_b

    goto/16 :goto_a

    :cond_b
    move-object/from16 v18, v14

    move-object v14, v3

    move-object/from16 v3, v18

    :goto_7
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v11, :cond_c

    if-eqz v8, :cond_9

    iget-wide v0, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_c
    sget-object v12, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    sget-object v12, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v15, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$5;

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    invoke-direct {v15, v2, v9, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$5;-><init>(Lkotlinx/coroutines/Job;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    invoke-static {v4, v13, v12, v15, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v2

    sget-object v12, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    if-eq v7, v12, :cond_d

    new-instance v12, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$6;

    invoke-direct {v12, v7, v9, v11, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$6;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v12}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_d
    if-nez v10, :cond_f

    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x6

    iput v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->label:I

    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-static {v14, v6, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForUpOrCancellation(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_e

    goto :goto_a

    :cond_e
    move-object v1, v3

    :goto_8
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    goto :goto_c

    :cond_f
    iput-object v14, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$2:Ljava/lang/Object;

    iput-object v11, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v7, 0x7

    iput v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->label:I

    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-static {v14, v7, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForLongPress(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_10

    goto :goto_a

    :cond_10
    :goto_9
    check-cast v7, Landroidx/compose/foundation/gestures/LongPressResult;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-wide v5, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v10, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$1:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$2:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/16 v3, 0x8

    iput v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->label:I

    invoke-static {v14, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->access$consumeUntilUp(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_11

    :goto_a
    return-object v1

    :cond_11
    move-object v0, v2

    :goto_b
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$secondUp$1;

    invoke-direct {v1, v9, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$secondUp$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v0, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-object v17

    :cond_12
    instance-of v0, v7, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    if-eqz v0, :cond_13

    check-cast v7, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    iget-object v0, v7, Landroidx/compose/foundation/gestures/LongPressResult$Released;->finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object v1, v3

    goto :goto_c

    :cond_13
    instance-of v0, v7, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    if-eqz v0, :cond_15

    move-object v1, v3

    move-object v0, v13

    :goto_c
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$7;

    invoke-direct {v1, v9, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$7;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-wide v0, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v17

    :cond_14
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$8;

    invoke-direct {v0, v9, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$8;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v8, :cond_16

    iget-wide v0, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v17

    :cond_15
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    :goto_d
    return-object v17

    :cond_17
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
