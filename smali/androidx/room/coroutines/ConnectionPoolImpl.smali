.class public final Landroidx/room/coroutines/ConnectionPoolImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field public final _isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final readers:Landroidx/room/coroutines/Pool;

.field public final threadLocal:Ljava/lang/ThreadLocal;

.field public final timeout:J

.field public final writers:Landroidx/room/coroutines/Pool;


# direct methods
.method public constructor <init>(Lcom/tinder/StateMachine;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const-string/jumbo v1, "unit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/16 v2, 0x1e

    if-gtz v1, :cond_0

    int-to-long v1, v2

    .line 6
    sget-object v3, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v0, v3}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    int-to-long v1, v2

    .line 7
    invoke-static {v1, v2, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 8
    :goto_0
    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 9
    new-instance v0, Landroidx/room/coroutines/Pool;

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 10
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    return-void
.end method

.method public constructor <init>(Lcom/tinder/StateMachine;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const-string/jumbo v2, "unit"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/16 v3, 0x1e

    if-gtz v2, :cond_0

    int-to-long v2, v3

    .line 16
    sget-object v4, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v0, v4}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    int-to-long v2, v3

    .line 17
    invoke-static {v2, v3, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    .line 18
    :goto_0
    iput-wide v2, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    if-lez p3, :cond_1

    .line 19
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 20
    new-instance v2, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, v1}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tinder/StateMachine;Ljava/lang/String;I)V

    .line 21
    invoke-direct {v0, p3, v2}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 22
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 23
    new-instance p3, Landroidx/room/coroutines/Pool;

    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tinder/StateMachine;Ljava/lang/String;I)V

    invoke-direct {p3, v1, v0}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 24
    iput-object p3, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    return-void

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum number of readers must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->close()V

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    invoke-virtual {p0}, Landroidx/room/coroutines/Pool;->close()V

    :cond_0
    return-void
.end method

.method public final useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    iget v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    invoke-direct {v4, v0, v3}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v3, v4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    iget-object v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->result:Ljava/lang/Object;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    const-string v8, "ROLLBACK TRANSACTION"

    const-string v9, "<this>"

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v7, :cond_5

    if-eq v7, v14, :cond_4

    if-eq v7, v13, :cond_3

    if-eq v7, v12, :cond_2

    if-ne v7, v11, :cond_1

    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/io/Serializable;

    move-object v1, v0

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/room/coroutines/Pool;

    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    :goto_1
    move-object v1, v0

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    iget-object v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Landroidx/room/coroutines/Pool;

    iget-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/io/Serializable;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iget-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/room/coroutines/ConnectionPoolImpl;

    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v5

    move-object v5, v7

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v5, v7

    goto/16 :goto_9

    :cond_3
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v5

    :cond_4
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v5

    :cond_5
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v5, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/room/coroutines/PooledConnectionImpl;

    sget-object v10, Landroidx/room/coroutines/ConnectionElement;->Key:Lcom/google/mlkit/common/internal/zzb;

    if-nez v7, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v7

    check-cast v7, Landroidx/room/coroutines/ConnectionElement;

    if-eqz v7, :cond_6

    iget-object v7, v7, Landroidx/room/coroutines/ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PooledConnectionImpl;

    goto :goto_2

    :cond_6
    move-object v7, v15

    :cond_7
    :goto_2
    if-eqz v7, :cond_d

    if-nez v1, :cond_9

    iget-boolean v0, v7, Landroidx/room/coroutines/PooledConnectionImpl;->isReadOnly:Z

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const-string v0, "Cannot upgrade connection from reader to writer"

    invoke-static {v14, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)V

    throw v15

    :cond_9
    :goto_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Landroidx/room/coroutines/ConnectionElement;

    invoke-direct {v0, v7}, Landroidx/room/coroutines/ConnectionElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;)V

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    invoke-direct {v1, v7, v5}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;Ljava/lang/ThreadLocal;)V

    invoke-static {v0, v1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;

    invoke-direct {v1, v2, v7, v15}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/Continuation;)V

    iput v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_a

    goto/16 :goto_7

    :cond_a
    return-object v0

    :cond_b
    iput v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    invoke-interface {v2, v7, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_c

    goto/16 :goto_7

    :cond_c
    return-object v0

    :cond_d
    if-eqz v1, :cond_e

    iget-object v5, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    goto :goto_4

    :cond_e
    iget-object v5, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    :goto_4
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    :try_start_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v14, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    new-instance v10, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;

    const/4 v13, 0x0

    invoke-direct {v10, v0, v1, v13}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;ZI)V

    iput-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Ljava/io/Serializable;

    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/io/Serializable;

    iput-object v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Landroidx/room/coroutines/Pool;

    iput-object v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Lkotlin/coroutines/CoroutineContext;

    iput-object v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    iput v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    invoke-virtual {v5, v14, v15, v10, v4}, Landroidx/room/coroutines/Pool;->acquireWithTimeout-KLykuaI(JLandroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v10, v6, :cond_f

    goto :goto_7

    :cond_f
    move-object v13, v0

    move v0, v1

    move-object v12, v2

    move-object v1, v7

    move-object v2, v1

    :goto_5
    :try_start_3
    check-cast v10, Landroidx/room/coroutines/ConnectionWithLock;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "context"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v10, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    iput-object v3, v10, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    iget-object v3, v13, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    iget-object v7, v13, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    if-eq v3, v7, :cond_10

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    :goto_6
    new-instance v3, Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-direct {v3, v10, v0}, Landroidx/room/coroutines/PooledConnectionImpl;-><init>(Landroidx/room/coroutines/ConnectionWithLock;Z)V

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_14

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    new-instance v1, Landroidx/room/coroutines/ConnectionElement;

    invoke-direct {v1, v0}, Landroidx/room/coroutines/ConnectionElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;)V

    iget-object v3, v13, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lkotlinx/coroutines/internal/ThreadLocalElement;

    invoke-direct {v7, v0, v3}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;Ljava/lang/ThreadLocal;)V

    invoke-static {v1, v7}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;

    const/4 v13, 0x0

    invoke-direct {v1, v12, v2, v13}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/io/Serializable;

    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Landroidx/room/coroutines/Pool;

    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Lkotlin/coroutines/CoroutineContext;

    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v0, v6, :cond_11

    :goto_7
    return-object v6

    :cond_11
    move-object v1, v2

    move-object v2, v5

    move-object v5, v0

    :goto_8
    :try_start_4
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    if-eqz v0, :cond_13

    iget-object v1, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl;->_isRecycled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v3, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_12

    :try_start_5
    invoke-static {v1, v8}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    :cond_12
    const/4 v13, 0x0

    :try_start_6
    iput-object v13, v1, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object v13, v1, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :cond_13
    return-object v5

    :catchall_3
    move-exception v0

    goto/16 :goto_1

    :cond_14
    :try_start_7
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    :goto_9
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_9
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    if-eqz v0, :cond_16

    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl;->_isRecycled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v10, 0x1

    invoke-virtual {v2, v4, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v2, :cond_15

    :try_start_a
    iget-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    invoke-static {v2, v8}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catch_1
    :cond_15
    :try_start_b
    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    const/4 v13, 0x0

    iput-object v13, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object v13, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    invoke-virtual {v5, v0}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_16
    :goto_a
    throw v3

    :cond_17
    const/16 v0, 0x15

    const-string v1, "Connection pool is closed"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)V

    const/4 v13, 0x0

    throw v13
.end method
