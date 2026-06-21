.class public final Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mCameraServiceHandler:Landroid/os/Handler;

.field public final mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public final mCaptureRequests:Ljava/lang/Object;

.field public final mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1, p3, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    const/4 p3, 0x3

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;-><init>(Lcom/motorola/camera/device/callables/CameraCallable;I)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCaptureRequests:Ljava/lang/Object;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCameraServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->$r8$classId:I

    .line 6
    invoke-direct {p0, p1, p3, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 7
    new-instance p1, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;-><init>(Lcom/motorola/camera/device/callables/CameraCallable;I)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 8
    iput-object p4, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    .line 9
    iput-object p2, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCaptureRequests:Ljava/lang/Object;

    .line 10
    iput-object p5, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCameraServiceHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final call()Lcom/tinder/StateMachine;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    const-string v1, "SetRepeating"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraKpi;->isRecordRepeating()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING_TO_FIRST_FRAME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCaptureRequests:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    check-cast v2, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCameraServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_1
    return-object p0

    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_5

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraKpi;->isRecordRepeating()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING_TO_FIRST_FRAME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCaptureRequests:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCaptureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    check-cast v2, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mCameraServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "SetRepeatingRequestCallable"

    return-object p0

    :pswitch_0
    const-string p0, "SetRepeatingBurstCallable"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
