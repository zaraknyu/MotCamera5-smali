.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;->f$1:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;->f$1:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FRAME_COLLECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;->f$1:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
