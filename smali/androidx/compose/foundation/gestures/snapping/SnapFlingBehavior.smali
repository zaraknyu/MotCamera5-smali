.class public final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# instance fields
.field public final decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

.field public final motionScaleDuration:Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;

.field public final snapAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

.field public final snapLayoutInfoProvider:Landroidx/sqlite/db/SimpleSQLiteQuery;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/SpringSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    sget-object p1, Landroidx/compose/foundation/gestures/ScrollableKt;->DefaultScrollMotionDurationScale:Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;

    return-void
.end method

.method public static final access$tryApproach(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    :goto_0
    move-object p5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;

    invoke-direct {v0, p0, p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_4

    :goto_2
    const/16 p0, 0x1c

    invoke-static {p2, p3, p0}, Landroidx/compose/animation/core/ArcSplineKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object p0

    return-object p0

    :cond_4
    iput v3, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->label:I

    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    sget-object v3, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v3, v0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/compose/animation/core/FloatDecayAnimationSpec;

    invoke-interface {v3, v2, p3}, Landroidx/compose/animation/core/FloatDecayAnimationSpec;->getTargetValue(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x7

    if-ltz v2, :cond_5

    new-instance p0, Landroidx/room/ObservedTableVersions;

    invoke-direct {p0, v3, v0}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    :goto_3
    move v0, p2

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/google/android/gms/tasks/zzs;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    invoke-direct {v0, v3, p0}, Lcom/google/android/gms/tasks/zzs;-><init>(ILjava/lang/Object;)V

    move-object p0, v0

    goto :goto_3

    :goto_4
    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, v0}, Ljava/lang/Float;-><init>(F)V

    move v0, p3

    new-instance p3, Ljava/lang/Float;

    invoke-direct {p3, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;->approachAnimation(Landroidx/compose/foundation/gestures/ScrollScope;Ljava/lang/Float;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_5
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    iget-object p0, v0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->currentAnimationState:Landroidx/compose/animation/core/AnimationState;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-object v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    invoke-virtual {v0, v1}, Landroidx/compose/animation/core/SpringSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->L$0:Lkotlin/jvm/functions/Function1;

    move-object p3, p0

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    const/4 v9, 0x0

    move-object v5, p0

    move-object v8, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V

    move-object p3, v7

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iput-object p3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->L$0:Lkotlin/jvm/functions/Function1;

    iput v3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->label:I

    iget-object p0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->motionScaleDuration:Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;

    invoke-static {p0, v4, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object p3, v7

    :goto_1
    check-cast p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    new-instance p0, Ljava/lang/Float;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    invoke-virtual {v0}, Landroidx/compose/animation/core/SpringSpec;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;

    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3
    iput v3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->label:I

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->fling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    .line 4
    iget-object p0, p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->remainingOffset:Ljava/lang/Float;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 6
    iget-object p1, p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->currentAnimationState:Landroidx/compose/animation/core/AnimationState;

    const/4 p2, 0x0

    cmpg-float p0, p0, p2

    if-nez p0, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 8
    :goto_2
    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, p2}, Ljava/lang/Float;-><init>(F)V

    return-object p0
.end method

.method public performFling(Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->INSTANCE$3:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    check-cast p3, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->performFling(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
