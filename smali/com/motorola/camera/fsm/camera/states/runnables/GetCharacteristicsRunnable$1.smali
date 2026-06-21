.class public final Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    move-object v4, p0

    check-cast v4, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    iget-boolean p0, v4, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->airGestureSupport:Z

    invoke-direct {v5, v4, p0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V

    iget-object p0, v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v7, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v1, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Landroid/os/Handler;

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/CameraStateManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus(ILjava/lang/String;)Z

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/motorola/camera/settings/SettingsManager;->processCharacteristics(Ljava/util/Map;Landroid/graphics/Point;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->processCharacteristicsStage2()V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->GET_CHARACTERISTICS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NO_CAMERAS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    :goto_0
    const-string v2, "NO_CAMERAS_ERROR"

    invoke-static {v2, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v2, v0, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
