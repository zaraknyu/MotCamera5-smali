.class public final Landroidx/compose/runtime/BroadcastFrameClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/MonotonicFrameClock;


# instance fields
.field public awaiters:Ljava/util/ArrayList;

.field public failureCause:Ljava/lang/Throwable;

.field public final hasAwaitersUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

.field public final lock:Ljava/lang/Object;

.field public final onNewAwaiters:Landroidx/compose/runtime/Pending$keyMap$2;

.field public spareList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Pending$keyMap$2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Landroidx/compose/runtime/Pending$keyMap$2;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->spareList:Ljava/util/ArrayList;

    new-instance p1, Landroidx/compose/runtime/internal/AtomicInt;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->hasAwaitersUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->get(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    return-object p0
.end method

.method public final minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->minusKey(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final sendFrame(J)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/compose/runtime/BroadcastFrameClock;->spareList:Ljava/util/ArrayList;

    iput-object v2, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->spareList:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->hasAwaitersUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    if-ge v2, p0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    iget-object v4, v3, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v3, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->onFrame:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_2
    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p2, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    invoke-direct {p2, p1, v0}, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    iget-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/BroadcastFrameClock;->failureCause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroidx/compose/runtime/BroadcastFrameClock;->hasAwaitersUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p1

    new-instance p1, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v1, 0x18

    invoke-direct {p1, v1, p0, p2}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    if-eqz v2, :cond_4

    iget-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Landroidx/compose/runtime/Pending$keyMap$2;

    :try_start_2
    invoke-virtual {p1}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    iget-object p2, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object v1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->failureCause:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    monitor-exit p2

    goto :goto_2

    :cond_2
    :try_start_4
    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->failureCause:Ljava/lang/Throwable;

    iget-object v1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    iget-object v5, v5, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->hasAwaitersUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0

    :goto_3
    monitor-exit p1

    throw p0
.end method
