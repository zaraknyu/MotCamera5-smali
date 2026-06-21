.class public final Le/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/Q;


# virtual methods
.method public final a(Lc/X;Le/g0;)Ljava/lang/Object;
    .locals 3

    .line 2
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 3
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    new-instance v0, Lc/S;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1, v1}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lc/X;Le/g0;)Ljava/lang/Object;
    .locals 3

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Lc/S;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, p1, v1}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lc/X;Le/g0;)Ljava/lang/Object;
    .locals 3

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Lc/S;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
