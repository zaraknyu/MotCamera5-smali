.class public final Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public label:I

.field public final synthetic this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    invoke-direct {p1, p0, p2}, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;-><init>(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    iget-object p1, p1, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p1, p1, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    const-string v1, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    iget-object v1, v1, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v1, v1, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v1, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    iget-object v3, v3, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v3, v3, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    const-string v4, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    invoke-virtual {v3, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_6

    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    iget-object v4, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v4, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->componentName:Landroid/content/ComponentName;

    iget-object p1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    iget-object v1, p1, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->client:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object p1, p1, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->componentName:Landroid/content/ComponentName;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    new-instance v5, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v5}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Landroid/content/ComponentName;Landroidx/work/multiprocess/RemoteDispatcher;)Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

    move-result-object p1

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    iput v2, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->label:I

    invoke-static {p1, v1, p0}, Landroidx/work/impl/WorkerWrapperKt;->awaitWithin(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/ListenableWorker;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, [B

    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "unmarshall(response, ParcelableResult.CREATOR)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    const-string v1, "RemoteListenableDelegatingWorker"

    const-string v2, "Cleaning up"

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;->this$0:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->client:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mConnection:Landroidx/work/multiprocess/ListenableWorkerImplClient$Connection;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mConnection:Landroidx/work/multiprocess/ListenableWorkerImplClient$Connection;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p1, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/ListenableWorker$Result;

    const-string/jumbo p1, "parcelableResult.result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    const-string p0, "Need to specify a class name for the RemoteListenableWorker to delegate to."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p0, "Need to specify a class name for the Remote Service."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p0, "Need to specify a package name for the Remote Service."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
