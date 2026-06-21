.class public final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $initialVelocity:F

.field public final synthetic $onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;

.field public final synthetic $this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

.field public L$0:Lkotlin/jvm/internal/Ref$FloatRef;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iput p2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    iput-object p3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v5, p0

    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-object v6, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/sqlite/db/SimpleSQLiteQuery;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->label:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    iget-object v10, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v9, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->L$0:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v16, v11

    move-object v11, v1

    move-object/from16 v1, p1

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    sget-object v3, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v1, v1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;

    iget v3, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    invoke-interface {v1, v11, v3}, Landroidx/compose/animation/core/FloatDecayAnimationSpec;->getTargetValue(FF)F

    move-result v1

    iget-object v4, v6, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v12

    iget-object v13, v4, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/pager/PagerMeasureResult;

    iget v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    add-int/2addr v13, v12

    if-nez v13, :cond_3

    move/from16 v20, v3

    move v1, v11

    move/from16 v16, v1

    goto/16 :goto_2

    :cond_3
    cmpg-float v12, v3, v11

    if-gez v12, :cond_4

    iget v12, v4, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    add-int/2addr v12, v2

    goto :goto_0

    :cond_4
    iget v12, v4, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    :goto_0
    int-to-float v14, v13

    div-float/2addr v1, v14

    float-to-int v1, v1

    add-int/2addr v1, v12

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v14

    invoke-static {v1, v8, v14}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    iget-object v14, v4, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/foundation/pager/PagerMeasureResult;

    iget v14, v14, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    int-to-long v14, v12

    move/from16 v16, v11

    move/from16 p1, v12

    int-to-long v11, v2

    sub-long v17, v14, v11

    const-wide/16 v19, 0x0

    cmp-long v21, v17, v19

    if-gez v21, :cond_5

    move-wide/from16 v22, v19

    move/from16 v20, v3

    move-wide/from16 v2, v22

    goto :goto_1

    :cond_5
    move/from16 v20, v3

    move-wide/from16 v2, v17

    :goto_1
    long-to-int v2, v2

    add-long/2addr v14, v11

    const-wide/32 v11, 0x7fffffff

    cmp-long v3, v14, v11

    if-lez v3, :cond_6

    move-wide v14, v11

    :cond_6
    long-to-int v3, v14

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v2

    invoke-static {v1, v8, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    sub-int v1, v1, p1

    mul-int/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v1, v13

    if-gez v1, :cond_7

    move v1, v8

    :cond_7
    if-nez v1, :cond_8

    int-to-float v1, v1

    goto :goto_2

    :cond_8
    int-to-float v1, v1

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "calculateApproachOffset returned NaN. Please use a valid value."

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_9
    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v1

    iput v2, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v10, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$4;

    const/4 v1, 0x1

    invoke-direct {v4, v11, v10, v1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$4;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;I)V

    iput-object v11, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->L$0:Lkotlin/jvm/internal/Ref$FloatRef;

    iput v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->label:I

    iget-object v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

    iget v3, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->access$tryApproach(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_a

    goto/16 :goto_a

    :cond_a
    :goto_3
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v6, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v12

    iget-object v12, v12, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v13

    move v14, v8

    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v17, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v18, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_4
    if-ge v14, v13, :cond_d

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    const/high16 v20, 0x7f800000    # Float.POSITIVE_INFINITY

    move-object/from16 v15, v19

    check-cast v15, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkotlin/reflect/jvm/internal/impl/load/java/UtilsKt;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerMeasureResult;)I

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v9

    iget v9, v9, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v9

    iget v9, v9, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v9

    iget v9, v9, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    iget v9, v15, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v15, v8

    int-to-float v9, v9

    sub-float/2addr v9, v15

    cmpg-float v15, v9, v16

    if-gtz v15, :cond_b

    cmpl-float v15, v9, v17

    if-lez v15, :cond_b

    move/from16 v17, v9

    :cond_b
    cmpl-float v15, v9, v16

    if-ltz v15, :cond_c

    cmpg-float v15, v9, v18

    if-gez v15, :cond_c

    move/from16 v18, v9

    :cond_c
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x2

    goto :goto_4

    :cond_d
    const/high16 v20, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v4, v17, p1

    if-nez v4, :cond_e

    move/from16 v17, v18

    :cond_e
    cmpg-float v4, v18, v20

    if-nez v4, :cond_f

    move/from16 v18, v17

    :cond_f
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollForward()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {v3, v2}, Lcom/google/android/gms/dynamite/zzb;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v17, v16

    move/from16 v18, v17

    goto :goto_5

    :cond_10
    move/from16 v18, v16

    :cond_11
    :goto_5
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollBackward()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {v3, v2}, Lcom/google/android/gms/dynamite/zzb;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z

    move-result v3

    if-nez v3, :cond_12

    move/from16 v3, v16

    move v4, v3

    goto :goto_7

    :cond_12
    move/from16 v3, v16

    :goto_6
    move/from16 v4, v18

    goto :goto_7

    :cond_13
    move/from16 v3, v17

    goto :goto_6

    :goto_7
    iget-object v6, v6, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/foundation/IndicationKt$indication$2;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v6, v2, v9, v12}, Landroidx/compose/foundation/IndicationKt$indication$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpg-float v6, v2, v3

    if-nez v6, :cond_14

    goto :goto_8

    :cond_14
    cmpg-float v6, v2, v4

    if-nez v6, :cond_15

    goto :goto_8

    :cond_15
    cmpg-float v6, v2, v16

    if-nez v6, :cond_16

    goto :goto_8

    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Final Snapping Offset Should Be one of "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " or 0.0"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_8
    cmpg-float v3, v2, v20

    if-nez v3, :cond_17

    goto :goto_9

    :cond_17
    cmpg-float v3, v2, p1

    if-nez v3, :cond_18

    :goto_9
    move/from16 v2, v16

    :cond_18
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "calculateSnapOffset returned NaN. Please use a valid value."

    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_19
    iput v2, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/16 v3, 0x1e

    move/from16 v4, v16

    invoke-static {v1, v4, v4, v3}, Landroidx/compose/animation/core/ArcSplineKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$4;

    invoke-direct {v0, v11, v10, v8}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$4;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;I)V

    const/4 v1, 0x0

    iput-object v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->L$0:Lkotlin/jvm/internal/Ref$FloatRef;

    const/4 v1, 0x2

    iput v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->label:I

    move-object v1, v0

    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

    move-object v5, v1

    move v1, v2

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->access$animateWithTarget(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_1a

    :goto_a
    return-object v7

    :cond_1a
    return-object v0
.end method
