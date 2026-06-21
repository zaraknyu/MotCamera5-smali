.class public final synthetic Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->onSessionClosed(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->isReprocessable()Z

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object p0

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v2, v2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/device/CameraStateManager;

    sget-object v3, Lcom/motorola/camera/device/CameraStateManager$Status;->OPEN:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v2, v0, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "CLOSE_AFTER_OPEN"

    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "CreateCaptureSessionRunnable"

    if-eqz v2, :cond_0

    const-string/jumbo p0, "session is invalid."

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    iget v6, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mSessionMode:I

    const/4 v7, 0x1

    if-eq v2, v6, :cond_1

    const-string p0, "mode is invalid."

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v5, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_MODE_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isCameraActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    :cond_2
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    :cond_3
    :try_start_0
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->setupReprocSurfaceWriter(Landroid/view/Surface;Lcom/motorola/camera/settings/CameraType;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error setting up reproc surface writer"

    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->-$$Nest$mcheckComplete(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    sget-object v1, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->-$$Nest$mcheckComplete(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
