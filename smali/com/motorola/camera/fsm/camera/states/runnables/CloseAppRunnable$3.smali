.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;
.super Lcom/motorola/camera/device/callables/CaptureRequestAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

.field public final synthetic val$stopRepeatingListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/device/callables/CaptureRequestAdapter;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;->val$stopRepeatingListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;->val$stopRepeatingListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;->onStopRepeating()V

    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v1, p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
