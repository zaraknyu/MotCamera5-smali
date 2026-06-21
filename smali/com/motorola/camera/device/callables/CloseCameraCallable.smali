.class public final Lcom/motorola/camera/device/callables/CloseCameraCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mResetMediaRecorder:Z

.field public final mResetPlayer:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-boolean p4, p0, Lcom/motorola/camera/device/callables/CloseCameraCallable;->mResetPlayer:Z

    iput-boolean p5, p0, Lcom/motorola/camera/device/callables/CloseCameraCallable;->mResetMediaRecorder:Z

    return-void
.end method

.method public static resetRecorder(Lcom/motorola/camera/fsm/Fsm;Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioHDRSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->setDefaultHDRParameters()V

    :cond_0
    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->MR_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    iput-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    if-eqz p1, :cond_2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final call()Lcom/tinder/StateMachine;
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    const-string v1, "closeCamera id:"

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/camera/device/callables/CloseCameraCallable;->mResetMediaRecorder:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v2, v4}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/fsm/Fsm;Z)V

    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/device/callables/CloseCameraCallable;->mResetPlayer:Z

    if-eqz p0, :cond_1

    invoke-static {v2, v4}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->resetPlayer(Lcom/motorola/camera/fsm/Fsm;Z)V

    :cond_1
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object p0

    iget-object v2, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->HAL_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v2, :cond_2

    :try_start_1
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    sget-boolean v5, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "CloseCameraCallable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-boolean v4, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mManualClosed:Z

    if-eqz v2, :cond_4

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

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

    const-string p0, "CloseCameraCallable"

    return-object p0
.end method
