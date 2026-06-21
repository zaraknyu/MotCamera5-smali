.class public abstract Landroidx/work/multiprocess/RemoteClientUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final map(Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;
    .locals 2

    const-string/jumbo v0, "transformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/concurrent/futures/SuspendToFutureAdapter;->GlobalListenableFutureScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    new-instance v0, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/work/multiprocess/RemoteClientUtilsKt$map$1;-><init>(Landroidx/arch/core/util/Function;Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x0

    invoke-static {p2, p0, v0}, Landroidx/concurrent/futures/SuspendToFutureAdapter;->launchFuture(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;

    move-result-object p0

    return-object p0
.end method
