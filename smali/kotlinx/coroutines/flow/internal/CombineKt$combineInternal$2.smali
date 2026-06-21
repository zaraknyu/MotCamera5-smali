.class public final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $arrayFactory:Landroidx/work/Worker$startWork$1;

.field public final synthetic $flows:[Lkotlinx/coroutines/flow/Flow;

.field public final synthetic $this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $transform:Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;

.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/Channel;

.field public L$2:[B

.field public label:I


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;Landroidx/work/Worker$startWork$1;Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Landroidx/work/Worker$startWork$1;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Landroidx/work/Worker$startWork$1;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>([Lkotlinx/coroutines/flow/Flow;Landroidx/work/Worker$startWork$1;Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    const/4 v7, 0x2

    if-eq v3, v7, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:[B

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Lkotlinx/coroutines/channels/Channel;

    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:[B

    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Lkotlinx/coroutines/channels/Channel;

    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    check-cast v11, Lkotlinx/coroutines/channels/ChannelResult;

    iget-object v11, v11, Lkotlinx/coroutines/channels/ChannelResult;->holder:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    array-length v7, v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v4, v7, v1, v10}, Lkotlin/collections/ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v15

    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v14, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v13, v4

    :goto_1
    if-ge v13, v7, :cond_5

    new-instance v11, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>([Lkotlinx/coroutines/flow/Flow;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v9, v9, v11, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    new-array v8, v7, [B

    move v3, v4

    move-object v9, v15

    :cond_6
    :goto_2
    add-int/2addr v3, v6

    int-to-byte v3, v3

    iput-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Lkotlinx/coroutines/channels/Channel;

    iput-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:[B

    iput v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iput v6, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v9, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receiveCatching-JP2dKIU(Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v2, :cond_7

    goto :goto_5

    :cond_7
    :goto_3
    invoke-static {v11}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/collections/IndexedValue;

    if-nez v11, :cond_8

    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_8
    iget v12, v11, Lkotlin/collections/IndexedValue;->index:I

    aget-object v13, v10, v12

    iget-object v11, v11, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    aput-object v11, v10, v12

    if-ne v13, v1, :cond_9

    add-int/lit8 v7, v7, -0x1

    :cond_9
    aget-byte v11, v8, v12

    if-eq v11, v3, :cond_a

    int-to-byte v11, v3

    aput-byte v11, v8, v12

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/collections/IndexedValue;

    if-nez v11, :cond_8

    :cond_a
    if-nez v7, :cond_6

    iget-object v11, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Landroidx/work/Worker$startWork$1;

    iget-object v11, v11, Landroidx/work/Worker$startWork$1;->this$0:Ljava/lang/Object;

    check-cast v11, [Lkotlinx/coroutines/flow/Flow;

    array-length v11, v11

    new-array v11, v11, [Landroidx/work/impl/constraints/ConstraintsState;

    const/16 v12, 0xe

    invoke-static {v4, v4, v12, v10, v11}, Lkotlin/collections/ArraysKt;->copyInto$default(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-object v10, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Lkotlinx/coroutines/channels/Channel;

    iput-object v8, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:[B

    iput v7, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput v3, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iput v5, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    iget-object v12, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;

    iget-object v13, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-virtual {v12, v13, v11, v0}, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v2, :cond_6

    :goto_5
    return-object v2
.end method
