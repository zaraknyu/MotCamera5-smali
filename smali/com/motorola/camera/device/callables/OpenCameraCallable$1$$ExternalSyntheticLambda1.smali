.class public final synthetic Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    iget-object v1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraOpen(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/device/CameraStateManager;->setCloseAfterError(Ljava/lang/String;Z)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "camera:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/Result;->remove(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda1;->f$2:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_RESTRICTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_1
    const-string p0, "OPEN_CAMERA_ERROR"

    invoke-static {p0, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
