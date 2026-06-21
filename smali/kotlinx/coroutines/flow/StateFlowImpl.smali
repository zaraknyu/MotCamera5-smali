.class public final Lkotlinx/coroutines/flow/StateFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableStateFlow;
.implements Lkotlinx/coroutines/flow/Flow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# static fields
.field public static final synthetic _state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public sequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state$volatile"

    const-class v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    iget v1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Lkotlinx/coroutines/Job;

    iget-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Lkotlinx/coroutines/flow/StateFlowImpl;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Lkotlinx/coroutines/Job;

    iget-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Lkotlinx/coroutines/flow/StateFlowImpl;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_3
    iget-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Lkotlinx/coroutines/flow/StateFlowSlot;

    iget-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p0, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Lkotlinx/coroutines/flow/StateFlowImpl;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v8, p0

    move-object p0, p1

    goto/16 :goto_7

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/StateFlowSlot;

    move-object v2, p2

    :goto_1
    :try_start_3
    iget-object p2, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v7, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p2, v7}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/Job;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, p0

    move-object v7, p1

    move-object p1, p2

    move-object p0, v3

    :cond_5
    :goto_2
    :try_start_4
    sget-object p2, Lkotlinx/coroutines/flow/StateFlowImpl;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_3
    if-eqz p0, :cond_8

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_8
    sget-object p0, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-ne p2, p0, :cond_9

    move-object p0, v3

    goto :goto_4

    :cond_9
    move-object p0, p2

    :goto_4
    iput-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Lkotlinx/coroutines/flow/StateFlowSlot;

    iput-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Lkotlinx/coroutines/Job;

    iput-object p2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    invoke-interface {v7, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    goto :goto_6

    :cond_a
    move-object p0, p2

    :cond_b
    :goto_5
    iget-object p2, v2, Lkotlinx/coroutines/flow/StateFlowSlot;->_state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v9, Lkotlinx/coroutines/flow/FlowKt;->NONE:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v10, Lkotlinx/coroutines/flow/FlowKt;->PENDING:Lkotlinx/coroutines/internal/Symbol;

    if-ne p2, v10, :cond_c

    goto :goto_2

    :cond_c
    iput-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Lkotlinx/coroutines/flow/StateFlowSlot;

    iput-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Lkotlinx/coroutines/Job;

    iput-object p0, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v10, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v11

    invoke-direct {v10, v6, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v11, v2, Lkotlinx/coroutines/flow/StateFlowSlot;->_state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v10, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v9, v10, :cond_e

    move-object p2, v9

    :cond_e
    if-ne p2, v1, :cond_5

    :goto_6
    return-object v1

    :goto_7
    invoke-virtual {v8, v2}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    throw p0
.end method

.method public final compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 0

    new-instance p0, Lkotlinx/coroutines/flow/StateFlowSlot;

    invoke-direct {p0}, Lkotlinx/coroutines/flow/StateFlowSlot;-><init>()V

    return-object p0
.end method

.method public final createSlotArray()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [Lkotlinx/coroutines/flow/StateFlowSlot;

    return-object p0
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final fuse(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->fuseSharedFlow(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    sget-object v1, Lkotlinx/coroutines/flow/StateFlowImpl;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_9

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    iget-object p2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [Lkotlinx/coroutines/flow/StateFlowSlot;

    if-eqz p2, :cond_7

    array-length v0, p2

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_7

    aget-object v4, p2, v3

    if-eqz v4, :cond_6

    iget-object v4, v4, Lkotlinx/coroutines/flow/StateFlowSlot;->_state:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    sget-object v6, Lkotlinx/coroutines/flow/FlowKt;->PENDING:Lkotlinx/coroutines/internal/Symbol;

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    sget-object v7, Lkotlinx/coroutines/flow/FlowKt;->NONE:Lkotlinx/coroutines/internal/Symbol;

    if-ne v5, v7, :cond_5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    check-cast v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v5, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    monitor-enter p0

    :try_start_3
    iget p2, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    if-ne p2, p1, :cond_8

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_8
    :try_start_4
    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v8, p2

    move-object p2, p1

    move p1, v8

    goto :goto_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_9
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_4
    monitor-exit p0

    throw p1
.end method
