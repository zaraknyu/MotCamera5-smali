.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic val$cameraListener:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final synthetic val$closeSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic val$mcfStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

.field public final synthetic val$start:J


# direct methods
.method public constructor <init>(JLcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$start:J

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$closeSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    check-cast p5, Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$cameraListener:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object p6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$mcfStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    return-void
.end method


# virtual methods
.method public final onJobsCancelled()V
    .locals 5

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onJobsCancelled dur:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$start:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloseCaptureSessionRunnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$closeSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$cameraListener:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllCameraSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$mcfStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-direct {v1, v2, p0, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
