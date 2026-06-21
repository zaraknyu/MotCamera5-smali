.class public final Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mCaptureListener:Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

.field public final mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

.field public mCaptureRequestSize:I

.field public final mCaptureRequests:Ljava/util/List;

.field public mCaptureTimeStamp:Ljava/util/ArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public mTouchDownTimeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Landroid/os/Handler;J)V
    .locals 0

    invoke-direct {p0, p1, p3, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    new-instance p1, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;-><init>(Lcom/motorola/camera/device/callables/CameraCallable;I)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureListener:Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    iput-object p4, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequests:Ljava/util/List;

    iput-object p5, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mHandler:Landroid/os/Handler;

    iput-wide p7, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mTouchDownTimeStamp:J

    return-void
.end method


# virtual methods
.method public final call()Lcom/tinder/StateMachine;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequests:Ljava/util/List;

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureTimeStamp:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestSize:I

    iget-object v3, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureListener:Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptureBurstRequestCallable"

    return-object p0
.end method
