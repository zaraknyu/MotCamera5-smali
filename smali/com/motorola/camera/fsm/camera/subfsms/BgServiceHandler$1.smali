.class public final Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;
.super Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.source "SourceFile"


# virtual methods
.method public final processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 0

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    if-ne p4, p0, :cond_1

    iget-wide p0, p3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    sget-object p3, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unhandled msg type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BgServiceHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0
.end method

.method public final processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 0

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0
.end method
