.class public final Lcom/motorola/camera/device/callables/OpenCameraCallable$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/OpenCameraCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearCameraInfo(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "OpenCameraCallable"

    iget-object p0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p2, :cond_0

    iget-boolean p2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mManualClosed:Z

    if-nez p2, :cond_0

    const-string p2, "The camera was automatically turned off."

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraDevice;->close()V

    new-instance p2, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {p2, p1, v3}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p2}, Lcom/motorola/camera/device/callables/OpenCameraCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/OpenCameraCallable;Ljava/util/function/Consumer;)V

    :cond_0
    iput-object v2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    iput-object v2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Failed to clear camera info"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-boolean v1, v0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    const-string v2, "OpenCameraCallable"

    if-eqz v1, :cond_0

    const-string p0, "onClosed, ignoring callback due to CameraAccessException"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onClosed cid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->clearCameraInfo(Ljava/lang/String;Z)V

    new-instance p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lcom/motorola/camera/device/callables/OpenCameraCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/OpenCameraCallable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-boolean v1, v0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    const-string v2, "OpenCameraCallable"

    if-eqz v1, :cond_0

    const-string p0, "onDisconnected, ignoring callback due to CameraAccessException"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onDisconnect cid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->clearCameraInfo(Ljava/lang/String;Z)V

    new-instance p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lcom/motorola/camera/device/callables/OpenCameraCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/OpenCameraCallable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-boolean v1, v0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    const-string v2, "OpenCameraCallable"

    if-eqz v1, :cond_0

    const-string p0, "onError, ignoring callback due to CameraAccessException"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string v4, "onError, ignoring callback due to has been restricted"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    sget-boolean v4, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onError cid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->clearCameraInfo(Ljava/lang/String;Z)V

    new-instance p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1, p2, v1}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;IZ)V

    invoke-static {v0, p0}, Lcom/motorola/camera/device/callables/OpenCameraCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/OpenCameraCallable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-boolean v0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    const-string v1, "OpenCameraCallable"

    if-eqz v0, :cond_0

    const-string p0, "onOpened, ignoring callback due to CameraAccessException"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onOpened cid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v2

    iput-object p1, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 p1, 0x0

    iput-boolean p1, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mManualClosed:Z

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "CameraInfo is null"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance p1, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda3;

    invoke-direct {p1, v1, v2, v0}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda3;-><init>(JLjava/lang/String;)V

    invoke-static {p0, p1}, Lcom/motorola/camera/device/callables/OpenCameraCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/OpenCameraCallable;Ljava/util/function/Consumer;)V

    return-void
.end method
