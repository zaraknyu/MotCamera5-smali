.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/saving/SaveImageService;

.field public final synthetic f$1:Lcom/motorola/camera/CameraData;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/CameraData;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/CameraData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/CameraData;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v3, v3, Lcom/motorola/camera/saving/SaveImageService;->mPostViewCaptureRecords:Ljava/util/Map;

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "SaveImageService"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/motorola/camera/saving/SaveImageService;->checkFinishBackupImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v2

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v3, v3, Lcom/motorola/camera/saving/SaveImageService;->mPostViewCaptureRecords:Ljava/util/Map;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/CameraData;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/CameraData;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v3, v3, Lcom/motorola/camera/saving/SaveImageService;->mPostViewCaptureRecords:Ljava/util/Map;

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-nez v3, :cond_4

    :try_start_1
    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v3, "SaveImageService"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/motorola/camera/saving/SaveImageService;->checkFinishBackupImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v2

    :cond_5
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v3, v3, Lcom/motorola/camera/saving/SaveImageService;->mPostViewCaptureRecords:Ljava/util/Map;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/CameraData;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
