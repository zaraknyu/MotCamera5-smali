.class public final Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

.field public final synthetic val$cameraId:Ljava/lang/String;

.field public final synthetic val$captureRequestAdapter:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;

.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$cameraId:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$captureRequestAdapter:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 10

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    iget-object v1, v9, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$cameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$captureRequestAdapter:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;

    const-wide/16 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Landroid/os/Handler;J)V

    invoke-virtual {v9, v0}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$cameraId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocusTimeout(Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mHighSpeedRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mHighSpeedRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;

    return-void
.end method
