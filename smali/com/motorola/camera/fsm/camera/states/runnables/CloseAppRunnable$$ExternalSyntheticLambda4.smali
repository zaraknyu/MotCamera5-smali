.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/StopRepeatingListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public final synthetic f$3:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

.field public final synthetic f$4:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

.field public final synthetic f$5:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$2:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$3:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$4:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

    iput-object p6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$5:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onStopRepeating()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$2:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$4:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;)V

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$3:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda4;->f$5:Landroid/os/Handler;

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    return-void
.end method
