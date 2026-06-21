.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x1

    const-string v4, "SetRepeatingRequestRunnable"

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Too many failed captures, trigger retry ERROR"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "error_retry"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v3, v2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sOneShotErrorCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "One-shot did not succeed in "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->mSendErrorDelayTime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms, trigger ERROR"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->getOpenCameraIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v0, v5, v6}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCloseAfterError(Ljava/lang/String;Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "camera:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/Result;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-direct {v4, v2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;->processCaptureFailed()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
