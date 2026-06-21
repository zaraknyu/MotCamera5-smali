.class public final Le/B0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public a:I

.field public final synthetic b:Lc/X;


# direct methods
.method public synthetic constructor <init>(ILc/X;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Le/B0;->$r8$classId:I

    iput-object p2, p0, Le/B0;->b:Lc/X;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    iget v0, p0, Le/B0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Le/B0;

    iget-object p0, p0, Le/B0;->b:Lc/X;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Le/B0;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    return-object v0

    :pswitch_0
    new-instance v0, Le/B0;

    iget-object p0, p0, Le/B0;->b:Lc/X;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Le/B0;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    return-object v0

    :pswitch_1
    new-instance v0, Le/B0;

    iget-object p0, p0, Le/B0;->b:Lc/X;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Le/B0;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/B0;->$r8$classId:I

    check-cast p1, Lkotlin/coroutines/Continuation;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Le/B0;

    iget-object p0, p0, Le/B0;->b:Lc/X;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Le/B0;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Le/B0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Le/B0;

    iget-object p0, p0, Le/B0;->b:Lc/X;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Le/B0;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Le/B0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Le/B0;

    iget-object p0, p0, Le/B0;->b:Lc/X;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Le/B0;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Le/B0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Le/B0;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Le/B0;->b:Lc/X;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, p0, Le/B0;->a:I

    if-eqz v5, :cond_1

    if-ne v5, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v4, p0, Le/B0;->a:I

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v3, Lc/S;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v2, v1}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1

    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, p0, Le/B0;->a:I

    if-eqz v5, :cond_4

    if-ne v5, v4, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v4, p0, Le/B0;->a:I

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v3, Lc/S;

    invoke-direct {v3, v4, v2, v1}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    move-object p1, v0

    :cond_5
    :goto_1
    return-object p1

    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, p0, Le/B0;->a:I

    if-eqz v5, :cond_7

    if-ne v5, v4, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v4, p0, Le/B0;->a:I

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v3, Lc/S;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v1}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    move-object p1, v0

    :cond_8
    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
