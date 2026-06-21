.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    return-void
.end method


# virtual methods
.method public final onSwJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->mcfJobSeqCanStop(IZ)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v2, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v2, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSwJpegRequestSeq:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSwJpegRequestSeq:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSwJpegRequestSeq:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v4, 0xffff

    and-int/2addr v0, v4

    if-ne v3, v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_0
    monitor-exit p0

    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    :cond_3
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
