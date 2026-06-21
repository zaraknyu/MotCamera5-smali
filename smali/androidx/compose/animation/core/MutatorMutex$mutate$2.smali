.class public final Landroidx/compose/animation/core/MutatorMutex$mutate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/sync/Mutex;

.field public L$2:Ljava/lang/Object;

.field public L$3:Landroidx/compose/animation/core/MutatorMutex;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/animation/core/MutatorMutex;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/MutatePriority;->Default:Landroidx/compose/animation/core/MutatePriority;

    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->this$0:Landroidx/compose/animation/core/MutatorMutex;

    check-cast p2, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p2, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->$block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    sget-object v1, Landroidx/compose/animation/core/MutatePriority;->Default:Landroidx/compose/animation/core/MutatePriority;

    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->this$0:Landroidx/compose/animation/core/MutatorMutex;

    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->$block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;-><init>(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/animation/core/MutatorMutex;

    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$1:Lkotlinx/coroutines/sync/Mutex;

    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$3:Landroidx/compose/animation/core/MutatorMutex;

    iget-object v3, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$1:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    move-object v1, v6

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    sget-object v5, Landroidx/compose/animation/core/MutatePriority;->Default:Landroidx/compose/animation/core/MutatePriority;

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    sget-object v5, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p1, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lkotlinx/coroutines/Job;

    invoke-direct {v1, p1}, Landroidx/compose/animation/core/MutatorMutex$Mutator;-><init>(Lkotlinx/coroutines/Job;)V

    iget-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->this$0:Landroidx/compose/animation/core/MutatorMutex;

    iget-object v5, p1, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_3
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    if-eqz v6, :cond_5

    sget-object v7, Landroidx/compose/animation/core/MutatePriority;->Default:Landroidx/compose/animation/core/MutatePriority;

    invoke-virtual {v7, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-ltz v7, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string p1, "Current mutation had a higher priority"

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_6

    iget-object v5, v6, Landroidx/compose/animation/core/MutatorMutex$Mutator;->job:Lkotlinx/coroutines/Job;

    new-instance v6, Landroidx/compose/foundation/MutationInterruptedException;

    const-string v7, "Mutation interrupted"

    invoke-direct {v6, v7, v3}, Landroidx/compose/foundation/MutationInterruptedException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_6
    iget-object v5, p1, Landroidx/compose/animation/core/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$1:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->$block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object v6, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$3:Landroidx/compose/animation/core/MutatorMutex;

    iput v3, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->label:I

    invoke-virtual {v5, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, v6

    :goto_1
    :try_start_1
    iput-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$1:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->L$3:Landroidx/compose/animation/core/MutatorMutex;

    iput v2, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->label:I

    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne p0, v0, :cond_8

    :goto_2
    return-object v0

    :cond_8
    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v5

    :goto_3
    :try_start_2
    iget-object v0, v0, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p0

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v5

    :goto_4
    :try_start_3
    iget-object v0, v0, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
