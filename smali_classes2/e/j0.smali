.class public final Le/j0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public constructor <init>(ILandroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Le/j0;->c:I

    iput-object p2, p0, Le/j0;->d:Landroidx/compose/animation/core/Animatable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Le/j0;

    iget v0, p0, Le/j0;->c:I

    iget-object p0, p0, Le/j0;->d:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p1, v0, p0, p2}, Le/j0;-><init>(ILandroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    new-instance p1, Le/j0;

    iget v0, p0, Le/j0;->c:I

    iget-object p0, p0, Le/j0;->d:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p1, v0, p0, p2}, Le/j0;-><init>(ILandroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Le/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Le/j0;->b:I

    iget-object v2, p0, Le/j0;->d:Landroidx/compose/animation/core/Animatable;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, Le/j0;->a:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Le/j0;->c:I

    move v1, p1

    :goto_0
    int-to-float p1, v1

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3

    add-int/lit16 v1, v1, 0x168

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    const/4 p1, 0x0

    const/4 v5, 0x6

    const/16 v7, 0x12c

    const/4 v8, 0x0

    invoke-static {v7, p1, v8, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    iput v1, p0, Le/j0;->a:I

    iput v4, p0, Le/j0;->b:I

    const/16 v10, 0xc

    iget-object v5, p0, Le/j0;->d:Landroidx/compose/animation/core/Animatable;

    move-object v9, p0

    invoke-static/range {v5 .. v10}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Landroidx/compose/animation/core/AnimationResult;

    iget-object p0, p1, Landroidx/compose/animation/core/AnimationResult;->endState:Landroidx/compose/animation/core/AnimationState;

    iget-wide p0, p0, Landroidx/compose/animation/core/AnimationState;->finishedTimeNanos:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p0, p0, v4

    if-eqz p0, :cond_5

    rem-int/lit16 v1, v1, 0x168

    int-to-float p0, v1

    new-instance p1, Ljava/lang/Float;

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    iput v3, v9, Le/j0;->b:I

    invoke-virtual {v2, p1, v9}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
