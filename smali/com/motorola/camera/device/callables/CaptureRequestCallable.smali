.class public final Lcom/motorola/camera/device/callables/CaptureRequestCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mCameraServiceHandler:Landroid/os/Handler;

.field public final mCaptureListener:Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

.field public final mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field public final mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

.field public final mStopRepeating:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct {p0, p1, p3, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    new-instance p1, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;-><init>(Lcom/motorola/camera/device/callables/CameraCallable;I)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureListener:Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    iput-object p4, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object p5, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCameraServiceHandler:Landroid/os/Handler;

    iput-boolean p7, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mStopRepeating:Z

    return-void
.end method


# virtual methods
.method public final call()Lcom/tinder/StateMachine;
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    const-string v2, "Null surface detected, id="

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/Fsm;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v3

    iget-object v4, v3, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, v3, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/Util;->getSurfaceList(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Surface"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p0, Lcom/tinder/StateMachine;

    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mStopRepeating:Z

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureListener:Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCameraServiceHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    new-instance p0, Lcom/tinder/StateMachine;

    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    return-object p0

    :cond_3
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

    const-string p0, "CaptureRequestCallable"

    return-object p0
.end method
