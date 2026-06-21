.class public final Lc/A0;
.super Lc/M0;
.source "SourceFile"


# instance fields
.field public final f:I

.field public final synthetic g:Lc/s1;


# direct methods
.method public constructor <init>(Lc/s1;ILjava/util/List;Lc/G;)V
    .locals 1

    const-string v0, "rendition"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/A0;->g:Lc/s1;

    invoke-direct {p0, p1, p3, p4}, Lc/M0;-><init>(Lc/s1;Ljava/util/List;Lc/G;)V

    iput p2, p0, Lc/A0;->f:I

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5
    instance-of v2, p2, Lc/y0;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lc/y0;

    iget v3, v2, Lc/y0;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lc/y0;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lc/y0;

    invoke-direct {v2, p0, p2}, Lc/y0;-><init>(Lc/A0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v2, Lc/y0;->d:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    iget v4, v2, Lc/y0;->f:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v0, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object p0, v2, Lc/y0;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, v2, Lc/y0;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v2, Lc/y0;->c:Lc/s1;

    iget-object v4, v2, Lc/y0;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v2, Lc/y0;->a:Ljava/lang/Object;

    check-cast v6, Lc/A0;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v6

    move-object v6, p2

    move-object p2, v4

    move-object v4, v9

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :cond_3
    iget-object p0, v2, Lc/y0;->c:Lc/s1;

    iget-object v4, v2, Lc/y0;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v2, Lc/y0;->a:Ljava/lang/Object;

    check-cast v8, Lc/A0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v4

    move-object v4, p0

    move-object p0, v8

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    iput-object p0, v2, Lc/y0;->a:Ljava/lang/Object;

    iget-object p2, p0, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, v2, Lc/y0;->b:Ljava/lang/Object;

    iget-object v4, p0, Lc/A0;->g:Lc/s1;

    iput-object v4, v2, Lc/y0;->c:Lc/s1;

    iput v0, v2, Lc/y0;->f:I

    invoke-virtual {p2, v2}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_5

    goto :goto_5

    .line 8
    :cond_5
    :goto_1
    :try_start_2
    iput-object p0, v2, Lc/y0;->a:Ljava/lang/Object;

    iput-object p2, v2, Lc/y0;->b:Ljava/lang/Object;

    iput-object v4, v2, Lc/y0;->c:Lc/s1;

    iput v6, v2, Lc/y0;->f:I

    invoke-static {p0, v2}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v6, v3, :cond_6

    goto :goto_5

    :cond_6
    move-object v9, v4

    move-object v4, p0

    move-object p0, v9

    :goto_2
    :try_start_3
    check-cast v6, Lc/N0;

    .line 9
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 11
    :try_start_4
    iget v8, v4, Lc/A0;->f:I

    if-ne v8, v0, :cond_7

    .line 12
    filled-new-array {p1, v1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_9

    .line 13
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v1, v0}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 14
    :goto_3
    :try_start_5
    new-instance v0, Lc/z0;

    invoke-direct {v0, v4, v6, v7}, Lc/z0;-><init>(Lc/A0;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v2, Lc/y0;->a:Ljava/lang/Object;

    iput-object v6, v2, Lc/y0;->b:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iput-object v7, v2, Lc/y0;->c:Lc/s1;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iput v5, v2, Lc/y0;->f:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v1, Lc/Y0;

    invoke-direct {v1, p1, p0, v0, v7}, Lc/Y0;-><init>(Ljava/util/List;Lc/s1;Lc/z0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_8

    goto :goto_4

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_4
    if-ne p0, v3, :cond_9

    :goto_5
    return-object v3

    :cond_9
    move-object p1, p2

    move-object p0, v6

    .line 16
    :goto_6
    :try_start_9
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 17
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_3
    move-exception p0

    move-object v4, p2

    :goto_7
    move-object p2, v4

    goto :goto_9

    :catchall_4
    move-exception p0

    move-object p1, p2

    :goto_8
    move-object p2, p1

    :goto_9
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public final a(Lc/P0;Lc/P0;)Z
    .locals 0

    const-string p0, "fromState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "toState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p1, Lc/P0;->a:Lc/a;

    iget-object p1, p2, Lc/P0;->a:Lc/a;

    .line 2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p1}, Lc/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
