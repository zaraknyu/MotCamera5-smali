.class public final Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;
.implements Lkotlin/coroutines/Continuation;


# instance fields
.field public final delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

.field public final resultDeferred:Lkotlinx/coroutines/DeferredCoroutine;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/DeferredCoroutine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->resultDeferred:Lkotlinx/coroutines/DeferredCoroutine;

    new-instance p1, Landroidx/concurrent/futures/ResolvableFuture;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p0, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {p0, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->resultDeferred:Lkotlinx/coroutines/DeferredCoroutine;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    sget-object p0, Landroidx/concurrent/futures/SuspendToFutureAdapter;->GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/Unconfined;

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    iget-object p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    instance-of p0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    return p0
.end method

.method public final isDone()Z
    .locals 0

    iget-object p0, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result p0

    return p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object p0, p0, Landroidx/concurrent/futures/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    return-void

    :cond_0
    instance-of p1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancel(Z)Z

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
