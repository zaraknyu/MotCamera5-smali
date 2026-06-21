.class public final Landroidx/compose/animation/core/Animatable$runAnimation$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $clampingNeeded:Ljava/lang/Object;

.field public final synthetic $endState:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$endState:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$block:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$clampingNeeded:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$FloatRef;

    iget v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollableKt;->access$isLowScrollingDelta(F)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$endState:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    iget-object v3, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$block:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    invoke-static {v2, v3, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->access$dispatchMouseWheelScroll(Lcom/motorola/camera/fsm/camera/CameraState$1;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;F)F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollableKt;->access$isLowScrollingDelta(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    goto :goto_0

    :cond_0
    iget v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float/2addr v2, v0

    iput v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_1
    iget-object p0, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$clampingNeeded:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;

    iget v0, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$clampingNeeded:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$block:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v3, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$endState:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/core/InfiniteTransition;

    iget-object p0, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/State;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    move-wide v4, v0

    :goto_1
    iget-wide v6, v3, Landroidx/compose/animation/core/InfiniteTransition;->startTimeNanos:J

    iget-object p0, v3, Landroidx/compose/animation/core/InfiniteTransition;->_animations:Landroidx/compose/runtime/collection/MutableVector;

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    iget v6, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/animation/core/ArcSplineKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    move-result v9

    cmpg-float v6, v6, v9

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    iput-wide v0, v3, Landroidx/compose/animation/core/InfiniteTransition;->startTimeNanos:J

    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v6, v7

    :goto_2
    if-ge v6, v1, :cond_5

    aget-object v9, v0, v6

    check-cast v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iput-boolean v8, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    move-result p1

    iput p1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :goto_3
    iget p1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_6

    iget-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    :goto_4
    if-ge v7, p0, :cond_b

    aget-object v0, p1, v7

    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    iget-object v1, v1, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iput-boolean v8, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    iget-wide v0, v3, Landroidx/compose/animation/core/InfiniteTransition;->startTimeNanos:J

    sub-long/2addr v4, v0

    long-to-float v0, v4

    div-float/2addr v0, p1

    float-to-long v0, v0

    iget-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v2, v7

    move v4, v8

    :goto_5
    if-ge v2, p0, :cond_a

    aget-object v5, p1, v2

    check-cast v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-boolean v6, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    if-nez v6, :cond_8

    iget-object v6, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    iget-object v6, v6, Landroidx/compose/animation/core/InfiniteTransition;->refreshChildNeeded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean v6, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    if-eqz v6, :cond_7

    iput-boolean v7, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->startOnTheNextFrame:Z

    iput-wide v0, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->playTimeNanosOffset:J

    :cond_7
    iget-wide v9, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->playTimeNanosOffset:J

    sub-long v9, v0, v9

    iget-object v6, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    invoke-virtual {v6, v9, v10}, Landroidx/compose/animation/core/TargetBasedAnimation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object v6

    iget-object v11, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v6, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->animation:Landroidx/compose/animation/core/TargetBasedAnimation;

    invoke-interface {v6, v9, v10}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v6

    iput-boolean v6, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    :cond_8
    iget-boolean v5, v5, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->isFinished:Z

    if-nez v5, :cond_9

    move v4, v7

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    xor-int/lit8 p0, v4, 0x1

    iget-object p1, v3, Landroidx/compose/animation/core/InfiniteTransition;->isRunning$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$block:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/animation/core/Animatable;

    iget-object v2, v1, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    invoke-static {p1, v2}, Landroidx/compose/animation/core/ArcSplineKt;->updateState(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/animation/core/AnimationState;)V

    iget-object v3, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/compose/animation/core/Animatable;->access$clampToBounds(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v2, v2, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$endState:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/animation/core/AnimationState;

    iget-object v2, v2, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_c

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    iget-object p0, p0, Landroidx/compose/animation/core/Animatable$runAnimation$2$1;->$clampingNeeded:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_6

    :cond_d
    if-eqz v0, :cond_e

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
