.class public final Le/g0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Z

.field public final synthetic f:Le/Q;

.field public final synthetic g:Lc/X;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;

.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function1;ZLe/Q;Lc/X;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Le/g0;->c:Z

    iput-object p2, p0, Le/g0;->d:Lkotlin/jvm/functions/Function1;

    iput-boolean p3, p0, Le/g0;->e:Z

    iput-object p4, p0, Le/g0;->f:Le/Q;

    iput-object p5, p0, Le/g0;->g:Lc/X;

    iput-object p6, p0, Le/g0;->h:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Le/g0;->i:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Le/g0;->j:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Le/g0;->k:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    new-instance v0, Le/g0;

    iget-object v8, p0, Le/g0;->j:Landroidx/compose/runtime/MutableState;

    iget-object v9, p0, Le/g0;->k:Landroidx/compose/runtime/MutableState;

    iget-boolean v1, p0, Le/g0;->c:Z

    iget-object v2, p0, Le/g0;->d:Lkotlin/jvm/functions/Function1;

    iget-boolean v3, p0, Le/g0;->e:Z

    iget-object v4, p0, Le/g0;->f:Le/Q;

    iget-object v5, p0, Le/g0;->g:Lc/X;

    iget-object v6, p0, Le/g0;->h:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Le/g0;->i:Landroidx/compose/runtime/MutableState;

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Le/g0;-><init>(ZLkotlin/jvm/functions/Function1;ZLe/Q;Lc/X;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/g0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Le/g0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Le/g0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Le/g0;->b:I

    iget-object v2, p0, Le/g0;->j:Landroidx/compose/runtime/MutableState;

    const/4 v3, 0x3

    const/4 v4, 0x2

    iget-object v5, p0, Le/g0;->g:Lc/X;

    iget-object v6, p0, Le/g0;->f:Le/Q;

    iget-object v7, p0, Le/g0;->h:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Le/g0;->d:Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v9, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/g0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Le/g0;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Le/g0;->c:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Le/g0;->e:Z

    xor-int/2addr p1, v9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v8, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, p0, Le/g0;->a:Ljava/lang/Object;

    iput v9, p0, Le/g0;->b:I

    invoke-interface {v6, v5, p0}, Le/Q;->b(Lc/X;Le/g0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v7

    :goto_0
    check-cast p1, Ljava/util/List;

    sget v1, Le/m0;->a:F

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Le/g0;->i:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/a0;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lg/a0;->b()J

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v8, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput v4, p0, Le/g0;->b:I

    invoke-interface {v6, v5, p0}, Le/Q;->a(Lc/X;Le/g0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Le/g0;->a:Ljava/lang/Object;

    iput v3, p0, Le/g0;->b:I

    invoke-interface {v6, v5, p0}, Le/Q;->c(Lc/X;Le/g0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    :goto_2
    return-object v0

    :cond_8
    move-object v0, p1

    move-object p1, v1

    :goto_3
    check-cast p1, Ljava/util/List;

    sget v1, Le/m0;->a:F

    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Le/g0;->k:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
