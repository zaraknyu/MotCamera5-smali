.class public final Lf/g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    iput p4, p0, Lf/g;->$r8$classId:I

    iput-object p1, p0, Lf/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lf/g;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    iget p1, p0, Lf/g;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Lh/p;

    const/4 v1, 0x4

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Lf/u;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Lf/e;

    const/4 v1, 0x3

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Le/n1;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x2

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Le/c;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Lf/u;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Lf/C;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf/g;->$r8$classId:I

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Lh/p;

    const/4 v1, 0x4

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lf/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Lf/u;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Lf/e;

    const/4 v1, 0x3

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lf/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Le/n1;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x2

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lf/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Le/c;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lf/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p1, Lf/g;

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Lf/u;

    iget-object p0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast p0, Lf/C;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, p2, v1}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lf/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lf/g;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lf/g;->a:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Lifecycle$State;

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast v1, Lh/p;

    iget-object v5, v1, Lh/p;->f:Lc/q;

    iget-object v1, v1, Lh/p;->b:Lc/h;

    iput v3, p0, Lf/g;->a:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lc/q;->b:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v6, Lc/p;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v5, v7}, Lc/p;-><init>(Lc/h;Lc/q;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v6, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-ne v1, v0, :cond_0

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lf/g;->a:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-ne v1, v3, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_4
    move-object v0, v2

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v1, Lf/u;

    iget-object v5, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast v5, Lf/e;

    check-cast v5, Lf/c;

    iget v5, v5, Lf/c;->a:I

    iput v3, p0, Lf/g;->a:I

    iget-object v3, v1, Lf/u;->a:Lf/v;

    iget-object v3, v3, Lf/v;->e:Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, v1, Lf/u;->c:Landroidx/compose/foundation/pager/PagerState;

    goto :goto_2

    :cond_7
    iget-object v1, v1, Lf/u;->b:Landroidx/compose/foundation/pager/PagerState;

    :goto_2
    invoke-static {v1, v5, p0}, Landroidx/compose/foundation/pager/PagerState;->animateScrollToPage$default(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, v2

    :goto_3
    if-ne v1, v0, :cond_4

    :goto_4
    return-object v0

    :pswitch_1
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lf/g;->a:I

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    if-ne v0, v1, :cond_a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_9
    move-object v6, v7

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Le/n1;

    iput v1, p0, Lf/g;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/16 v3, 0xc8

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v2}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    move-object v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Le/n1;->a(FJLandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_c

    goto :goto_5

    :cond_c
    move-object v0, v7

    :goto_5
    if-ne v0, v6, :cond_9

    :goto_6
    return-object v6

    :pswitch_2
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lf/g;->a:I

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    if-ne v0, v1, :cond_e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_d
    :goto_7
    move-object v6, v7

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v0, Le/c;

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    iget-object v0, v0, Le/c;->a:Landroidx/compose/animation/core/Animatable;

    iget-object v2, p0, Lf/g;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/16 v8, 0x1f4

    const/4 v9, 0x0

    invoke-static {v8, v3, v9, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    iput v1, p0, Lf/g;->a:I

    move-object v1, v2

    move-object v2, v3

    const/4 v3, 0x0

    const/16 v5, 0xc

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_d

    :goto_8
    return-object v6

    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lf/g;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    if-ne v1, v2, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/g;->b:Ljava/lang/Object;

    check-cast v1, Lf/u;

    new-instance v5, Lf/B;

    iget-object v3, p0, Lf/g;->c:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Lf/C;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v6, 0x1

    const-class v8, Lf/C;

    const-string v9, "onPositionChanged"

    const-string v10, "onPositionChanged(Lcom/adobe/dcmscan/ui/pager/DocumentPosition;)V"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v13}, Lf/B;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    iput v2, p0, Lf/g;->a:I

    invoke-virtual {v1, v5, p0}, Lf/u;->a(Lf/B;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_13

    goto :goto_a

    :cond_13
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_a
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
