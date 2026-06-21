.class public final Lc/V;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>(ILc/X;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc/V;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lc/V;->a:Ljava/lang/Object;

    iput p1, p0, Lc/V;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc/V;->$r8$classId:I

    iput-object p1, p0, Lc/V;->a:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lc/V;->$r8$classId:I

    .line 3
    check-cast p2, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p2, p0, Lc/V;->a:Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    iget p1, p0, Lc/V;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    invoke-direct {p1, p2, p0}, Lc/V;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Lf/B;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Le/n1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Le/A0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Animatable;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Lc/M0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1

    :pswitch_5
    new-instance p1, Lc/V;

    iget-object v0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast v0, Lc/X;

    iget p0, p0, Lc/V;->b:I

    invoke-direct {p1, p0, v0, p2}, Lc/V;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc/V;->$r8$classId:I

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    invoke-direct {p1, p2, p0}, Lc/V;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Lf/B;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Le/n1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Le/A0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Animatable;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p1, Lc/V;

    iget-object p0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast p0, Lc/M0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p1, Lc/V;

    iget-object v0, p0, Lc/V;->a:Ljava/lang/Object;

    check-cast v0, Lc/X;

    iget p0, p0, Lc/V;->b:I

    invoke-direct {p1, p0, v0, p2}, Lc/V;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lc/V;->$r8$classId:I

    const/4 v1, 0x6

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    iget-object v7, p0, Lc/V;->a:Ljava/lang/Object;

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lc/V;->b:I

    if-eqz v1, :cond_1

    if-ne v1, v8, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v7, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput v8, p0, Lc/V;->b:I

    invoke-interface {v7, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1

    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lc/V;->b:I

    if-eqz v1, :cond_4

    if-ne v1, v8, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v7, Lf/B;

    iput v8, p0, Lc/V;->b:I

    invoke-virtual {v7, p0}, Lf/B;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    move-object p1, v0

    :cond_5
    :goto_1
    return-object p1

    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v9, p0, Lc/V;->b:I

    if-eqz v9, :cond_7

    if-ne v9, v8, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v7, Le/n1;

    iput v8, p0, Lc/V;->b:I

    const-wide/16 v9, 0x0

    invoke-static {v2, v3, v4, v1}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v12, p0

    invoke-virtual/range {v7 .. v12}, Le/n1;->a(FJLandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    goto :goto_2

    :cond_8
    move-object p0, v5

    :goto_2
    if-ne p0, v0, :cond_9

    move-object v5, v0

    :cond_9
    :goto_3
    return-object v5

    :pswitch_2
    move-object v10, p0

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v10, Lc/V;->b:I

    if-eqz v0, :cond_b

    if-ne v0, v8, :cond_a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v7, Le/A0;

    iput v8, v10, Lc/V;->b:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Le/A0;->i:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    new-instance v0, Lc/A;

    invoke-direct {v0, v7, v4}, Lc/A;-><init>(Le/A0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v10}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_c

    goto :goto_4

    :cond_c
    move-object p1, v5

    :goto_4
    if-ne p1, p0, :cond_d

    move-object v5, p0

    :cond_d
    :goto_5
    return-object v5

    :pswitch_3
    move-object v10, p0

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v10, Lc/V;->b:I

    if-eqz v0, :cond_f

    if-ne v0, v8, :cond_e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v7

    check-cast v6, Landroidx/compose/animation/core/Animatable;

    new-instance v7, Ljava/lang/Float;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {v7, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v2, v3, v4, v1}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p1

    iput v8, v10, Lc/V;->b:I

    const/4 v9, 0x0

    const/16 v11, 0xc

    move-object v8, p1

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_10

    move-object v5, p0

    :cond_10
    :goto_6
    return-object v5

    :pswitch_4
    move-object v10, p0

    check-cast v7, Lc/M0;

    iget-object p0, v7, Lc/M0;->a:Lc/G;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v10, Lc/V;->b:I

    if-eqz v1, :cond_12

    if-ne v1, v8, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v7, Lc/M0;->d:Lc/P0;

    sget-object v1, Lc/P0;->f:Lc/P0;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lc/G;->a:Ljava/lang/String;

    const-string p1, "<set-?>"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v7, Lc/M0;->d:Lc/P0;

    invoke-virtual {p0}, Lc/G;->h()V

    iput v8, v10, Lc/V;->b:I

    if-ne v5, v0, :cond_13

    move-object v5, v0

    :cond_13
    :goto_7
    return-object v5

    :pswitch_5
    move-object v10, p0

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v7, Lc/X;

    iget p0, v10, Lc/V;->b:I

    iget-object p1, v7, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v0, v7, Lc/X;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    const/16 v1, 0xb

    invoke-static {v7, p0, v4, v1}, Lc/X;->a(Lc/X;ILjava/util/ArrayList;I)Lc/v1;

    move-result-object p0

    iget-object v1, p0, Lc/v1;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_14

    check-cast v5, Lc/x;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/s1;

    iget-object v7, v5, Lc/x;->a:Lc/H;

    new-instance v9, Landroid/util/Size;

    iget v10, v7, Lc/H;->a:I

    iget v7, v7, Lc/H;->b:I

    invoke-direct {v9, v10, v7}, Landroid/util/Size;-><init>(II)V

    sget-object v7, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    invoke-virtual {v3}, Lc/s1;->g()Lc/a;

    move-result-object v7

    const-string v10, "userCrop"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Landroid/util/Size;

    iget-object v3, v3, Lc/s1;->h:Lc/G;

    iget v11, v3, Lc/G;->d:I

    iget v3, v3, Lc/G;->e:I

    invoke-direct {v10, v11, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7, v10}, La/l;->a(Lc/a;Landroid/util/Size;)[Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v9}, La/l;->a(Landroid/util/Size;)[Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v3, v7}, Lc/s1;->a([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v5, v5, Lc/x;->e:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_8

    :cond_14
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v4

    :cond_15
    new-instance p1, Lg/J;

    invoke-direct {p1}, Lg/J;-><init>()V

    iput-boolean v8, p1, Lg/J;->d:Z

    iput-object v2, p1, Lg/J;->b:Ljava/util/List;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lc/v1;->a:F

    iget p0, p0, Lc/v1;->b:F

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p0, Lc/L;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/b;

    instance-of v5, v3, Lg/T;

    if-eqz v5, :cond_17

    check-cast v3, Lg/T;

    invoke-virtual {p1, v3}, Lg/J;->a(Lg/T;)Lg/W;

    move-result-object v3

    goto :goto_a

    :cond_17
    instance-of v5, v3, Lg/e0;

    if-eqz v5, :cond_18

    check-cast v3, Lg/e0;

    invoke-virtual {p1, v3}, Lg/J;->a(Lg/e0;)Lg/f0;

    move-result-object v3

    goto :goto_a

    :cond_18
    move-object v3, v4

    :goto_a
    if-eqz v3, :cond_16

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_19
    invoke-direct {p0, v1, v2}, Lc/L;-><init>(Landroid/graphics/RectF;Ljava/util/ArrayList;)V

    move-object v4, p0

    :cond_1a
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
