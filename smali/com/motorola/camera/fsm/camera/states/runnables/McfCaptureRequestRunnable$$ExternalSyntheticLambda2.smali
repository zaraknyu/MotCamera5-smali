.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    return-void
.end method


# virtual methods
.method public final onJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 3

    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    const-string v2, "McfCaptureRequestRunnable"

    if-nez v1, :cond_0

    const-string p0, "No job matching "

    invoke-static {p0, v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "No McfInstanceId for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "No request matching "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkJpegReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void
.end method
