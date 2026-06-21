.class public abstract Landroidx/work/multiprocess/RemoteExecuteKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final execute(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;)Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;
    .locals 2

    const-string v0, "executor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Landroidx/concurrent/futures/SuspendToFutureAdapter;->GlobalListenableFutureScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object v0

    .line 24
    invoke-static {p0, v0}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    .line 25
    new-instance v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Landroidx/concurrent/futures/SuspendToFutureAdapter;->launchFuture(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 7

    instance-of v0, p2, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;

    iget v1, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;

    .line 1
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    :goto_0
    iget-object p2, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3
    iget v2, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    const/4 v3, 0x0

    const-string v4, "binder"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$3:Landroid/os/IBinder;

    check-cast p0, Landroid/os/IBinder;

    iget-object p1, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$0:Landroid/os/IInterface;

    check-cast v0, Landroid/os/IInterface;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 7
    :try_start_1
    move-object v6, p0

    check-cast v6, Landroid/os/IInterface;

    iput-object v6, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$0:Landroid/os/IInterface;

    iput-object p2, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v6, v2

    check-cast v6, Landroid/os/IBinder;

    iput-object v6, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$3:Landroid/os/IBinder;

    iput v5, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    new-instance v5, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    .line 8
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->UNDECIDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-direct {v5, v0, v6}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/intrinsics/CoroutineSingletons;)V

    .line 9
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzp;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v5}, Lcom/google/android/play/core/appupdate/internal/zzp;-><init>(ILjava/lang/Object;)V

    .line 10
    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 11
    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 12
    new-instance v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;

    invoke-direct {v0, v5}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;-><init>(Lkotlin/coroutines/SafeContinuation;)V

    .line 13
    check-cast p0, Landroid/os/IInterface;

    invoke-interface {p1, p0, v0}, Landroidx/work/multiprocess/RemoteDispatcher;->execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;)V

    .line 14
    invoke-virtual {v5}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    :try_start_2
    check-cast p2, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder$DeathRecipient;

    if-eqz p1, :cond_4

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :try_start_3
    invoke-interface {p0, p1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_4
    return-object p2

    :catchall_1
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    .line 17
    :goto_2
    :try_start_4
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_5

    .line 18
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/ListenableWorkerImplClient;->TAG:Ljava/lang/String;

    const-string v2, "Unable to execute"

    invoke-virtual {v0, v1, v2, p2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_2
    move-exception p2

    goto :goto_4

    .line 19
    :cond_5
    :goto_3
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    :goto_4
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder$DeathRecipient;

    if-eqz p1, :cond_6

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :try_start_5
    invoke-interface {p0, p1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_1

    .line 22
    :catch_1
    :cond_6
    throw p2
.end method
