.class public final Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/device/callables/CameraCallable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/CameraCallable;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureBufferLost(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureBufferLost(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 10

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p1, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    sget-boolean p1, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureTimeStamp:Ljava/util/ArrayList;

    const-string v0, "CaptureBurstRequestCallable"

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureTimeStamp:Ljava/util/ArrayList;

    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->EV_LIST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    iget v1, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestSize:I

    if-eq p1, v1, :cond_0

    const-string p1, "burst_onCaptureCompleted evList != mCaptureRequestSize!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "burst_onCaptureCompleted same capture timestamp!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CAPTURE_HINTFORISPFRAMEINDEX:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->FRAME_INDEX:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v3, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mTouchDownTimeStamp:J

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v3 .. v9}, Lcom/motorola/camera/DumpUtil;->logResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;J)V

    goto :goto_3

    :cond_3
    move-object v6, p2

    move-object p2, p3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lcom/motorola/camera/DumpUtil;->logResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;J)V

    goto :goto_2

    :cond_4
    :goto_3
    iput-wide v1, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mTouchDownTimeStamp:J

    :cond_5
    return-void

    :pswitch_2
    move-object v6, p2

    move-object p2, p3

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0, v6, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;->this$0:Lcom/motorola/camera/device/callables/CameraCallable;

    check-cast p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
