.class public final Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $block:Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

.field public final synthetic $parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$block:Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$block:Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    iget-object v2, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$1:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/Job;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v4, p1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p1, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    if-nez v5, :cond_c

    iget-object v5, p1, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/Recomposer$State;

    sget-object v6, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_b

    iget-object v5, p1, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    if-nez v5, :cond_a

    iput-object v1, p1, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    invoke-virtual {p1}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    monitor-exit v4

    new-instance p1, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    iget-object v4, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/16 v5, 0x9

    invoke-direct {p1, v5, v4}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Landroidx/core/view/MenuHostHelper;

    sget-object v4, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;->INSTANCE$1:Landroidx/compose/runtime/snapshots/GlobalSnapshot$1;

    invoke-static {v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    sget-object v5, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/lang/Object;

    invoke-static {v5, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    sput-object v5, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    monitor-exit v4

    new-instance v4, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object p1, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object p1, p1, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/NeverEqualPolicy;

    :cond_2
    sget-object v6, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    move-object v8, v7

    check-cast v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    sget-object v9, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;->INSTANCE:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;

    iget-object v10, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    invoke-direct {v8, v9, v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, p1, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object v8

    new-instance v9, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    invoke-direct {v9, p1, p1, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    move-object v8, v9

    goto :goto_0

    :cond_4
    iget-object v11, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->lastElement:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    new-instance v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    iget-object v12, v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->previous:Ljava/lang/Object;

    invoke-direct {v13, v12, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v11, v13}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object v10

    new-instance v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    invoke-direct {v12, v11, v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, p1, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    move-result-object v9

    new-instance v10, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    iget-object v8, v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->firstElement:Ljava/lang/Object;

    invoke-direct {v10, v8, p1, v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    move-object v8, v10

    :goto_0
    if-eq v7, v8, :cond_5

    invoke-virtual {v6, v7, v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_5
    :try_start_3
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v6, p1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p1}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit v6

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v7}, Landroidx/compose/runtime/CompositionImpl;->invalidateAll()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v4

    goto :goto_5

    :cond_6
    new-instance p1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$3;

    iget-object v5, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$block:Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    iget-object v6, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    invoke-direct {p1, v5, v6, v2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$3;-><init>(Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$1:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    iput v3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, v4

    :goto_2
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->dispose()V

    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v0, p1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v3, p1, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    if-ne v3, v1, :cond_8

    iput-object v2, p1, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v0

    sget-object p1, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-static {p0}, Landroidx/compose/runtime/NeverEqualPolicy;->access$removeRunning(Landroidx/compose/runtime/NeverEqualPolicy;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_4
    monitor-exit v0

    throw p0

    :catchall_3
    move-exception p1

    :try_start_7
    monitor-exit v6

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;->dispose()V

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget-object v4, v0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    if-ne v4, v1, :cond_9

    iput-object v2, v0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    goto :goto_6

    :catchall_4
    move-exception p0

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit v3

    sget-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-static {p0}, Landroidx/compose/runtime/NeverEqualPolicy;->access$removeRunning(Landroidx/compose/runtime/NeverEqualPolicy;)V

    throw p1

    :goto_7
    monitor-exit v3

    throw p0

    :catchall_5
    move-exception p0

    monitor-exit v4

    throw p0

    :catchall_6
    move-exception p0

    goto :goto_8

    :cond_a
    :try_start_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recomposer already running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recomposer shut down"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :goto_8
    monitor-exit v4

    throw p0
.end method
