.class public final Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $initialValue:Ljava/lang/Float;

.field public final synthetic $shared:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final synthetic $started:Lkotlinx/coroutines/flow/StartedWhileSubscribed;

.field public final synthetic $upstream:Lkotlinx/coroutines/flow/Flow;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/StartedWhileSubscribed;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Float;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$started:Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$upstream:Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object p4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$initialValue:Ljava/lang/Float;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$initialValue:Ljava/lang/Float;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$started:Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$upstream:Lkotlinx/coroutines/flow/Flow;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;-><init>(Lkotlinx/coroutines/flow/StartedWhileSubscribed;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Float;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$upstream:Lkotlinx/coroutines/flow/Flow;

    const/4 v8, 0x2

    iget-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v8, :cond_1

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedLazily;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$started:Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    if-ne v10, v2, :cond_4

    iput v6, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    invoke-interface {v7, v9, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    goto/16 :goto_4

    :cond_4
    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    const/4 v6, 0x0

    if-ne v10, v2, :cond_6

    invoke-virtual {v9}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getSubscriptionCount()Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    move-result-object v2

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1$1;

    invoke-direct {v4, v8, v6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput v8, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    iput v5, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    invoke-interface {v7, v9, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    goto :goto_4

    :cond_6
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getSubscriptionCount()Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    move-result-object v12

    new-instance v11, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;

    invoke-direct {v11, v10, v6}, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;-><init>(Lkotlinx/coroutines/flow/StartedWhileSubscribed;Lkotlin/coroutines/Continuation;)V

    sget v2, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->$r8$clinit:I

    new-instance v10, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    sget-object v15, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v16, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    const/4 v14, -0x2

    move-object/from16 v13, v16

    invoke-direct/range {v10 .. v15}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;-><init>(Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    new-instance v2, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$2;

    invoke-direct {v2, v8, v6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

    const/4 v8, 0x0

    invoke-direct {v5, v10, v2, v8}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)V

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1$2;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$initialValue:Ljava/lang/Float;

    invoke-direct {v5, v7, v9, v10, v6}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Float;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;

    invoke-direct {v14, v5, v6}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    const/16 v17, -0x2

    move-object/from16 v18, v15

    move-object v15, v2

    invoke-direct/range {v13 .. v18}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;-><init>(Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    invoke-static {v13, v8}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    sget-object v4, Lkotlinx/coroutines/flow/internal/NopCollector;->INSTANCE:Lkotlinx/coroutines/flow/internal/NopCollector;

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, v3

    :goto_2
    if-ne v0, v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v0, v3

    :goto_3
    if-ne v0, v1, :cond_9

    :goto_4
    return-object v1

    :cond_9
    :goto_5
    return-object v3
.end method
