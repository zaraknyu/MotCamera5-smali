.class public final Lcom/motorola/camera/device/callables/McfSetEventsCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mParameters:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->$r8$classId:I

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mcf/McfParameters;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->$r8$classId:I

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->$r8$classId:I

    invoke-direct {p0, p1, p3, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Lcom/tinder/StateMachine;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/callables/StopRepeatingListener;

    if-eqz p0, :cond_0

    iput-object p0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaRecorder;

    new-instance v1, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    invoke-direct {v1, p0}, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    :try_start_1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_BLUETOOTH_RECORDING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V

    :cond_3
    :goto_1
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->MR_START:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz p0, :cond_4

    :try_start_2
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    if-eqz p0, :cond_5

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    new-instance p0, Lcom/tinder/StateMachine;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/fsm/Fsm;Z)V

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_2
    return-object p0

    :pswitch_1
    :try_start_3
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/tinder/StateMachine;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    const/16 v0, 0x18

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_3
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p0

    new-instance v1, Lcom/tinder/StateMachine;

    invoke-direct {v1, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    :goto_3
    return-object v1

    :pswitch_2
    :try_start_4
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_8

    instance-of v1, v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/tinder/StateMachine;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/tinder/StateMachine;

    new-instance p0, Ljava/lang/Exception;

    const-string v1, "Not a CameraConstrainedHighSpeedCaptureSession"

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_8
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    :goto_4
    return-object v0

    :pswitch_3
    :try_start_5
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mTemplate:I

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    goto :goto_5

    :cond_9
    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_6

    :cond_a
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_6
    return-object p0

    :pswitch_4
    :try_start_6
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/callables/AbortCapturesListener;

    if-eqz p0, :cond_b

    iput-object p0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mAbortCapturesListener:Lcom/motorola/camera/device/callables/AbortCapturesListener;

    :cond_b
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z
    :try_end_6
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_ABORT_CAPTURES:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz p0, :cond_c

    :try_start_7
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_c
    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    if-eqz p0, :cond_d

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_d
    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_7

    :cond_e
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_7
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_7
    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_8

    :cond_f
    iget-object p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    :goto_8
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "StopRepeatingRequestCallable"

    return-object p0

    :pswitch_0
    const-string p0, "RecorderStartCallable"

    return-object p0

    :pswitch_1
    const-string p0, "CreateReprocCaptureRequestCallable"

    return-object p0

    :pswitch_2
    const-string p0, "CreateHighSpeeedCaptureRequestsCallable"

    return-object p0

    :pswitch_3
    const-string p0, "CreateCaptureRequestsCallable"

    return-object p0

    :pswitch_4
    const-string p0, "AbortCapturesRequestCallable"

    return-object p0

    :pswitch_5
    const-string p0, "McfSetEventsCallable"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
