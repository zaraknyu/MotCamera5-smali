.class public final Lkotlinx/coroutines/selects/SelectImplementation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CancelHandler;
.implements Lkotlinx/coroutines/selects/SelectInstance;
.implements Lkotlinx/coroutines/Waiter;


# static fields
.field public static final synthetic state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public clauses:Ljava/util/ArrayList;

.field public final context:Lkotlin/coroutines/CoroutineContext;

.field public disposableHandleOrSegment:Lkotlinx/coroutines/internal/Segment;

.field public indexInSegment:I

.field public internalResult:Ljava/lang/Object;

.field private volatile synthetic state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string/jumbo v1, "state$volatile"

    const-class v2, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->STATE_REG:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->NO_RESULT:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final complete(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    iget-object v3, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eq v5, v1, :cond_1

    invoke-virtual {v5}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->dispose()V

    goto :goto_0

    :cond_2
    sget-object v3, Lkotlinx/coroutines/selects/SelectKt;->STATE_COMPLETED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v0, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/selects/SelectKt;->NO_RESULT:Lkotlinx/coroutines/internal/Symbol;

    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    iput-object v4, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/ArrayList;

    :goto_1
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;

    iget-object v0, v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p0, v0, v4, v2}, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->block:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final doSelectSuspend(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    iget v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Lkotlinx/coroutines/selects/SelectImplementation;

    iput v5, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p1, v5, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    :cond_4
    sget-object v2, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v8, Lkotlinx/coroutines/selects/SelectKt;->STATE_REG:Lkotlinx/coroutines/internal/Symbol;

    if-ne v6, v8, :cond_5

    invoke-virtual {v2, p0, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellationImpl(Lkotlinx/coroutines/NotCompleted;)V

    goto :goto_3

    :cond_5
    instance-of v9, v6, Ljava/util/List;

    if-eqz v9, :cond_6

    invoke-virtual {v2, p0, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lkotlinx/coroutines/selects/SelectImplementation;->findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v3, v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Lkotlinx/coroutines/internal/Segment;

    const/4 v7, -0x1

    iput v7, v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    invoke-virtual {p0, v6, v5}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    goto :goto_1

    :cond_6
    instance-of v2, v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v2, :cond_b

    check-cast v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    iget-object v5, v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->onCancellationConstructor:Lkotlin/jvm/functions/Function3;

    if-eqz v5, :cond_7

    invoke-interface {v5, p0, v3, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    goto :goto_2

    :cond_7
    move-object v2, v3

    :goto_2
    invoke-virtual {p1, v7, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    :goto_3
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p1, v2, :cond_8

    move-object v7, p1

    :cond_8
    if-ne v7, v1, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    iput-object v3, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Lkotlinx/coroutines/selects/SelectImplementation;

    iput v4, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_5
    return-object v1

    :cond_a
    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unexpected state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .locals 3

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    iget-object v2, v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Lkotlinx/coroutines/channels/BufferedChannel;

    if-ne v2, p1, :cond_1

    move-object v0, v1

    :cond_2
    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clause with object "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 8
    :cond_0
    sget-object p1, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->STATE_COMPLETED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->STATE_CANCELLED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->dispose()V

    goto :goto_1

    .line 14
    :cond_3
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->NO_RESULT:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/ArrayList;

    return-void
.end method

.method public final invoke(Lkotlinx/coroutines/selects/SelectClause1Impl;Lkotlin/jvm/functions/Function2;)V
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 2
    iget-object v1, p1, Lkotlinx/coroutines/selects/SelectClause1Impl;->clauseObject:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 3
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;

    .line 4
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;

    .line 5
    iget-object p1, p1, Lkotlinx/coroutines/selects/SelectClause1Impl;->onCancellationConstructor:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    .line 6
    check-cast p2, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    invoke-direct {v0, p0, v1, p2, p1}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/jvm/internal/SuspendLambda;Lkotlin/jvm/functions/Function3;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    return-void
.end method

.method public final invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Lkotlinx/coroutines/internal/Segment;

    iput p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    return-void
.end method

.method public final register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V
    .locals 4

    iget-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v1, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_3

    iget-object v2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    iget-object v3, v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eq v3, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot use select clauses on the same object: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p0, v3}, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->NO_RESULT:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v2, :cond_5

    if-nez p2, :cond_4

    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/ArrayList;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Lkotlinx/coroutines/internal/Segment;

    iput-object p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Lkotlinx/coroutines/internal/Segment;

    iget p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    iput p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    iput-object v3, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Lkotlinx/coroutines/internal/Segment;

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    return-void

    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/CancellableContinuation;

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->onCancellationConstructor:Lkotlin/jvm/functions/Function3;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v4, p0, v5, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function3;

    :cond_2
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v1, p1, v5}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->NO_RESULT:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return v3

    :cond_3
    invoke-interface {v1, p1}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->STATE_COMPLETED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    instance-of v2, v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->STATE_CANCELLED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v3

    :cond_6
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->STATE_REG:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_7
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_2
    const/4 p0, 0x3

    return p0
.end method
