.class public final Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

.field public final mResetMediaRecorder:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    iput-boolean p5, p0, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;->mResetMediaRecorder:Z

    return-void
.end method


# virtual methods
.method public final call()Lcom/tinder/StateMachine;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    const-string v1, "closing capture session id:"

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;->mResetMediaRecorder:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/fsm/Fsm;Z)V

    :cond_0
    iget-object v3, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    if-eqz p0, :cond_1

    iput-object p0, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    :cond_1
    sget-boolean p0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "CloseCaptureSessionCallable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    const-string v0, "closing capture session"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_3
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CLOSE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    iget-object p0, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 p0, 0x0

    iput-object p0, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/tinder/StateMachine;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    return-object v0

    :cond_5
    :try_start_1
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    const-string v0, "Camera session is not opened"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CloseCaptureSessionCallable"

    return-object p0
.end method
