.class public final Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;",
        "Landroidx/work/ListenableWorker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "workerParameters",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "work-multiprocess_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final client:Landroidx/work/multiprocess/ListenableWorkerImplClient;

.field public componentName:Landroid/content/ComponentName;

.field public final context:Landroid/content/Context;

.field public final workerParameters:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->workerParameters:Landroidx/work/WorkerParameters;

    new-instance v0, Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object p2, p2, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, p2}, Landroidx/work/multiprocess/ListenableWorkerImplClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->client:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    return-void
.end method


# virtual methods
.method public final onStopped()V
    .locals 3

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->client:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    invoke-virtual {p0, v0, v1}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Landroid/content/ComponentName;Landroidx/work/multiprocess/RemoteDispatcher;)Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

    :cond_0
    return-void
.end method

.method public final startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    const-string v1, "getInstance(context.applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    const-string/jumbo v1, "workManager.workTaskExec\u2026r.taskCoroutineDispatcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/concurrent/futures/SuspendToFutureAdapter;->GlobalListenableFutureScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;-><init>(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/SuspendToFutureAdapter;->launchFuture(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

    move-result-object p0

    return-object p0
.end method
