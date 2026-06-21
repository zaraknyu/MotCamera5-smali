.class public final Lcom/motorola/camera/device/callables/RecorderStopCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/device/callables/RecorderStopCallable;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final call()Lcom/tinder/StateMachine;
    .locals 12

    iget p0, p0, Lcom/motorola/camera/device/callables/RecorderStopCallable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/fsm/Fsm;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lcom/tinder/StateMachine;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_0
    const-string p0, "GetCharacteristicsCallable"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    iput-object v2, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v6, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v9, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v9, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    iput-object v9, v6, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v1, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashMap;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v9, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CameraCharacteristics for camera: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " CameraCharacteristics: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", dur:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move-exception v6

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception getting characteristics for camera with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_3

    :catch_2
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_3
    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaRecorder;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->MR_STOP:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->stop()V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    :try_start_5
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/fsm/Fsm;Z)V

    new-instance v1, Lcom/tinder/StateMachine;

    invoke-direct {v1, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/motorola/camera/Util;->stopBluetoothSco()V

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/fsm/Fsm;Z)V

    goto :goto_6

    :goto_4
    invoke-static {}, Lcom/motorola/camera/Util;->stopBluetoothSco()V

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/fsm/Fsm;Z)V

    throw p0

    :cond_2
    const-wide/16 v1, -0x1

    :goto_5
    invoke-static {}, Lcom/motorola/camera/Util;->stopBluetoothSco()V

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/fsm/Fsm;Z)V

    new-instance p0, Lcom/tinder/StateMachine;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    move-object v1, p0

    :goto_6
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/device/callables/RecorderStopCallable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "RecorderReleaseCallable"

    return-object p0

    :pswitch_0
    const-string p0, "GetCharacteristicsCallable"

    return-object p0

    :pswitch_1
    const-string p0, "RecorderStopCallable"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
