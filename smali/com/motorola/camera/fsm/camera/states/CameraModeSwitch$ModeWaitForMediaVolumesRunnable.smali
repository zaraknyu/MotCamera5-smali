.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;


# instance fields
.field public mTriggerSent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkMediaVolumesAvailable()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    const-string v1, "mediaVolumes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;->mTriggerSent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;->mTriggerSent:Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;-><init>(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onMediaVolumesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;->checkMediaVolumesAvailable()V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;I)V

    .line 4
    sget-object p2, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    new-instance p1, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;-><init>(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;I)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;I)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
