.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzis;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getMsgInitial(Lcom/motorola/camera/background/service/jms/db/Transaction;)Lcom/motorola/camera/background/common/msg/MsgParameters;
    .locals 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "transaction"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgParameters;

    iget v3, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iCallerId:I

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    iget v4, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsgType:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->map:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/msg/MsgType;

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->UNKNOWN:Lcom/motorola/camera/background/common/msg/MsgType;

    :cond_0
    move-object v6, v1

    new-instance v5, Lcom/motorola/camera/background/common/TaskId;

    iget v8, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    iget-wide v9, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    iget-wide v11, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    iget v13, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    iget v14, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    iget v15, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    iget-boolean v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    iget-object v4, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    move/from16 v16, v1

    move-object/from16 v17, v4

    move-object v7, v5

    invoke-direct/range {v7 .. v17}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    iget-object v7, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsg:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    iget v0, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->iReturnCode:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->access$getMap$cp()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/ReturnCode;

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    :cond_1
    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    return-object v2
.end method
