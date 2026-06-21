.class public final Landroidx/room/coroutines/Pool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final availableConnections:Landroidx/collection/CircularArray;

.field public final capacity:I

.field public final connectionFactory:Lkotlin/jvm/functions/Function0;

.field public final connectionPermits:Lkotlinx/coroutines/sync/SemaphoreImpl;

.field public final connections:[Landroidx/room/coroutines/ConnectionWithLock;

.field public isClosed:Z

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public size:I


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/coroutines/Pool;->capacity:I

    iput-object p2, p0, Landroidx/room/coroutines/Pool;->connectionFactory:Lkotlin/jvm/functions/Function0;

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Landroidx/room/coroutines/Pool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    new-array p2, p1, [Landroidx/room/coroutines/ConnectionWithLock;

    iput-object p2, p0, Landroidx/room/coroutines/Pool;->connections:[Landroidx/room/coroutines/ConnectionWithLock;

    sget p2, Lkotlinx/coroutines/sync/SemaphoreKt;->MAX_SPIN_CYCLES:I

    new-instance p2, Lkotlinx/coroutines/sync/SemaphoreImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;-><init>(II)V

    iput-object p2, p0, Landroidx/room/coroutines/Pool;->connectionPermits:Lkotlinx/coroutines/sync/SemaphoreImpl;

    new-instance p2, Landroidx/collection/CircularArray;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    if-gt p1, v2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v1

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iput v0, p2, Landroidx/collection/CircularArray;->capacityBitmask:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p2, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/coroutines/Pool;->availableConnections:Landroidx/collection/CircularArray;

    return-void

    :cond_1
    const-string p0, "capacity must be <= 2^30"

    invoke-static {p0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "capacity must be >= 1"

    invoke-static {p0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final acquire(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Landroidx/room/coroutines/Pool$acquire$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/room/coroutines/Pool$acquire$1;

    iget v1, v0, Landroidx/room/coroutines/Pool$acquire$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/coroutines/Pool$acquire$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/coroutines/Pool$acquire$1;

    invoke-direct {v0, p0, p1}, Landroidx/room/coroutines/Pool$acquire$1;-><init>(Landroidx/room/coroutines/Pool;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Landroidx/room/coroutines/Pool$acquire$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/room/coroutines/Pool$acquire$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/room/coroutines/Pool$acquire$1;->L$0:Landroidx/room/coroutines/Pool;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Landroidx/room/coroutines/Pool$acquire$1;->L$0:Landroidx/room/coroutines/Pool;

    iput v3, v0, Landroidx/room/coroutines/Pool$acquire$1;->label:I

    iget-object p1, p0, Landroidx/room/coroutines/Pool;->connectionPermits:Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->permits:I

    :cond_3
    sget-object v4, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v4

    if-gt v4, v2, :cond_3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-lez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    sget-object v4, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v4

    if-gt v4, v2, :cond_5

    if-lez v4, :cond_6

    iget-object p1, p1, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->onCancellationRelease:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v5, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_5

    :cond_7
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_2

    :cond_8
    move-object p1, v5

    :goto_2
    if-ne p1, v1, :cond_9

    move-object v5, p1

    :cond_9
    :goto_3
    if-ne v5, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    :try_start_1
    iget-object p1, p0, Landroidx/room/coroutines/Pool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Landroidx/room/coroutines/Pool;->availableConnections:Landroidx/collection/CircularArray;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v1, p0, Landroidx/room/coroutines/Pool;->isClosed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_e

    iget v1, v0, Landroidx/collection/CircularArray;->head:I

    iget v4, v0, Landroidx/collection/CircularArray;->tail:I

    if-ne v1, v4, :cond_c

    iget v1, p0, Landroidx/room/coroutines/Pool;->size:I

    iget v4, p0, Landroidx/room/coroutines/Pool;->capacity:I

    if-lt v1, v4, :cond_b

    goto :goto_5

    :cond_b
    new-instance v1, Landroidx/room/coroutines/ConnectionWithLock;

    iget-object v4, p0, Landroidx/room/coroutines/Pool;->connectionFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/sqlite/SQLiteConnection;

    invoke-direct {v1, v4}, Landroidx/room/coroutines/ConnectionWithLock;-><init>(Landroidx/sqlite/SQLiteConnection;)V

    iget-object v4, p0, Landroidx/room/coroutines/Pool;->connections:[Landroidx/room/coroutines/ConnectionWithLock;

    iget v5, p0, Landroidx/room/coroutines/Pool;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/room/coroutines/Pool;->size:I

    aput-object v1, v4, v5

    invoke-virtual {v0, v1}, Landroidx/collection/CircularArray;->addLast(Landroidx/room/coroutines/ConnectionWithLock;)V

    :cond_c
    :goto_5
    iget v1, v0, Landroidx/collection/CircularArray;->head:I

    iget v4, v0, Landroidx/collection/CircularArray;->tail:I

    if-eq v1, v4, :cond_d

    iget-object v4, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    aget-object v5, v4, v1

    aput-object v2, v4, v1

    add-int/2addr v1, v3

    iget v2, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v1, v2

    iput v1, v0, Landroidx/collection/CircularArray;->head:I

    check-cast v5, Landroidx/room/coroutines/ConnectionWithLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v5

    :catchall_0
    move-exception p1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_d
    :try_start_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_e
    const-string v0, "Connection pool is closed"

    const/16 v1, 0x15

    invoke-static {v1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    :try_start_5
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    iget-object p0, p0, Landroidx/room/coroutines/Pool;->connectionPermits:Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    throw p1

    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    throw p0
.end method

.method public final acquireWithTimeout-KLykuaI(JLandroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p4

    instance-of v1, v0, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;

    iget v2, v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;-><init>(Landroidx/room/coroutines/Pool;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v7, v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->J$0:J

    iget-object v2, v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->L$1:Lkotlin/jvm/functions/Function0;

    iget-object v9, v1, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->L$0:Landroidx/room/coroutines/Pool;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v7, p1

    move-object v4, v1

    move-object/from16 v1, p3

    :goto_1
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    :try_start_1
    new-instance v0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;

    invoke-direct {v0, v9, v2, v6}, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/room/coroutines/Pool;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v4, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->L$0:Landroidx/room/coroutines/Pool;

    iput-object v1, v4, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->L$1:Lkotlin/jvm/functions/Function0;

    iput-object v9, v4, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-wide v7, v4, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->J$0:J

    iput v5, v4, Landroidx/room/coroutines/Pool$acquireWithTimeout$1;->label:I

    sget v10, Lkotlin/time/Duration;->$r8$clinit:I

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    const/4 v13, 0x0

    if-lez v12, :cond_3

    move v12, v5

    goto :goto_2

    :cond_3
    move v12, v13

    :goto_2
    if-ne v12, v5, :cond_6

    sget-object v12, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-wide/32 v14, 0xf423f

    invoke-static {v14, v15, v12}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v14

    invoke-static {v7, v8, v14, v15}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v14

    long-to-int v12, v14

    and-int/2addr v12, v5

    if-ne v12, v5, :cond_4

    move v13, v5

    :cond_4
    if-eqz v13, :cond_5

    invoke-static {v14, v15}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v12

    if-nez v12, :cond_5

    shr-long v12, v14, v5

    goto :goto_3

    :cond_5
    sget-object v12, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v14, v15, v12}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    goto :goto_3

    :cond_6
    if-nez v12, :cond_9

    move-wide v12, v10

    :goto_3
    cmp-long v10, v12, v10

    if-lez v10, :cond_8

    new-instance v10, Lkotlinx/coroutines/TimeoutCoroutine;

    invoke-direct {v10, v12, v13, v4}, Lkotlinx/coroutines/TimeoutCoroutine;-><init>(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    invoke-static {v10, v0}, Lkotlinx/coroutines/JobKt;->setupTimeout(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v2, v16

    :goto_4
    move-object v0, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7

    :cond_8
    new-instance v0, Lkotlinx/coroutines/TimeoutCancellationException;

    const-string v10, "Timed out immediately"

    invoke-direct {v0, v10, v6}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v2, v16

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_6
    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    :goto_7
    :try_start_2
    instance-of v10, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v10, :cond_a

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :cond_a
    if-nez v0, :cond_c

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    :goto_8
    move-object v2, v9

    goto/16 :goto_1

    :cond_c
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_9
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/room/coroutines/ConnectionWithLock;

    if-eqz v1, :cond_d

    invoke-virtual {v9, v1}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V

    :cond_d
    throw v0
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Landroidx/room/coroutines/Pool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/room/coroutines/Pool;->isClosed:Z

    iget-object p0, p0, Landroidx/room/coroutines/Pool;->connections:[Landroidx/room/coroutines/ConnectionWithLock;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/room/coroutines/ConnectionWithLock;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final dump(Ljava/lang/StringBuilder;)V
    .locals 12

    const-string v0, ", "

    iget-object v1, p0, Landroidx/room/coroutines/Pool;->availableConnections:Landroidx/collection/CircularArray;

    iget-object v2, p0, Landroidx/room/coroutines/Pool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    iget v4, v1, Landroidx/collection/CircularArray;->tail:I

    iget v5, v1, Landroidx/collection/CircularArray;->head:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    if-ltz v6, :cond_0

    iget v7, v1, Landroidx/collection/CircularArray;->tail:I

    iget v8, v1, Landroidx/collection/CircularArray;->head:I

    sub-int/2addr v7, v8

    iget v9, v1, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v7, v9

    if-ge v6, v7, :cond_0

    iget-object v7, v1, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    add-int/2addr v8, v6

    and-int/2addr v8, v9

    aget-object v7, v7, v8

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capacity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/room/coroutines/Pool;->capacity:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "permits="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/room/coroutines/Pool;->connectionPermits:Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->_availablePermits$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queue=(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lkotlin/collections/AbstractMutableList;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    const/16 v11, 0x3f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/room/coroutines/Pool;->connections:[Landroidx/room/coroutines/ConnectionWithLock;

    array-length v1, p0

    move v3, v5

    :goto_1
    if-ge v5, v1, :cond_4

    aget-object v4, p0, v5

    add-int/lit8 v3, v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\t["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    iget-object v7, v4, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Landroidx/room/coroutines/ConnectionWithLock;->dump(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/coroutines/Pool;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/room/coroutines/Pool;->availableConnections:Landroidx/collection/CircularArray;

    invoke-virtual {v1, p1}, Landroidx/collection/CircularArray;->addLast(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Landroidx/room/coroutines/Pool;->connectionPermits:Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
