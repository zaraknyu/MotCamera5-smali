.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

.field public L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    iget-object v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    move-object/from16 v10, p1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    goto/16 :goto_4

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v9, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lkotlinx/coroutines/channels/ActorScope;

    :try_start_3
    move-object v2, v7

    check-cast v2, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelCoroutine;->iterator()Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :cond_4
    :goto_0
    :try_start_4
    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v3, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    iput v6, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    :goto_1
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v9, :cond_e

    :try_start_5
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    instance-of v11, v9, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    if-eqz v11, :cond_8

    move-object v10, v9

    check-cast v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    iget v10, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;->callerId:I

    move-object v11, v9

    check-cast v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    iget-object v11, v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    move-object v12, v9

    check-cast v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    iput-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    iput v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v8, v10, v11}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->processControlMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Boolean;

    move-result-object v10

    if-ne v10, v1, :cond_6

    goto/16 :goto_3

    :cond_6
    move-object/from16 v16, v8

    move-object v8, v2

    move-object v2, v9

    move-object/from16 v9, v16

    :goto_2
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_7

    sget-object v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "executorActor: Invalid msg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v2, v8

    move-object v8, v9

    goto :goto_0

    :cond_8
    instance-of v11, v9, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsgAck;

    if-eqz v11, :cond_9

    goto :goto_0

    :cond_9
    instance-of v11, v9, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    if-eqz v11, :cond_a

    move-object v10, v9

    check-cast v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    iget v10, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;->callerId:I

    move-object v11, v9

    check-cast v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    iget-object v11, v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-virtual {v8, v10, v11}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->processRequestMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "executorActor: Request msg invalid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    instance-of v11, v9, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;

    if-eqz v11, :cond_b

    goto/16 :goto_0

    :cond_b
    instance-of v11, v9, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;

    if-eqz v11, :cond_d

    move-object v11, v9

    check-cast v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;

    iget-object v11, v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget-object v12, v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v13, v12, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v15, v8, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v15, :cond_c

    invoke-virtual {v15, v13, v14}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v15

    if-ne v15, v6, :cond_c

    check-cast v9, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;

    iget v9, v9, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;->callerId:I

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v8, v9, v11, v13, v14}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->processResultMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;J)V

    if-ne v10, v1, :cond_4

    :goto_3
    return-object v1

    :cond_c
    sget-object v9, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "executorActor: Results message unknown result task id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)V

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    invoke-interface {v7, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-object v10

    :goto_4
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v7, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v0
.end method
