.class public final Lkotlinx/coroutines/flow/SafeFlow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final block:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/flow/SafeFlow;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    check-cast p1, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    iput-object p1, p0, Lkotlinx/coroutines/flow/SafeFlow;->block:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/flow/SafeFlow;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/SafeFlow;->block:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lkotlinx/coroutines/flow/SafeFlow;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlinx/coroutines/flow/SafeFlow;->block:Ljava/io/Serializable;

    move-object v1, p0

    check-cast v1, [Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Landroidx/work/Worker$startWork$1;

    const/4 p0, 0x5

    invoke-direct {v2, p0, v1}, Landroidx/work/Worker$startWork$1;-><init>(ILjava/lang/Object;)V

    new-instance v3, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;

    const/4 p0, 0x0

    const/4 v0, 0x3

    invoke-direct {v3, v0, p0}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lkotlinx/coroutines/flow/Flow;Landroidx/work/Worker$startWork$1;Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/SupervisorCoroutine;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lkotlinx/coroutines/SupervisorCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;I)V

    const/4 p1, 0x1

    invoke-static {p0, p1, p0, v0}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startUndspatched(Lkotlinx/coroutines/internal/ScopeCoroutine;ZLkotlinx/coroutines/internal/ScopeCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    move-object p2, p0

    :cond_1
    return-object p2

    :pswitch_0
    move-object v4, p1

    instance-of p1, p2, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;

    iget v0, p1, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_2

    sub-int/2addr v0, v1

    iput v0, p1, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;

    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;-><init>(Lkotlinx/coroutines/flow/SafeFlow;Lkotlin/coroutines/Continuation;)V

    :goto_1
    iget-object p2, p1, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p1, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-ne v1, v3, :cond_3

    iget-object p0, p1, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->L$0:Lkotlinx/coroutines/flow/internal/SafeCollector;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Lkotlinx/coroutines/flow/internal/SafeCollector;

    iget-object v1, p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, v4, v1}, Lkotlinx/coroutines/flow/internal/SafeCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    :try_start_1
    iput-object p2, p1, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->L$0:Lkotlinx/coroutines/flow/internal/SafeCollector;

    iput v3, p1, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p0, p0, Lkotlinx/coroutines/flow/SafeFlow;->block:Ljava/io/Serializable;

    check-cast p0, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object p0, v2

    :goto_2
    if-ne p0, v0, :cond_6

    goto :goto_4

    :cond_6
    move-object p0, p2

    :goto_3
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->releaseIntercepted()V

    move-object v0, v2

    :goto_4
    return-object v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    move-object p1, p0

    :goto_5
    move-object p0, p2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :goto_6
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->releaseIntercepted()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
