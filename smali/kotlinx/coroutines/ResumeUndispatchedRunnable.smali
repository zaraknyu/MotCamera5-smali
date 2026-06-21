.class public final Lkotlinx/coroutines/ResumeUndispatchedRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final continuation:Ljava/lang/Object;

.field public dispatcher:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->dispatcher:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->continuation:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->continuation:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->dispatcher:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->dispatcher:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, v2}, Lkotlinx/coroutines/JobKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->continuation:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/LimitedDispatcher;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LimitedDispatcher;->obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->dispatcher:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->continuation:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/LimitedDispatcher;

    iget-object v2, v1, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/InlineList;->safeIsDispatchNeeded(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->continuation:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    iget-object v1, v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, v0, p0}, Lkotlinx/coroutines/internal/InlineList;->safeDispatch(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->continuation:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget-object v2, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0

    :pswitch_0
    iget-object v0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->continuation:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    iget-object p0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->dispatcher:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
