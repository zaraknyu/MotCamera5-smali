.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;
.super Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    iget v2, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "processCtlMsg: unknown type: "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "type"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "taskId"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "msg"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "retCode"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object v3, v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    sget-object v8, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;->INITIALIZED:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    if-eq v3, v8, :cond_0

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v8, 0x3

    if-eq v3, v8, :cond_5

    const/4 v8, 0x4

    if-eq v3, v8, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    const/16 v4, 0xe

    if-eq v3, v4, :cond_5

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v2, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {v2, v0, v6, v5, v7}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->access$handleProcessingMessage(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v2, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {v2, v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->access$handleJobAllCancel(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;I)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object v0, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    iget v2, v5, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v5, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-eqz v2, :cond_4

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v3, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    :cond_4
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_5
    :try_start_5
    iget-object v2, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {v2, v0, v5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->access$handleJobCancel(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/TaskId;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    :goto_0
    return-object v0

    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :pswitch_0
    const-string/jumbo v0, "processCtlMsg: unknown type: "

    monitor-enter p0

    :try_start_7
    const-string/jumbo v2, "type"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "taskId"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "msg"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "retCode"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/16 v3, 0xe

    if-eq v2, v3, :cond_8

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6

    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$isProcessingSuspended$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$processNextJob(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)V

    :cond_7
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    iget-object v2, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    new-instance v3, Lcom/motorola/camera/background/common/JobId;

    iget v4, v5, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget-wide v6, v5, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    move-wide v9, v6

    iget-wide v7, v5, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    move-wide v10, v9

    iget v9, v5, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    move-wide v11, v10

    iget v10, v5, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    move-wide v12, v11

    iget v11, v5, Lcom/motorola/camera/background/common/TaskId;->priority:I

    move-wide v13, v12

    iget-boolean v12, v5, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-object v5, v5, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move-wide v15, v13

    move-object v13, v5

    move-wide v5, v15

    invoke-direct/range {v3 .. v13}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processJobCancel(Lcom/motorola/camera/background/common/JobId;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->access$getMap$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/ReturnCode;

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_9
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "processMsg: unknown type: "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "type"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "taskId"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "retCode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;->INITIALIZED:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    if-eq v1, v2, :cond_0

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 p1, 0xd

    if-eq v1, p1, :cond_1

    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {p1, p4, p3, p5, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->access$handleJobComplete(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {p2, p1, p4, p3, p5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->access$handleProcessJob(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    :goto_0
    return-object p1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :pswitch_0
    const-string/jumbo p1, "processMsg: unknown type: "

    monitor-enter p0

    :try_start_5
    const-string/jumbo v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "retCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_1

    sget-object p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_4

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    iget-wide p2, p3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {p1, p2, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$setPriorityJob$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;J)V

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p5}, Lkotlin/text/StringsKt;->toBooleanStrict(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$setProcessingSuspended$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;Z)V

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getSupportsSuspension$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$isProcessingSuspended$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getProcessingJobsList$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$processNextJob(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)V

    :cond_3
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_4

    :cond_4
    :pswitch_3
    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    invoke-direct {p1, p3, p4, p5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->jobMetrics:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeAddedMs:J

    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getSupportsSuspension$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object p4, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;

    invoke-virtual {p4}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p4

    check-cast p4, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p2, p5, p4}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    new-instance p4, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    iget-object p5, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    iget-object v0, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    iget-object v1, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    iget-boolean p2, p2, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->expedited:Z

    invoke-direct {p4, p5, v0, v1, p2}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;Z)V

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$isProcessingSuspended$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getProcessingJobsList$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    iget-boolean p2, p3, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getJobsQueue$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Lkotlin/collections/ArrayDeque;

    move-result-object p2

    invoke-virtual {p2, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getJobsQueue$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Lkotlin/collections/ArrayDeque;

    move-result-object p2

    invoke-virtual {p2, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :goto_2
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_4

    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p2, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$processJobRequest(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    monitor-exit p0

    return-object p1

    :goto_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
