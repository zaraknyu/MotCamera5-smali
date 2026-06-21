.class public final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $onDrag:Lkotlin/jvm/functions/Function2;

.field public final synthetic $onDragCancel:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onDragEnd:Lkotlin/jvm/internal/Lambda;

.field public final synthetic $onDragStart:Lkotlin/jvm/internal/Lambda;

.field public final synthetic $orientationLock:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic $overSlop:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic $shouldAwaitTouchSlop:Lkotlin/jvm/internal/Lambda;

.field public F$0:F

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Lkotlin/jvm/internal/Ref$LongRef;

.field public L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

.field public L$6:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public Z$0:Z

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$shouldAwaitTouchSlop:Lkotlin/jvm/internal/Lambda;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$overSlop:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    check-cast p4, Lkotlin/jvm/internal/Lambda;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDragStart:Lkotlin/jvm/internal/Lambda;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDrag:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    check-cast p7, Lkotlin/jvm/internal/Lambda;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDragEnd:Lkotlin/jvm/internal/Lambda;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDragEnd:Lkotlin/jvm/internal/Lambda;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$shouldAwaitTouchSlop:Lkotlin/jvm/internal/Lambda;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$overSlop:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDragStart:Lkotlin/jvm/internal/Lambda;

    iget-object v5, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDrag:Lkotlin/jvm/functions/Function2;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->label:I

    const/4 v3, 0x2

    iget-object v8, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v11, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$overSlop:Lkotlin/jvm/internal/Ref$LongRef;

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    const/4 v14, 0x0

    goto/16 :goto_28

    :pswitch_1
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->F$0:F

    iget-object v15, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$6:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    const-wide v18, 0x7fffffff7fffffffL

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    iget-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v5

    move-object v5, v7

    move-object v3, v8

    const-wide/16 v12, 0x0

    move-object v8, v4

    move-object v7, v6

    move-object v6, v9

    move-object v4, v14

    goto/16 :goto_23

    :pswitch_2
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->F$0:F

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    iget-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v10

    move-object v10, v5

    move-object v5, v7

    move-object v7, v6

    move-object v6, v12

    move v12, v3

    move-object v3, v8

    move-object v8, v4

    move-object v4, v9

    move-object/from16 v9, p1

    goto/16 :goto_1b

    :pswitch_3
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    move-object v3, v8

    goto/16 :goto_14

    :pswitch_4
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->F$0:F

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$6:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    iget-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v9

    move-object v9, v5

    move-object v5, v3

    move-object v3, v10

    move-object v10, v7

    move-object v7, v3

    move-object v3, v8

    goto/16 :goto_e

    :pswitch_5
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->F$0:F

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    iget-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v9

    move-object v9, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v14

    move-object v14, v10

    move-object v10, v6

    move-object v6, v14

    move-object/from16 v14, p1

    goto/16 :goto_6

    :pswitch_6
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget-boolean v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->Z$0:Z

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_1

    :pswitch_7
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    :cond_0
    move-object v5, v2

    goto :goto_0

    :pswitch_8
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    iput v13, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->label:I

    invoke-static {v2, v12, v4, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_0

    goto/16 :goto_27

    :goto_0
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$shouldAwaitTouchSlop:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    :cond_1
    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    iput-boolean v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->Z$0:Z

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->label:I

    invoke-static {v5, v0, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_2

    goto/16 :goto_27

    :cond_2
    :goto_1
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    const-wide/16 v9, 0x0

    iput-wide v9, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    if-eqz v2, :cond_14

    :goto_2
    iget-wide v9, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    iget v2, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    iget-object v4, v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-object v4, v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v4, v9, v10}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v8

    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_f

    :cond_3
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v4

    if-ne v2, v3, :cond_4

    invoke-interface {v4}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v2

    sget v4, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    mul-float/2addr v2, v4

    goto :goto_4

    :cond_4
    invoke-interface {v4}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v2

    :goto_4
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-wide v9, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v7, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v9, 0x1

    const-wide/16 v14, 0x0

    invoke-direct {v7, v8, v14, v15, v9}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(Ljava/lang/Object;JI)V

    move-object v9, v7

    move-object v10, v11

    move-object v7, v6

    move-object v6, v5

    :goto_5
    iput-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v14, 0x0

    iput-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$6:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->F$0:F

    const/4 v14, 0x3

    iput v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->label:I

    sget-object v14, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-virtual {v5, v14, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v1, :cond_5

    goto/16 :goto_27

    :cond_5
    :goto_6
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v15, v14, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v13

    :goto_7
    if-ge v12, v13, :cond_7

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move/from16 v21, v12

    move/from16 p1, v13

    iget-wide v12, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    move-object/from16 v22, v7

    move-object v3, v8

    iget-wide v7, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v12, v13, v7, v8}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v12, v21, 0x1

    move/from16 v13, p1

    move-object v8, v3

    move-object/from16 v7, v22

    const/4 v3, 0x2

    goto :goto_7

    :cond_7
    move-object/from16 v22, v7

    move-object v3, v8

    const/16 v20, 0x0

    :goto_8
    move-object/from16 v7, v20

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v7, :cond_8

    :goto_9
    move-object v5, v6

    move-object/from16 v6, v22

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_9

    :cond_9
    invoke-static {v7}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v7, v14, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v8, :cond_b

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v14, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-eqz v14, :cond_a

    goto :goto_b

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_b
    const/4 v13, 0x0

    :goto_b
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v13, :cond_c

    goto :goto_9

    :cond_c
    iget-wide v7, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    iput-wide v7, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_c

    :cond_d
    invoke-virtual {v9, v7, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->addPointerInputChange-dBAh8RU(Landroidx/compose/ui/input/pointer/PointerInputChange;F)J

    move-result-wide v12

    and-long v14, v12, v18

    cmp-long v8, v14, v16

    if-eqz v8, :cond_f

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    iput-wide v12, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v8

    if-eqz v8, :cond_e

    move-object v5, v6

    move-object/from16 v6, v22

    goto :goto_f

    :cond_e
    const-wide/16 v14, 0x0

    iput-wide v14, v9, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    :goto_c
    move-object v8, v3

    move-object/from16 v7, v22

    :goto_d
    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_f
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    move-object/from16 v12, v22

    iput-object v12, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iput-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$6:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->F$0:F

    const/4 v13, 0x4

    iput v13, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->label:I

    invoke-virtual {v5, v8, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_10

    goto/16 :goto_27

    :cond_10
    move-object v14, v6

    move-object v6, v4

    move-object v4, v7

    move-object v7, v12

    :goto_e
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v6, v7

    move-object v5, v14

    goto/16 :goto_3

    :goto_f
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_10

    :cond_11
    move-object v8, v3

    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_12
    :goto_10
    move-object v4, v7

    goto :goto_11

    :cond_13
    move-object v8, v3

    move-object v4, v6

    move-object v6, v14

    goto :goto_d

    :cond_14
    move-object v3, v8

    :goto_11
    if-nez v4, :cond_2c

    iget-object v2, v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-object v2, v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v7, :cond_2c

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-eqz v9, :cond_2b

    move-object v2, v4

    move-object v4, v6

    :goto_13
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    iput-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iput-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$6:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v7, 0x5

    iput v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->label:I

    invoke-virtual {v5, v6, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_15

    goto/16 :goto_27

    :cond_15
    :goto_14
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v6, v6, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v7, :cond_18

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v7, :cond_18

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-eqz v9, :cond_16

    goto :goto_13

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_18
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v7, :cond_2a

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-eqz v9, :cond_29

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v2, :cond_19

    iget-wide v9, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    goto :goto_18

    :cond_19
    const-wide/16 v9, 0x0

    :goto_18
    iget-wide v6, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v9, v10, v6, v7}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v6

    iget-wide v8, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    iget v2, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    iget-object v10, v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-object v10, v10, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v10, v8, v9}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v10

    if-eqz v10, :cond_1a

    move-object v6, v4

    const/4 v4, 0x0

    const-wide/16 v12, 0x0

    goto/16 :goto_11

    :cond_1a
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v10

    const/4 v12, 0x2

    if-ne v2, v12, :cond_1b

    invoke-interface {v10}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v2

    sget v10, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    mul-float/2addr v2, v10

    goto :goto_19

    :cond_1b
    invoke-interface {v10}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v2

    :goto_19
    new-instance v10, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-wide v8, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v8, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v9, 0x1

    invoke-direct {v8, v3, v6, v7, v9}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(Ljava/lang/Object;JI)V

    move-object v6, v5

    move-object v7, v11

    :goto_1a
    iput-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v8, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v14, 0x0

    iput-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$6:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->F$0:F

    const/4 v9, 0x6

    iput v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->label:I

    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-virtual {v5, v9, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_1c

    goto/16 :goto_27

    :cond_1c
    :goto_1b
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v13, v9, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1c
    if-ge v15, v14, :cond_1e

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v12, v20

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 v21, v13

    iget-wide v12, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    move/from16 p1, v14

    move/from16 v22, v15

    iget-wide v14, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v12

    if-eqz v12, :cond_1d

    move-object/from16 v14, v20

    goto :goto_1d

    :cond_1d
    add-int/lit8 v15, v22, 0x1

    move/from16 v14, p1

    move-object/from16 v13, v21

    const/4 v12, 0x2

    goto :goto_1c

    :cond_1e
    const/4 v14, 0x0

    :goto_1d
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v15, :cond_1f

    :goto_1e
    move-object v5, v6

    const-wide/16 v12, 0x0

    :goto_1f
    move-object v6, v4

    const/4 v4, 0x0

    goto/16 :goto_11

    :cond_1f
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v12

    if-eqz v12, :cond_20

    goto :goto_1e

    :cond_20
    invoke-static {v15}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v12

    if-eqz v12, :cond_24

    iget-object v9, v9, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_20
    if-ge v13, v12, :cond_22

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v15, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-eqz v15, :cond_21

    goto :goto_21

    :cond_21
    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_22
    const/4 v14, 0x0

    :goto_21
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v14, :cond_23

    goto :goto_1e

    :cond_23
    iget-wide v12, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    iput-wide v12, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v12, 0x0

    goto :goto_22

    :cond_24
    invoke-virtual {v8, v15, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->addPointerInputChange-dBAh8RU(Landroidx/compose/ui/input/pointer/PointerInputChange;F)J

    move-result-wide v12

    and-long v12, v12, v18

    cmp-long v9, v12, v16

    if-eqz v9, :cond_27

    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    const/4 v9, 0x0

    invoke-static {v15, v9}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v12

    iput-wide v12, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v9

    if-eqz v9, :cond_25

    move-object v5, v6

    const-wide/16 v12, 0x0

    move-object v6, v4

    move-object v4, v15

    goto/16 :goto_11

    :cond_25
    const-wide/16 v12, 0x0

    iput-wide v12, v8, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    :cond_26
    :goto_22
    const/4 v12, 0x2

    goto/16 :goto_1a

    :cond_27
    const-wide/16 v12, 0x0

    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v8, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iput-object v15, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$6:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->F$0:F

    const/4 v14, 0x7

    iput v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->label:I

    invoke-virtual {v5, v9, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_28

    goto/16 :goto_27

    :cond_28
    :goto_23
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v9

    if-eqz v9, :cond_26

    move-object v5, v6

    goto/16 :goto_1f

    :cond_29
    const-wide/16 v12, 0x0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_17

    :cond_2a
    move-object v6, v4

    move-object v4, v2

    goto/16 :goto_11

    :cond_2b
    const-wide/16 v12, 0x0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12

    :cond_2c
    if-eqz v4, :cond_3d

    iget-wide v7, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v7, v8}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDragStart:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v7, v6, v4, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v6, v7}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDrag:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v4, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    iget-object v2, v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-object v2, v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v2, v7, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v2

    if-eqz v2, :cond_2d

    :goto_24
    const/4 v14, 0x0

    goto/16 :goto_30

    :cond_2d
    :goto_25
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-wide v7, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v4, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v3

    :goto_26
    iput-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$4:Lkotlin/jvm/internal/Ref$LongRef;

    const/4 v14, 0x0

    iput-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$5:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iput-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->L$6:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/16 v7, 0x8

    iput v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->label:I

    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-virtual {v3, v7, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_2e

    :goto_27
    return-object v1

    :cond_2e
    :goto_28
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v8, v7, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_29
    if-ge v10, v9, :cond_30

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v12, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    iget-wide v14, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v12

    if-eqz v12, :cond_2f

    move-object v14, v11

    goto :goto_2a

    :cond_2f
    add-int/lit8 v10, v10, 0x1

    const/4 v14, 0x0

    goto :goto_29

    :cond_30
    const/4 v14, 0x0

    :goto_2a
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v14, :cond_31

    const/4 v7, 0x1

    const/4 v14, 0x0

    goto :goto_2f

    :cond_31
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v8

    if-eqz v8, :cond_35

    iget-object v7, v7, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2b
    if-ge v9, v8, :cond_33

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v11, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-eqz v11, :cond_32

    goto :goto_2c

    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_33
    const/4 v10, 0x0

    :goto_2c
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v10, :cond_34

    const/4 v7, 0x1

    goto :goto_2f

    :cond_34
    iget-wide v7, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    iput-wide v7, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/4 v7, 0x1

    goto :goto_26

    :cond_35
    const/4 v7, 0x1

    invoke-static {v14, v7}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v8

    if-nez v4, :cond_36

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v8

    goto :goto_2e

    :cond_36
    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v4, v10, :cond_37

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    :goto_2d
    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    goto :goto_2e

    :cond_37
    const/16 v10, 0x20

    shr-long/2addr v8, v10

    goto :goto_2d

    :goto_2e
    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-nez v8, :cond_38

    goto/16 :goto_26

    :cond_38
    :goto_2f
    if-nez v14, :cond_39

    goto/16 :goto_24

    :cond_39
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_3a

    goto/16 :goto_24

    :cond_3a
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :goto_30
    if-nez v14, :cond_3b

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_31

    :cond_3b
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$9;->$onDragEnd:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_3c
    const/4 v9, 0x0

    invoke-static {v14, v9}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v2

    new-instance v8, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v8, v2, v3}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v5, v14, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    iget-wide v2, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    move-object v7, v6

    move-object v6, v5

    move-object v5, v7

    move-wide v7, v2

    move-object v3, v4

    goto/16 :goto_25

    :cond_3d
    :goto_31
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

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
