.class public final Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;
.source "SourceFile"


# instance fields
.field public final mImageReceivedListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;-><init>()V

    new-instance v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;->mImageReceivedListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final captureBufferLost()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReceivedListener(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final captureFailed()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReceivedListener(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 7
    const-string v1, "SNAPSHOT_COUNT"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;->onComplete()V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;->mImageReceivedListener:Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReceivedListener(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final sendComplete()V
    .locals 0

    return-void
.end method
