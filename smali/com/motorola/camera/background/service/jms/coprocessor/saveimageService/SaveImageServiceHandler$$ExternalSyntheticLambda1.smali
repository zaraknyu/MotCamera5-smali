.class public final synthetic Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;JI)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;->f$1:J

    invoke-direct {v2, v0, v4, v5, v3}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;JI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/BgJobData;

    iget-object v5, p0, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget v7, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    const-string v8, "action"

    iget v9, p0, Lcom/motorola/camera/background/BgJobData;->action:I

    invoke-virtual {v5, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum try reach for Job:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SaveImageServiceHandler"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->handleJobComplete(Lcom/motorola/camera/background/common/TaskId;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    add-int/2addr v7, v6

    :try_start_0
    iput v7, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    if-eqz p0, :cond_2

    iget-object p0, v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v1, v5}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->processJob(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->retryJob(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->retryJob(J)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
