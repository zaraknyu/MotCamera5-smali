.class public final Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $resolvedTableNames:[Ljava/lang/String;

.field public final synthetic $tableIds:[I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Landroidx/room/TriggerBasedInvalidationTracker;


# direct methods
.method public constructor <init>(Landroidx/room/TriggerBasedInvalidationTracker;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$tableIds:[I

    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$resolvedTableNames:[Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;

    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$tableIds:[I

    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$resolvedTableNames:[Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->label:I

    const/4 v3, 0x0

    iget-object v8, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$tableIds:[I

    const/4 v10, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v11, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v10, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v6, v11, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/compose/runtime/Latch;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "tableIds"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v6, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    array-length v9, v8

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v12, v9, :cond_5

    aget v14, v8, v12

    iget-object v15, v6, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v15, [J

    aget-wide v16, v15, v14

    const-wide/16 v18, 0x1

    add-long v18, v16, v18

    aput-wide v18, v15, v14

    const-wide/16 v14, 0x0

    cmp-long v14, v16, v14

    if-nez v14, :cond_4

    const/4 v13, 0x1

    iput-boolean v13, v6, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_4
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v13, :cond_7

    iget-object v6, v11, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    iput-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->label:I

    invoke-static {v6, v0}, Landroidx/room/util/DBUtil;->getCoroutineContext(Landroidx/room/RoomDatabase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    if-ne v5, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$1;

    invoke-direct {v6, v11, v3}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    move-object v6, v2

    :try_start_2
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v2, v11, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableVersions:Landroidx/room/ObservedTableVersions;

    new-instance v4, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    iget-object v7, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$resolvedTableNames:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;-><init>(Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    iput-object v3, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    iput v10, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->label:I

    invoke-virtual {v2, v4, v0}, Landroidx/room/ObservedTableVersions;->collect(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :goto_5
    iget-object v1, v11, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/compose/runtime/Latch;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "tableIds"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_3
    array-length v3, v8

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_9

    aget v5, v8, v4

    iget-object v6, v1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v6, [J

    aget-wide v9, v6, v5

    const-wide/16 v11, 0x1

    sub-long v13, v9, v11

    aput-wide v13, v6, v5

    cmp-long v5, v9, v11

    if-nez v5, :cond_8

    const/4 v5, 0x1

    iput-boolean v5, v1, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :goto_8
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :goto_9
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
