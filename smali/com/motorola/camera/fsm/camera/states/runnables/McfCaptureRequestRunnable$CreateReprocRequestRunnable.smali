.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;


# instance fields
.field public final mCameraId:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsMaster:Z

.field public final mRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

.field public mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mCameraId:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/device/CameraStateManager;->isMaster(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mIsMaster:Z

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public bridge synthetic run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->run$com$motorola$camera$fsm$camera$states$runnables$CreateCaptureRequestRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->run$com$motorola$camera$fsm$camera$states$runnables$CreateCaptureRequestRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final run$com$motorola$camera$fsm$camera$states$runnables$CreateCaptureRequestRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v4, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mCameraId:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    goto :goto_0

    :cond_0
    move-object v3, p0

    iget-object p0, v3, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance p2, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;

    iget-object p3, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-direct {p2, p3, v3, p0}, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;Landroid/os/Handler;)V

    invoke-virtual {p1, p2}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    :goto_0
    const/4 p0, 0x0

    iput-object p0, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method
