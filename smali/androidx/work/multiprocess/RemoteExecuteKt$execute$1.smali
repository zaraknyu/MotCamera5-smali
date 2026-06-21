.class public final Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

.field public final synthetic $iInterface:Lcom/google/common/util/concurrent/ListenableFuture;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->$iInterface:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->$iInterface:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

    invoke-direct {p1, v0, p0, p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->$iInterface:Lcom/google/common/util/concurrent/ListenableFuture;

    iput v3, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->label:I

    invoke-static {p1, p0}, Landroidx/concurrent/futures/ListenableFutureKt;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Landroid/os/IInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v2, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->label:I

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;->$dispatcher:Landroidx/work/multiprocess/RemoteDispatcher;

    invoke-static {p1, v1, p0}, Landroidx/work/multiprocess/RemoteExecuteKt;->execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to service"

    invoke-virtual {p1, v0, v1, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    throw p0
.end method
