.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    return-void
.end method


# virtual methods
.method public final onStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on camera status cid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CloseAppRunnable"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object p2, p2, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/device/CameraStateManager;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCancelled:Z

    if-nez v0, :cond_2

    invoke-virtual {p2, p1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    if-eq v1, v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraOpen(Ljava/lang/String;)Lcom/motorola/camera/device/CameraStateManager$Status;

    move-result-object p1

    if-ne v1, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v0, 0xb

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCancelled:Z

    :cond_2
    return-void
.end method
