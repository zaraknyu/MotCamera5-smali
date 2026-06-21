.class public final Le/w1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

.field public b:F

.field public c:F

.field public d:F

.field public e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Le/n1;

.field public final synthetic m:Le/o1;

.field public final synthetic n:Le/n0;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;

.field public final synthetic p:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;

.field public final synthetic r:Landroidx/compose/runtime/MutableState;

.field public final synthetic s:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Le/n1;Le/o1;Le/n0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Le/w1;->l:Le/n1;

    iput-object p2, p0, Le/w1;->m:Le/o1;

    iput-object p3, p0, Le/w1;->n:Le/n0;

    iput-object p4, p0, Le/w1;->o:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Le/w1;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iput-object p6, p0, Le/w1;->q:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Le/w1;->r:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Le/w1;->s:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    new-instance v0, Le/w1;

    iget-object v7, p0, Le/w1;->r:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Le/w1;->s:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Le/w1;->l:Le/n1;

    iget-object v2, p0, Le/w1;->m:Le/o1;

    iget-object v3, p0, Le/w1;->n:Le/n0;

    iget-object v4, p0, Le/w1;->o:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Le/w1;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iget-object v6, p0, Le/w1;->q:Landroidx/compose/runtime/MutableState;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Le/w1;-><init>(Le/n1;Le/o1;Le/n0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Le/w1;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/w1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Le/w1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Le/w1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Le/w1;->m:Le/o1;

    iget-object v2, v1, Le/o1;->b:Lkotlin/jvm/functions/Function1;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Le/w1;->j:I

    const/4 v5, 0x2

    iget-object v7, v0, Le/w1;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v12, :cond_1

    if-ne v4, v5, :cond_0

    iget v4, v0, Le/w1;->i:I

    iget v13, v0, Le/w1;->h:I

    iget v14, v0, Le/w1;->g:I

    iget v15, v0, Le/w1;->d:F

    const/16 v16, 0x0

    iget v6, v0, Le/w1;->c:F

    iget v5, v0, Le/w1;->f:I

    move/from16 v18, v13

    iget-wide v12, v0, Le/w1;->e:J

    iget v11, v0, Le/w1;->b:F

    iget-object v8, v0, Le/w1;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iget-object v9, v0, Le/w1;->k:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v19, v18

    move/from16 v18, v10

    move/from16 v10, v19

    move/from16 v19, v4

    move-object/from16 v4, p1

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v16, 0x0

    iget v4, v0, Le/w1;->g:I

    iget v5, v0, Le/w1;->d:F

    iget v6, v0, Le/w1;->c:F

    iget v8, v0, Le/w1;->f:I

    iget-wide v11, v0, Le/w1;->e:J

    iget v9, v0, Le/w1;->b:F

    iget-object v13, v0, Le/w1;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iget-object v14, v0, Le/w1;->k:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v4, v0, Le/w1;->k:Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v6

    mul-float v5, v6, v6

    new-instance v13, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {v13}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    iput-object v14, v0, Le/w1;->k:Ljava/lang/Object;

    iput-object v13, v0, Le/w1;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iput v10, v0, Le/w1;->b:F

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Le/w1;->e:J

    const/4 v4, 0x0

    iput v4, v0, Le/w1;->f:I

    iput v6, v0, Le/w1;->c:F

    iput v5, v0, Le/w1;->d:F

    const/4 v4, 0x1

    iput v4, v0, Le/w1;->g:I

    iput v4, v0, Le/w1;->j:I

    const/4 v4, 0x2

    invoke-static {v14, v0, v4}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_3

    goto/16 :goto_4

    :cond_3
    move v9, v10

    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    iget-object v15, v0, Le/w1;->o:Landroidx/compose/runtime/MutableState;

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/geometry/Size;

    move/from16 v18, v10

    move-wide/from16 v19, v11

    iget-wide v10, v15, Landroidx/compose/ui/geometry/Size;->packedValue:J

    invoke-static {v7}, Le/W;->a(Landroidx/compose/runtime/MutableState;)F

    move-result v12

    invoke-static {v12, v10, v11}, Landroidx/compose/ui/geometry/Size;->times-7Ah8Wj8(FJ)J

    move-result-wide v10

    const/16 v12, 0x20

    shr-long/2addr v10, v12

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    iget-object v11, v0, Le/w1;->q:Landroidx/compose/runtime/MutableState;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/geometry/Size;

    move/from16 p1, v12

    move-object v15, v13

    iget-wide v12, v11, Landroidx/compose/ui/geometry/Size;->packedValue:J

    shr-long v11, v12, p1

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    sub-float/2addr v10, v11

    const/4 v11, 0x2

    int-to-float v12, v11

    div-float/2addr v10, v12

    cmpg-float v11, v10, v16

    if-gez v11, :cond_4

    move/from16 v10, v16

    :cond_4
    iget-object v11, v0, Le/w1;->r:Landroidx/compose/runtime/MutableState;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/geometry/Offset;

    iget-wide v12, v12, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v12, v12, p1

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    neg-float v13, v10

    cmpg-float v12, v12, v13

    if-nez v12, :cond_5

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_1
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/geometry/Offset;

    move/from16 v21, v4

    move v13, v5

    iget-wide v4, v11, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    shr-long v4, v4, p1

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    cmpg-float v4, v4, v10

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move/from16 p1, v4

    const-wide/16 v4, 0x0

    invoke-virtual {v15, v10, v11, v4, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    move/from16 v4, p1

    move v5, v8

    move v11, v9

    move v10, v12

    move-object v9, v14

    move-object v8, v15

    move/from16 v14, v21

    move v15, v13

    move-wide/from16 v12, v19

    :goto_3
    iput-object v9, v0, Le/w1;->k:Ljava/lang/Object;

    iput-object v8, v0, Le/w1;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iput v11, v0, Le/w1;->b:F

    iput-wide v12, v0, Le/w1;->e:J

    iput v5, v0, Le/w1;->f:I

    iput v6, v0, Le/w1;->c:F

    iput v15, v0, Le/w1;->d:F

    iput v14, v0, Le/w1;->g:I

    iput v10, v0, Le/w1;->h:I

    iput v4, v0, Le/w1;->i:I

    move/from16 v19, v4

    const/4 v4, 0x2

    iput v4, v0, Le/w1;->j:I

    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-virtual {v9, v4, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_7

    :goto_4
    return-object v3

    :cond_7
    :goto_5
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    move-object/from16 v20, v3

    iget-object v3, v4, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    move/from16 p1, v5

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    move/from16 v21, v6

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_9

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v22

    if-eqz v22, :cond_8

    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_19

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result v17

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result v23

    cmpg-float v6, v17, v16

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    cmpg-float v6, v23, v16

    if-nez v6, :cond_b

    :goto_8
    move/from16 v6, v18

    :goto_9
    move/from16 v22, v5

    move-object/from16 v23, v9

    move/from16 v24, v10

    const/4 v5, 0x1

    goto :goto_a

    :cond_b
    div-float v17, v17, v23

    move/from16 v6, v17

    goto :goto_9

    :goto_a
    invoke-static {v4, v5}, Landroidx/compose/foundation/gestures/ScrollableKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v9

    move/from16 v25, v6

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v9, v10, v5, v6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v14

    move/from16 v26, v15

    const-wide/16 v9, 0x0

    goto :goto_b

    :cond_c
    move v5, v14

    move/from16 v26, v15

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v14

    invoke-static {v9, v10, v14, v15}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v9

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide v27, -0x7fffffff80000000L    # -1.0609978955E-314

    move/from16 v29, v5

    xor-long v5, v9, v27

    invoke-virtual {v8, v14, v15, v5, v6}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    cmpg-float v5, v25, v18

    if-nez v5, :cond_d

    goto :goto_c

    :cond_d
    const/16 v29, 0x0

    :goto_c
    if-nez p1, :cond_11

    mul-float v11, v11, v25

    invoke-static {v12, v13, v9, v10}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v12

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result v4

    const/4 v6, 0x1

    int-to-float v14, v6

    sub-float/2addr v14, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v4

    cmpl-float v4, v6, v21

    if-lez v4, :cond_e

    const/4 v4, 0x1

    goto :goto_d

    :cond_e
    const/4 v4, 0x0

    :goto_d
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getDistanceSquared-impl(J)F

    move-result v6

    cmpl-float v6, v6, v26

    if-lez v6, :cond_f

    const/4 v6, 0x1

    goto :goto_e

    :cond_f
    const/4 v6, 0x0

    :goto_e
    invoke-static {v7}, Le/W;->a(Landroidx/compose/runtime/MutableState;)F

    move-result v14

    cmpl-float v14, v14, v18

    if-lez v14, :cond_10

    const/4 v14, 0x1

    goto :goto_f

    :cond_10
    const/4 v14, 0x0

    :goto_f
    if-nez v4, :cond_12

    if-eqz v14, :cond_11

    if-eqz v6, :cond_11

    goto :goto_10

    :cond_11
    move/from16 v4, p1

    goto :goto_11

    :cond_12
    :goto_10
    const/4 v4, 0x1

    :goto_11
    if-eqz v4, :cond_18

    if-nez v5, :cond_14

    const-wide/16 v14, 0x0

    invoke-static {v9, v10, v14, v15}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_12

    :cond_13
    move/from16 p1, v4

    goto :goto_13

    :cond_14
    :goto_12
    invoke-static {v7}, Le/W;->a(Landroidx/compose/runtime/MutableState;)F

    move-result v6

    mul-float v6, v6, v25

    const/high16 v14, 0x41200000    # 10.0f

    move/from16 v15, v18

    invoke-static {v6, v15, v14}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v7, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v6, v0, Le/w1;->l:Le/n1;

    iget-object v14, v6, Le/n1;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, Landroidx/compose/ui/geometry/Offset;

    move/from16 p1, v4

    move/from16 v18, v5

    iget-wide v4, v15, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    iget-object v9, v6, Le/n1;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-virtual {v6, v9, v4, v5}, Le/n1;->a(FJ)J

    move-result-wide v4

    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    if-nez v18, :cond_15

    goto :goto_13

    :cond_15
    iget-object v4, v1, Le/o1;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, v5}, Ljava/lang/Float;-><init>(F)V

    check-cast v4, Lc/a$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v6}, Lc/a$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_17

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v9, 0x0

    invoke-static {v6, v9}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v14

    const-wide/16 v9, 0x0

    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_17
    :goto_15
    const-wide/16 v9, 0x0

    goto :goto_16

    :cond_18
    move/from16 p1, v4

    goto :goto_15

    :goto_16
    move/from16 v5, p1

    move/from16 v14, v29

    goto :goto_17

    :cond_19
    move/from16 v22, v5

    move-object/from16 v23, v9

    move/from16 v24, v10

    move/from16 v29, v14

    move/from16 v26, v15

    const-wide/16 v9, 0x0

    move/from16 v5, p1

    :goto_17
    if-nez v22, :cond_1b

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v4, :cond_1b

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v15, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-eqz v15, :cond_1a

    move/from16 v4, v19

    move-object/from16 v3, v20

    move/from16 v6, v21

    move-object/from16 v9, v23

    move/from16 v10, v24

    move/from16 v15, v26

    const/high16 v18, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_1b
    if-eqz v14, :cond_1d

    if-eqz v5, :cond_1d

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-AH228Gc(J)J

    move-result-wide v3

    new-instance v1, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    iget-object v3, v0, Le/w1;->s:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Velocity;

    iget-wide v4, v1, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1d

    iget-object v0, v0, Le/w1;->n:Le/n0;

    if-eqz v19, :cond_1c

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Velocity;

    iget-wide v4, v1, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v1

    cmpl-float v1, v1, v16

    if-lez v1, :cond_1c

    iget v1, v0, Le/n0;->a:I

    if-lez v1, :cond_1c

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_1c
    if-eqz v24, :cond_1d

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Velocity;

    iget-wide v3, v1, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_1d

    iget v1, v0, Le/n0;->a:I

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    iget v0, v0, Le/n0;->b:I

    if-ge v1, v0, :cond_1d

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    :goto_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
