.class public final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animationState:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $speed:F

.field public final synthetic $targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final synthetic $threshold:F

.field public I$0:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;FLcom/motorola/camera/fsm/camera/CameraState$1;FLandroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$animationState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p4, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$threshold:F

    iput-object p5, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    iput p6, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$speed:F

    iput-object p7, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;

    iget v6, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$speed:F

    iget-object v7, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$animationState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget v4, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$threshold:F

    iget-object v5, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;FLcom/motorola/camera/fsm/camera/CameraState$1;FLandroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v7, p0

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    iget-object v1, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetScrollDelta:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$targetValue:Lkotlin/jvm/internal/Ref$FloatRef;

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    iget-object v12, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$animationState:Lkotlin/jvm/internal/Ref$ObjectRef;

    if-eqz v0, :cond_3

    if-eq v0, v11, :cond_2

    if-eq v0, v10, :cond_1

    if-ne v0, v9, :cond_0

    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v6, v3

    move-object v13, v4

    move-object v4, v12

    move-object/from16 v0, p1

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->I$0:I

    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object v11, v3

    move-object v13, v4

    goto/16 :goto_3

    :cond_2
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v3

    move-object v13, v4

    move-object v4, v12

    move-object v12, v0

    move-object/from16 v0, p1

    goto/16 :goto_8

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-boolean v11, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v6, v3

    :goto_0
    iget-boolean v3, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v19, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v3, :cond_c

    const/4 v13, 0x0

    iput-boolean v13, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget v3, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    iget-object v4, v4, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    iget-boolean v4, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->shouldApplyImmediately:Z

    iget-object v5, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    if-nez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v14, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$threshold:F

    cmpg-float v4, v4, v14

    if-gez v4, :cond_5

    :cond_4
    move-object v13, v0

    move-object v4, v12

    goto/16 :goto_6

    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v14

    invoke-static {v5, v0, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->access$dispatchMouseWheelScroll(Lcom/motorola/camera/fsm/camera/CameraState$1;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;F)F

    iget-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    iget-object v5, v4, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    add-float/2addr v5, v3

    const/4 v3, 0x0

    const/16 v14, 0x1e

    invoke-static {v4, v5, v3, v14}, Landroidx/compose/animation/core/ArcSplineKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v3

    iput-object v3, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget v4, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$speed:F

    div-float/2addr v3, v4

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_6

    move v14, v4

    goto :goto_1

    :cond_6
    move v14, v3

    :goto_1
    iget-object v3, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Landroidx/compose/animation/core/AnimationState;

    iget v3, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v17, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;

    iget-object v5, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    move-object v4, v2

    iget-object v2, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    move v11, v3

    move-object v3, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraState$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    iput-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    iput-object v6, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v3, 0x0

    iput-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput v14, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->I$0:I

    iput v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v4, v15, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v11}, Ljava/lang/Float;-><init>(F)V

    sget-object v4, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-static {v14, v13, v4, v10}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    new-instance v13, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;

    const/16 v18, 0x2

    move-object/from16 v16, v0

    move v11, v14

    move-object v0, v15

    move-object v15, v2

    move-object v14, v3

    invoke-direct/range {v13 .. v18}, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v2, v4

    move-object v4, v13

    move-object/from16 v13, v16

    const/4 v3, 0x1

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateTo(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v0, v19

    :goto_2
    if-ne v0, v8, :cond_8

    goto :goto_7

    :cond_8
    move v0, v11

    move-object v11, v6

    :goto_3
    iget-boolean v1, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_a

    const-wide/16 v1, 0x32

    int-to-long v3, v0

    sub-long v5, v1, v3

    iput-object v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    iput-object v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    move-object v4, v12

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static/range {v0 .. v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->access$dispatchMouseWheelScroll$waitNextScrollDelta(Lcom/motorola/camera/fsm/camera/CameraState$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_9

    goto :goto_7

    :cond_9
    move-object v6, v11

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v12, v4

    move-object v0, v13

    :goto_5
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    move-object v6, v11

    move-object v0, v13

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    goto :goto_5

    :goto_6
    invoke-static {v5, v13, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->access$dispatchMouseWheelScroll(Lcom/motorola/camera/fsm/camera/CameraState$1;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;F)F

    iput-object v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$0:Ljava/lang/Object;

    iput-object v6, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v6, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v11, 0x1

    iput v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->label:I

    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->this$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->$this_dispatchMouseWheelScroll:Landroidx/compose/foundation/gestures/ScrollingLogic;

    move-object v12, v6

    const-wide/16 v5, 0x32

    invoke-static/range {v0 .. v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->access$dispatchMouseWheelScroll$waitNextScrollDelta(Lcom/motorola/camera/fsm/camera/CameraState$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_b

    :goto_7
    return-object v8

    :cond_b
    move-object v6, v12

    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object/from16 v7, p0

    move-object v12, v4

    move-object v0, v13

    goto/16 :goto_0

    :cond_c
    return-object v19
.end method
