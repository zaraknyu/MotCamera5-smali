.class public final Lc/j0;
.super Lc/M0;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/Object;

.field public final g:Ljava/util/HashMap;

.field public final synthetic h:Lc/s1;


# direct methods
.method public constructor <init>(Lc/s1;)V
    .locals 2

    iput-object p1, p0, Lc/j0;->h:Lc/s1;

    iget-object v0, p1, Lc/s1;->C:Lc/r0;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lc/s1;->j:Lc/G;

    invoke-direct {p0, p1, v0, v1}, Lc/M0;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/j0;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lc/j0;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static final a(Lc/j0;Lc/P0;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lc/j0;->g:Ljava/util/HashMap;

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lc/j0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-object p0, p0, Lc/j0;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 31
    monitor-exit v0

    return-void

    .line 32
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of p1, p2, Lc/i0;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lc/i0;

    iget v0, p1, Lc/i0;->i:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lc/i0;->i:I

    goto :goto_0

    :cond_0
    new-instance p1, Lc/i0;

    invoke-direct {p1, p0, p2}, Lc/i0;-><init>(Lc/j0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, p1, Lc/i0;->g:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 5
    iget v1, p1, Lc/i0;->i:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, p1, Lc/i0;->c:Ljava/lang/Object;

    check-cast p0, Lg/a0;

    iget-object v0, p1, Lc/i0;->b:Ljava/lang/Object;

    check-cast v0, Lg/a0;

    iget-object p1, p1, Lc/i0;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p1, Lc/i0;->e:Lg/a0;

    iget-object v1, p1, Lc/i0;->d:Lg/a0;

    iget-object v3, p1, Lc/i0;->c:Ljava/lang/Object;

    check-cast v3, Lc/s1;

    iget-object v4, p1, Lc/i0;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, p1, Lc/i0;->a:Ljava/lang/Object;

    check-cast v5, Lc/j0;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :catch_1
    move-exception p0

    move-object p1, v4

    goto/16 :goto_7

    :cond_3
    iget-object p0, p1, Lc/i0;->c:Ljava/lang/Object;

    check-cast p0, Lc/s1;

    iget-object v1, p1, Lc/i0;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, p1, Lc/i0;->a:Ljava/lang/Object;

    check-cast v4, Lc/j0;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v4

    :goto_1
    move-object v4, v1

    goto :goto_3

    :cond_4
    iget-object p0, p1, Lc/i0;->c:Ljava/lang/Object;

    check-cast p0, Lc/s1;

    iget-object v1, p1, Lc/i0;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, p1, Lc/i0;->a:Ljava/lang/Object;

    check-cast v5, Lc/j0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v5

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iput-object p0, p1, Lc/i0;->a:Ljava/lang/Object;

    iget-object v1, p0, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v1, p1, Lc/i0;->b:Ljava/lang/Object;

    iget-object p2, p0, Lc/j0;->h:Lc/s1;

    iput-object p2, p1, Lc/i0;->c:Ljava/lang/Object;

    iput v5, p1, Lc/i0;->i:I

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    goto/16 :goto_5

    .line 7
    :cond_6
    :goto_2
    :try_start_3
    iput-object p0, p1, Lc/i0;->a:Ljava/lang/Object;

    iput-object v1, p1, Lc/i0;->b:Ljava/lang/Object;

    iput-object p2, p1, Lc/i0;->c:Ljava/lang/Object;

    iput v4, p1, Lc/i0;->i:I

    invoke-static {p0, p1}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v4, v0, :cond_7

    goto :goto_5

    :cond_7
    move-object v5, p0

    move-object p0, p2

    move-object p2, v4

    goto :goto_1

    :goto_3
    :try_start_4
    check-cast p2, Lc/N0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_8

    .line 8
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_8
    :try_start_5
    new-instance p2, Lg/a0;

    invoke-direct {p2}, Lg/a0;-><init>()V

    .line 10
    new-instance v1, Lg/a0;

    invoke-direct {v1}, Lg/a0;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 11
    :try_start_6
    invoke-virtual {p0}, Lc/s1;->k()I

    move-result v7

    iput-object v5, p1, Lc/i0;->a:Ljava/lang/Object;

    iput-object v4, p1, Lc/i0;->b:Ljava/lang/Object;

    iput-object p0, p1, Lc/i0;->c:Ljava/lang/Object;

    iput-object p2, p1, Lc/i0;->d:Lg/a0;

    iput-object v1, p1, Lc/i0;->e:Lg/a0;

    iput v3, p1, Lc/i0;->i:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v3, Lb/o;->c:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 13
    new-instance v8, Lc/h0;

    iget-object v9, v5, Lc/j0;->h:Lc/s1;

    invoke-direct {v8, v9, v7, v5, v6}, Lc/h0;-><init>(Lc/s1;ILc/j0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v8, p1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v11, v3

    move-object v3, p0

    move-object p0, v1

    move-object v1, p2

    move-object p2, v11

    .line 14
    :goto_4
    check-cast p2, Lc/k0;

    .line 15
    invoke-virtual {p0}, Lg/a0;->a()J

    move-result-wide v7

    .line 16
    sget-object v9, Lc/Z;->a:Lc/Z;

    .line 17
    iget-object v9, v3, Lc/s1;->a:Lc/X;

    .line 18
    new-instance v10, Le/i$$ExternalSyntheticLambda0;

    invoke-direct {v10, v7, v8, v3}, Le/i$$ExternalSyntheticLambda0;-><init>(JLc/s1;)V

    invoke-static {v9, v10}, Lc/Z;->b(Lc/X;Lkotlin/jvm/functions/Function1;)V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, p1, Lc/i0;->a:Ljava/lang/Object;

    iput-object v1, p1, Lc/i0;->b:Ljava/lang/Object;

    iput-object p0, p1, Lc/i0;->c:Ljava/lang/Object;

    iput-object v6, p1, Lc/i0;->d:Lg/a0;

    iput-object v6, p1, Lc/i0;->e:Lg/a0;

    iput v2, p1, Lc/i0;->i:I

    invoke-static {v5, p1}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne p2, v0, :cond_a

    :goto_5
    return-object v0

    :cond_a
    move-object v0, v1

    move-object p1, v4

    .line 20
    :goto_6
    :try_start_7
    check-cast p2, Lc/N0;

    .line 21
    invoke-virtual {p0}, Lg/a0;->b()J

    invoke-virtual {v0}, Lg/a0;->b()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 22
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    .line 23
    :goto_7
    :try_start_8
    invoke-static {p0}, La/l;->a(Ljava/lang/Exception;)V

    .line 24
    const-string p2, "Page"

    const-string v0, "CleanImageOperation run"

    .line 25
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 26
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v6

    :goto_8
    move-object v4, p1

    goto :goto_9

    :catchall_2
    move-exception p0

    move-object v4, v1

    :goto_9
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public final a(Lc/P0;Lc/P0;)Z
    .locals 1

    const-string p0, "fromState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "toState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p1, Lc/P0;->a:Lc/a;

    iget-object v0, p2, Lc/P0;->a:Lc/a;

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Lc/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    iget p0, p1, Lc/P0;->b:I

    iget p1, p2, Lc/P0;->b:I

    if-ne p0, p1, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
