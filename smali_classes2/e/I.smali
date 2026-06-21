.class public final Le/I;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Le/t;

.field public final synthetic c:Landroidx/compose/animation/core/Animatable;

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Le/t;Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Le/I;->b:Le/t;

    iput-object p2, p0, Le/I;->c:Landroidx/compose/animation/core/Animatable;

    iput-object p3, p0, Le/I;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Le/I;->e:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Le/I;

    iget-object v3, p0, Le/I;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, p0, Le/I;->e:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Le/I;->b:Le/t;

    iget-object v2, p0, Le/I;->c:Landroidx/compose/animation/core/Animatable;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/I;-><init>(Le/t;Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/I;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Le/I;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Le/I;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Le/I;->a:I

    const/4 v1, 0x1

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v0, Le/t;->h:Le/t;

    iget-object v2, p0, Le/I;->b:Le/t;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Le/I;->c:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v8, 0x0

    cmpg-float v5, v5, v8

    const/4 v9, 0x0

    if-nez v5, :cond_3

    new-instance v5, Lc/V;

    const/4 v10, 0x2

    invoke-direct {v5, v3, v9, v10}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    const/4 v3, 0x3

    iget-object v10, p0, Le/I;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v10, v9, v9, v5, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_3
    iget-object v3, p0, Le/I;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/t;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/t;

    goto :goto_0

    :cond_4
    move-object v5, v2

    :goto_0
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v0, :cond_6

    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-object v7

    :cond_5
    invoke-static {v8}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    new-instance v8, Ljava/lang/Float;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v10}, Ljava/lang/Float;-><init>(F)V

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/16 v12, 0xc8

    invoke-static {v12, v10, v9, v11}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v9

    new-instance v10, Le/D$$ExternalSyntheticLambda0;

    const/4 v11, 0x1

    invoke-direct {v10, v5, v2, v3, v11}, Le/D$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput v1, p0, Le/I;->a:I

    const/4 v5, 0x4

    move-object v4, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_6

    return-object v6

    :cond_6
    :goto_1
    return-object v7
.end method
