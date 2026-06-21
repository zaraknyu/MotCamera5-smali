.class public final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public containerSize:J

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

.field public final invalidationEnabled:Z

.field public final node:Landroidx/compose/foundation/StretchOverscrollNode;

.field public pointerId:J

.field public pointerPosition:J

.field public final redrawSignal:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public scrollCycleInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->density:Landroidx/compose/ui/unit/Density;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:J

    new-instance p2, Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-static {p3, p4}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result p3

    invoke-direct {p2, p1, p3}, Landroidx/compose/foundation/EdgeEffectWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    sget-object p1, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p3, p4, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:J

    new-instance p3, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;

    invoke-direct {p3, p1, p0}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;-><init>(ILjava/lang/Object;)V

    sget-object p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->EmptyPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    new-instance p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p4, p3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V

    new-instance p3, Landroidx/compose/foundation/StretchOverscrollNode;

    invoke-direct {p3, p1, p0, p2}, Landroidx/compose/foundation/StretchOverscrollNode;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;)V

    iput-object p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->node:Landroidx/compose/foundation/StretchOverscrollNode;

    return-void
.end method


# virtual methods
.method public final animateToReleaseIfNeeded()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    iget-object v1, v0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, v0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :cond_3
    :goto_2
    iget-object v4, v0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v2

    :cond_6
    :goto_4
    iget-object v0, v0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :cond_8
    :goto_5
    move v1, v2

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_a
    return-void
.end method

.method public final applyToFling-BMRW4eQ(JLandroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    instance-of v5, v4, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;

    iget v6, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;

    invoke-direct {v5, v0, v4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v4, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->result:Ljava/lang/Object;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_3

    if-eq v7, v10, :cond_2

    if-ne v7, v9, :cond_1

    iget-wide v0, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->J$0:J

    iget-object v2, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->L$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v17, v0

    move-object v0, v2

    move-wide/from16 v1, v17

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v8

    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v12, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v10, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;

    iget-object v3, v3, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-direct {v0, v3, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    iput-wide v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;->J$0:J

    invoke-virtual {v0, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_4

    goto/16 :goto_4

    :cond_4
    return-object v8

    :cond_5
    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    iget-object v7, v4, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v7

    const/16 v10, 0x20

    iget-object v12, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->density:Landroidx/compose/ui/unit/Density;

    if-eqz v7, :cond_6

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v7

    cmpg-float v7, v7, v11

    if-gez v7, :cond_6

    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v13

    iget-wide v14, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v14, v10

    long-to-int v10, v14

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v7, v13, v10, v12}, Landroidx/compose/foundation/ImageKt;->absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F

    move-result v7

    goto :goto_1

    :cond_6
    iget-object v7, v4, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v7

    cmpl-float v7, v7, v11

    if-lez v7, :cond_7

    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v13

    neg-float v13, v13

    iget-wide v14, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v14, v10

    long-to-int v10, v14

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v7, v13, v10, v12}, Landroidx/compose/foundation/ImageKt;->absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F

    move-result v7

    neg-float v7, v7

    goto :goto_1

    :cond_7
    move v7, v11

    :goto_1
    iget-object v10, v4, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v10

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v10

    const-wide v15, 0xffffffffL

    iget-wide v13, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v13, v15

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    invoke-static {v4, v10, v13, v12}, Landroidx/compose/foundation/ImageKt;->absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F

    move-result v4

    goto :goto_2

    :cond_8
    const-wide v15, 0xffffffffL

    iget-object v10, v4, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->isStretched(Landroid/widget/EdgeEffect;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v10

    cmpl-float v10, v10, v11

    if-lez v10, :cond_9

    invoke-virtual {v4}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v10

    neg-float v10, v10

    iget-wide v13, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v13, v15

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    invoke-static {v4, v10, v13, v12}, Landroidx/compose/foundation/ImageKt;->absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F

    move-result v4

    neg-float v4, v4

    goto :goto_2

    :cond_9
    move v4, v11

    :goto_2
    invoke-static {v7, v4}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :goto_3
    invoke-static {v1, v2, v12, v13}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v1

    iput-object v0, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->L$0:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-wide v1, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->J$0:J

    iput v9, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$applyToFling$1;->label:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;

    iget-object v3, v3, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-direct {v4, v3, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    iput-wide v1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;->J$0:J

    invoke-virtual {v4, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic$onScrollStopped$performFling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_b

    :goto_4
    return-object v6

    :cond_b
    :goto_5
    check-cast v4, Landroidx/compose/ui/unit/Velocity;

    iget-wide v3, v4, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v1

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    iget-object v3, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v4

    cmpl-float v4, v4, v11

    if-lez v4, :cond_c

    invoke-virtual {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_6

    :cond_c
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v4

    cmpg-float v4, v4, v11

    if-gez v4, :cond_d

    invoke-virtual {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_d
    :goto_6
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v4

    cmpl-float v4, v4, v11

    if-lez v4, :cond_e

    invoke-virtual {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_7

    :cond_e
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v4

    cmpg-float v4, v4, v11

    if-gez v4, :cond_f

    invoke-virtual {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_f
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToReleaseIfNeeded()V

    return-object v8
.end method

.method public final displacement-F1C5BW0$foundation_release()J
    .locals 8

    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:J

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v2, v0

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v4, v2

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    div-float/2addr v3, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v6, v4

    long-to-int p0, v6

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    div-float/2addr v0, p0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v6, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    shl-long v2, v6, v2

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final invalidateOverscroll$foundation_release()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final pullBottom-k-4lQ0M(J)F
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v3, v1

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr p2, v3

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v3

    neg-float p2, p2

    const/4 v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, v0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v3, p2, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move p2, v0

    :goto_0
    neg-float p2, p2

    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v1, v4

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p0, p2

    :try_start_1
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move p2, v0

    :goto_1
    cmpg-float p2, p2, v0

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final pullLeft-k-4lQ0M(J)F
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v2, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    div-float/2addr p2, v2

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v2

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v2, p2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move p2, v0

    :goto_0
    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v3, v1

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p0, p2

    :try_start_1
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move p2, v0

    :goto_1
    cmpg-float p2, p2, v0

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final pullRight-k-4lQ0M(J)F
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long/2addr v2, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    div-float/2addr p2, v2

    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v2}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v2

    neg-float p2, p2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v2, p2, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move p2, v3

    :goto_0
    neg-float p2, p2

    iget-wide v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    shr-long v0, v4, v1

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p0, p2

    :try_start_1
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move p2, v3

    :goto_1
    cmpg-float p2, p2, v3

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final pullTop-k-4lQ0M(J)F
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->displacement-F1C5BW0$foundation_release()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-wide v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long/2addr v3, v1

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr p2, v3

    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    invoke-virtual {v3}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v3, p2, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move p2, v4

    :goto_0
    iget-wide v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    and-long v0, v5, v1

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p0, p2

    :try_start_1
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move p2, v4

    :goto_1
    cmpg-float p2, p2, v4

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
