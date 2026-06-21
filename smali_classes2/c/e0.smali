.class public final Lc/e0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Ljava/lang/Object;

.field public c:Lc/s1;

.field public d:Z

.field public e:I

.field public final synthetic f:Lc/f0;

.field public final synthetic g:Lc/s1;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lc/f0;Lc/s1;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/e0;->f:Lc/f0;

    iput-object p2, p0, Lc/e0;->g:Lc/s1;

    iput-boolean p3, p0, Lc/e0;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lc/e0;

    iget-object v0, p0, Lc/e0;->g:Lc/s1;

    iget-boolean v1, p0, Lc/e0;->h:Z

    iget-object p0, p0, Lc/e0;->f:Lc/f0;

    invoke-direct {p1, p0, v0, v1, p2}, Lc/e0;-><init>(Lc/f0;Lc/s1;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lc/e0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lc/e0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lc/e0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lc/e0;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lc/e0;->b:Ljava/lang/Object;

    check-cast v0, Lc/N0;

    iget-object p0, p0, Lc/e0;->a:Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v1, p0, Lc/e0;->d:Z

    iget-object v3, p0, Lc/e0;->c:Lc/s1;

    iget-object v4, p0, Lc/e0;->b:Ljava/lang/Object;

    check-cast v4, Lc/f0;

    iget-object v5, p0, Lc/e0;->a:Lkotlinx/coroutines/sync/Mutex;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v3

    move-object v8, v4

    :goto_0
    move v11, v1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9

    :cond_2
    iget-boolean v1, p0, Lc/e0;->d:Z

    iget-object v4, p0, Lc/e0;->c:Lc/s1;

    iget-object v7, p0, Lc/e0;->b:Ljava/lang/Object;

    check-cast v7, Lc/f0;

    iget-object v8, p0, Lc/e0;->a:Lkotlinx/coroutines/sync/Mutex;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v5, v8

    goto/16 :goto_9

    :cond_3
    iget-boolean v1, p0, Lc/e0;->d:Z

    iget-object v7, p0, Lc/e0;->c:Lc/s1;

    iget-object v8, p0, Lc/e0;->b:Ljava/lang/Object;

    check-cast v8, Lc/f0;

    iget-object v9, p0, Lc/e0;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v9

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v8, p0, Lc/e0;->f:Lc/f0;

    iget-object p1, v8, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p1, p0, Lc/e0;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v8, p0, Lc/e0;->b:Ljava/lang/Object;

    iget-object v7, p0, Lc/e0;->g:Lc/s1;

    iput-object v7, p0, Lc/e0;->c:Lc/s1;

    iget-boolean v1, p0, Lc/e0;->h:Z

    iput-boolean v1, p0, Lc/e0;->d:Z

    iput v5, p0, Lc/e0;->e:I

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    :try_start_3
    iput-object p1, p0, Lc/e0;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v8, p0, Lc/e0;->b:Ljava/lang/Object;

    iput-object v7, p0, Lc/e0;->c:Lc/s1;

    iput-boolean v1, p0, Lc/e0;->d:Z

    iput v4, p0, Lc/e0;->e:I

    invoke-static {v8, p0}, Lc/M0;->a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v4, v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v13, v8

    move-object v8, p1

    move-object p1, v4

    move-object v4, v7

    move-object v7, v13

    :goto_2
    :try_start_4
    check-cast p1, Lc/N0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_7

    invoke-interface {v8, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :cond_7
    :try_start_5
    iget-object p1, v4, Lc/s1;->M:Lc/d0;

    iput-object v8, p0, Lc/e0;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v7, p0, Lc/e0;->b:Ljava/lang/Object;

    iput-object v4, p0, Lc/e0;->c:Lc/s1;

    iput-boolean v1, p0, Lc/e0;->d:Z

    iput v3, p0, Lc/e0;->e:I

    invoke-virtual {p1, v5, p0}, Lc/d0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne p1, v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v10, v4

    move-object v5, v8

    move-object v8, v7

    goto :goto_0

    :goto_3
    :try_start_6
    move-object v9, p1

    check-cast v9, Lc/N0;

    if-eqz v9, :cond_c

    iput-object v5, p0, Lc/e0;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v9, p0, Lc/e0;->b:Ljava/lang/Object;

    iput-object v6, p0, Lc/e0;->c:Lc/s1;

    iput v2, p0, Lc/e0;->e:I

    sget-object p1, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v7, Lc/a1;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lc/a1;-><init>(Lc/M0;Lc/N0;Lc/s1;ZLkotlin/coroutines/Continuation;)V

    invoke-static {v7, p0}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne p1, v0, :cond_9

    :goto_4
    return-object v0

    :cond_9
    move-object p0, v5

    move-object v0, v9

    :goto_5
    :try_start_7
    check-cast p1, Lc/N0;

    if-eqz p1, :cond_a

    iget-object v1, p1, Lc/N0;->b:Landroid/graphics/Bitmap;

    goto :goto_6

    :cond_a
    move-object v1, v6

    :goto_6
    iget-object v2, v0, Lc/N0;->b:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v0, v0, Lc/N0;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    move-object v5, p0

    goto :goto_8

    :goto_7
    move-object v5, p0

    move-object p0, p1

    goto :goto_9

    :cond_c
    move-object p1, v6

    :goto_8
    invoke-interface {v5, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_3
    move-exception v0

    move-object p0, v0

    move-object v5, p1

    :goto_9
    invoke-interface {v5, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
