.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

.field public L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

.field public L$4:Ljava/util/Collection;

.field public L$5:Ljava/util/Iterator;

.field public L$6:Ljava/util/Collection;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    const/16 v3, 0xa

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$6:Ljava/util/Collection;

    check-cast v2, Ljava/util/Collection;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iget-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iget-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v15, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p1

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_b

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    check-cast v10, Ljava/util/List;

    iget-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iget-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :goto_0
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_a

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v11, p1

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Lkotlinx/coroutines/channels/ActorScope;

    :try_start_4
    move-object v2, v14

    check-cast v2, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelCoroutine;->iterator()Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :goto_1
    :try_start_5
    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$6:Ljava/util/Collection;

    iput v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_6

    goto/16 :goto_8

    :cond_6
    :goto_2
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/background/service/jms/WorkerMsg;

    instance-of v12, v11, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    if-eqz v12, :cond_7

    move-object v12, v11

    check-cast v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v6, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v12, v11, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_12

    goto/16 :goto_8

    :cond_7
    instance-of v12, v11, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    if-eqz v12, :cond_b

    move-object v12, v11

    check-cast v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    iget-object v13, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprocRoutineMap:Ljava/util/LinkedHashMap;

    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    goto :goto_3

    :cond_8
    iget v15, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoProcThreadIndexCount:I

    rem-int/lit8 v16, v15, 0x3

    if-nez v16, :cond_9

    move/from16 v16, v8

    :cond_9
    add-int/lit8 v6, v15, 0x1

    iput v6, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoProcThreadIndexCount:I

    if-lt v15, v7, :cond_a

    sget-object v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    const-string v15, "getCoProcCoroutineIndex: Using more than expected number of coroutines "

    invoke-static {v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v6

    :goto_3
    if-eqz v12, :cond_12

    iget-object v6, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v6, v11, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_12

    goto/16 :goto_8

    :cond_b
    instance-of v6, v11, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    if-eqz v6, :cond_11

    new-instance v6, Lkotlin/ranges/IntRange;

    iget-object v12, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-direct {v6, v8, v12, v8}, Lkotlin/ranges/IntProgression;-><init>(III)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v6

    :goto_4
    iget-boolean v13, v6, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v13, :cond_c

    invoke-virtual {v6}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    invoke-static {}, Lkotlinx/coroutines/JobKt;->CompletableDeferred$default()Lkotlinx/coroutines/CompletableDeferredImpl;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/util/List;)Lkotlin/collections/IndexingIterable;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v13, v10

    move-object v10, v12

    move-object v12, v2

    move-object v2, v6

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/collections/IndexedValue;

    iget v15, v6, Lkotlin/collections/IndexedValue;->index:I

    iget-object v6, v6, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v7, v13, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v15, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    invoke-direct {v15, v6}, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    iput-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iput v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v7, v15, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_d

    goto :goto_8

    :cond_d
    :goto_6
    const/4 v7, 0x3

    goto :goto_5

    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v10, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v10, v6

    move-object v15, v13

    move-object v13, v12

    move-object v12, v11

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/CompletableDeferred;

    iput-object v15, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    iput-object v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    iput-object v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$6:Ljava/util/Collection;

    iput v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    check-cast v6, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {v6, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v6, v1, :cond_f

    :goto_8
    return-object v1

    :cond_f
    move-object v11, v2

    :goto_9
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v11

    goto :goto_7

    :cond_10
    check-cast v2, Ljava/util/List;

    check-cast v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    iget-object v2, v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {v2, v6}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-object v2, v13

    move-object v10, v15

    goto :goto_a

    :cond_11
    sget-object v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unknown action "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_12
    :goto_a
    const/4 v6, 0x2

    const/4 v7, 0x3

    goto/16 :goto_1

    :cond_13
    invoke-interface {v14, v9}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_b
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v14, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v0
.end method
