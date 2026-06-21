.class public final Lcom/motorola/camera/fsm/camera/CameraState$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAlwaysRunCode:Ljava/lang/Object;

.field public mAutoTransitionState:Z

.field public mEntryCode:Ljava/lang/Object;

.field public mExitAfterFireChange:Ljava/lang/Object;

.field public mExitCode:Ljava/lang/Object;

.field public mParent:Ljava/lang/Object;

.field public mStateKey:Ljava/lang/Object;

.field public mTransitions:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    return-void
.end method

.method public static final access$dispatchMouseWheelScroll(Lcom/motorola/camera/fsm/camera/CameraState$1;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;F)F
    .locals 3

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 34
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v0

    .line 35
    iget-object p1, p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 36
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    const/4 v2, 0x1

    .line 37
    invoke-static {p1, p2, v0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    move-result-wide p1

    .line 38
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result p0

    return p0
.end method

.method public static final access$dispatchMouseWheelScroll(Lcom/motorola/camera/fsm/camera/CameraState$1;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;

    iget v3, v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    const/high16 v4, -0x80000000

    and-int v6, v3, v4

    if-eqz v6, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;

    invoke-direct {v2, v5, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraState$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v1, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->result:Ljava/lang/Object;

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3
    iget v2, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    const/4 v11, 0x0

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v14, :cond_2

    if-ne v2, v13, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v12

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->F$0:F

    iget-object v2, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$2:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v3, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$1:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v4, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    invoke-virtual {v5, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V

    .line 8
    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->sumOrNull(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v5, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V

    .line 10
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    invoke-virtual {v1, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->plus(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v0

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 11
    :cond_4
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 14
    iget-wide v13, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->value:J

    .line 15
    invoke-virtual {v7, v13, v14}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v0

    iput v0, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 16
    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollableKt;->access$isLowScrollingDelta(F)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_6

    .line 17
    :cond_5
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 19
    invoke-static {v11, v11, v0}, Landroidx/compose/animation/core/ArcSplineKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v0

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 20
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;

    const/4 v8, 0x0

    move/from16 v4, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;FLcom/motorola/camera/fsm/camera/CameraState$1;FLandroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    iput-object v5, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    iput-object v7, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$1:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object v1, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$2:Lkotlin/jvm/internal/Ref$FloatRef;

    iput v6, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->F$0:F

    const/4 v15, 0x1

    iput v15, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    invoke-virtual {v5, v7, v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->userScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v2, v1

    move-object v4, v5

    move v0, v6

    move-object v3, v7

    .line 21
    :goto_2
    iget-object v1, v4, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v1, Landroidx/room/concurrent/FileLock;

    .line 22
    iget-object v5, v1, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 23
    invoke-virtual {v5, v6}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->calculateVelocity(F)F

    move-result v5

    .line 24
    iget-object v1, v1, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-virtual {v1, v6}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->calculateVelocity(F)F

    move-result v1

    .line 25
    invoke-static {v5, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_9

    .line 26
    iget v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v5, 0x64

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 27
    iget v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    move-result v1

    mul-float/2addr v1, v0

    const/16 v0, 0x3e8

    int-to-float v0, v0

    mul-float/2addr v1, v0

    cmpg-float v0, v1, v11

    if-nez v0, :cond_7

    move-wide v5, v7

    goto :goto_4

    .line 28
    :cond_7
    iget-object v0, v3, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v2, :cond_8

    invoke-static {v1, v11}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v0

    :goto_3
    move-wide v5, v0

    goto :goto_4

    .line 29
    :cond_8
    invoke-static {v11, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v0

    goto :goto_3

    .line 30
    :cond_9
    :goto_4
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;

    .line 31
    new-instance v1, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v1, v5, v6}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    const/4 v2, 0x0

    .line 32
    iput-object v2, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    iput-object v2, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$1:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object v2, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->L$2:Lkotlin/jvm/internal/Ref$FloatRef;

    const/4 v2, 0x2

    iput v2, v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->label:I

    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v12, v10, :cond_a

    :goto_5
    return-object v10

    :cond_a
    :goto_6
    return-object v12
.end method

.method public static final access$dispatchMouseWheelScroll$waitNextScrollDelta(Lcom/motorola/camera/fsm/camera/CameraState$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    instance-of v3, v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;

    iget v4, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;

    invoke-direct {v3, v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object p0, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$3:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v1, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$2:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p0

    move-object v8, v0

    move-object p0, v3

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-gez v2, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    new-instance v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2;-><init>(Lcom/motorola/camera/fsm/camera/CameraState$1;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    iput-object p1, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v7, p2

    iput-object v7, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$2:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v8, p3

    iput-object v8, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$3:Landroidx/compose/foundation/gestures/ScrollingLogic;

    move-object/from16 v9, p4

    iput-object v9, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v6, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->label:I

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/JobKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    move-object v4, p1

    move-object v1, v7

    :goto_1
    check-cast v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    if-eqz v2, :cond_5

    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    iget-boolean v0, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->shouldApplyImmediately:Z

    iget-wide v10, v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->value:J

    iget-wide v12, v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->timeMillis:J

    new-instance v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move/from16 p6, v0

    move-object p1, v3

    move-wide/from16 p2, v10

    move-wide/from16 p4, v12

    invoke-direct/range {p1 .. p6}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;-><init>(JJZ)V

    move-object v0, p1

    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v8, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v0

    iput v0, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/16 v0, 0x1e

    const/4 v3, 0x0

    invoke-static {v3, v3, v0}, Landroidx/compose/animation/core/ArcSplineKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v0

    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V

    iget p0, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p0}, Landroidx/compose/foundation/gestures/MouseWheelScrollableKt;->access$isLowScrollingDelta(F)Z

    move-result p0

    xor-int/2addr p0, v6

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static sumOrNull(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/Pending$keyMap$2;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    new-instance p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$untilNull$1;-><init>(Landroidx/compose/runtime/Pending$keyMap$2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    if-nez v1, :cond_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->plus(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Ljava/lang/Object;

    return-void
.end method

.method public build()Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraState;-><init>(Lcom/motorola/camera/fsm/camera/CameraState$1;)V

    return-object v0
.end method

.method public entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Ljava/lang/Object;

    return-void
.end method

.method public exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Ljava/lang/Object;

    return-void
.end method

.method public parent(Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Ljava/lang/Object;

    return-void
.end method

.method public state(Lcom/motorola/camera/fsm/camera/StateKey;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Ljava/lang/Object;

    return-void
.end method

.method public trackVelocity(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast p0, Landroidx/room/concurrent/FileLock;

    iget-wide v0, p1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->timeMillis:J

    iget-wide v2, p1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->value:J

    iget-object p1, p0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {p1, v4, v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(FJ)V

    iget-object p0, p0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(FJ)V

    return-void
.end method

.method public transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public transitions(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public userScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraState$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->L$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    new-instance p3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$2;

    const/4 v2, 0x0

    invoke-direct {p3, p1, p2, v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->L$0:Lcom/motorola/camera/fsm/camera/CameraState$1;

    iput v3, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$userScroll$1;->label:I

    new-instance p1, Lkotlinx/coroutines/SupervisorCoroutine;

    iget-object p2, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v2}, Lkotlinx/coroutines/SupervisorCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;I)V

    invoke-static {p1, v3, p1, p3}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startUndspatched(Lkotlinx/coroutines/internal/ScopeCoroutine;ZLkotlinx/coroutines/internal/ScopeCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
