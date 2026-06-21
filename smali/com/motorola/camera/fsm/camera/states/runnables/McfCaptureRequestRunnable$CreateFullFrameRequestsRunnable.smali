.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public final mCameraId:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsMaster:Z

.field public final mRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

.field public final mRequests:Ljava/util/ArrayList;

.field public final mSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;ILandroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mCameraId:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/device/CameraStateManager;->isMaster(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mIsMaster:Z

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mRequests:Ljava/util/ArrayList;

    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mSize:I

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 4

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mSize:I

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mRequests:Ljava/util/ArrayList;

    if-ge p1, p3, :cond_0

    .line 4
    new-instance p3, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mIsMaster:Z

    const/4 v3, 0x3

    invoke-direct {p3, v3, v1, v2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mCameraId:Ljava/lang/String;

    .line 6
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-static {p1, v0, p0, p2}, Lcom/google/zxing/Result;->createCaptureRequests(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
