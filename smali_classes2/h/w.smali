.class public final Lh/w;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lh/q;

.field public final synthetic c:Lh/C;

.field public final synthetic d:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;


# direct methods
.method public constructor <init>(Lh/q;Lh/C;Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lh/w;->b:Lh/q;

    iput-object p2, p0, Lh/w;->c:Lh/C;

    iput-object p3, p0, Lh/w;->d:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lh/w;

    iget-object v0, p0, Lh/w;->c:Lh/C;

    iget-object v1, p0, Lh/w;->d:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    iget-object p0, p0, Lh/w;->b:Lh/q;

    invoke-direct {p1, p0, v0, v1, p2}, Lh/w;-><init>(Lh/q;Lh/C;Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lh/w;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lh/w;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lh/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lh/w;->c:Lh/C;

    iget-object v1, v0, Lh/C;->b:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lh/C;->a:Lc/h;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lh/w;->a:I

    const/4 v5, 0x0

    iget-object v6, p0, Lh/w;->d:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v8, :cond_1

    if-ne v4, v7, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lh/w;->b:Lh/q;

    iget-object p1, p1, Lh/q;->b:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/s;

    sget-object v4, Lc/h;->j:Lc/e;

    invoke-virtual {v2, p1}, Lc/h;->a(Lc/s;)V

    iget-object p1, v2, Lc/h;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/X;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lh/F;

    invoke-direct {v4, v2, v0}, Lh/F;-><init>(Lc/X;Lh/C;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v0, Lh/u;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v5, v1}, Lh/u;-><init>(Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;I)V

    iput v8, p0, Lh/w;->a:I

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v3, :cond_5

    goto :goto_2

    :goto_1
    const-string v0, "ScanSessionImpl"

    const-string v1, "Scan Session Resume failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v6, :cond_5

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v0, Lh/u;

    invoke-direct {v0, v6, v5, v8}, Lh/u;-><init>(Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;Lkotlin/coroutines/Continuation;I)V

    iput v7, p0, Lh/w;->a:I

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
