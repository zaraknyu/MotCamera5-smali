.class public final Lc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lc/e;Ljava/lang/String;)Lc/G;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance p0, Lc/G;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lc/G;-><init>(Ljava/lang/String;ZZ)V

    const/16 p1, 0x50

    .line 3
    iput p1, p0, Lc/G;->h:I

    return-object p0
.end method

.method public static synthetic a(Lc/h;ZI)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 p2, 0x1

    .line 15
    invoke-static {p0, p1, p2}, Lc/e;->a(Lc/h;ZZ)V

    return-void
.end method

.method public static a(Lc/h;ZZ)V
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lc/h;->g:Z

    if-nez p1, :cond_0

    .line 5
    iput-boolean v0, p0, Lc/h;->g:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    iget-boolean p1, p0, Lc/h;->h:Z

    if-nez p1, :cond_1

    .line 7
    iput-boolean v0, p0, Lc/h;->h:Z

    .line 8
    :cond_1
    sget-object p1, Lc/h;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 9
    iget-object p0, p0, Lc/h;->i:Lc/u;

    .line 10
    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p0, Lc/h;->m:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 12
    new-instance p1, Lc/c;

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, p2, v0}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {v1, p0, v0, p1, p2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lc/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc/b;

    iget v1, v0, Lc/b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/b;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/b;

    invoke-direct {v0, p0, p1}, Lc/b;-><init>(Lc/e;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lc/b;->b:Ljava/lang/Object;

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    iget v1, v0, Lc/b;->d:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lc/b;->a:Ljava/util/Iterator;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    sget-object p0, Lc/h;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 18
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    .line 19
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    :cond_3
    sget-object v1, Lc/h;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 21
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v5

    .line 22
    instance-of v6, v5, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    if-nez v6, :cond_4

    .line 23
    invoke-static {v5}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/u;

    if-eqz v5, :cond_4

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 28
    move-object v7, v6

    check-cast v7, Lc/u;

    .line 29
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 31
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/u;

    .line 33
    sget-object v5, Lc/h;->j:Lc/e;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v5, Lc/t;->a:Lc/t;

    invoke-virtual {p0, v5, v4}, Lc/u;->a(Lkotlin/jvm/functions/Function1;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 36
    iput-object v1, v0, Lc/b;->a:Ljava/util/Iterator;

    iput v4, v0, Lc/b;->d:I

    .line 37
    sget-object v5, Lc/h;->m:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 38
    new-instance v6, Lb/m;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v3, v7}, Lb/m;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, v5, :cond_8

    goto :goto_3

    :cond_8
    move-object p0, v2

    :goto_3
    if-ne p0, p1, :cond_7

    return-object p1

    :cond_9
    return-object v2
.end method
