.class public final Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mSetRepeatingRequestListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable$PanoSetRepeatingRequestListener;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable$PanoSetRepeatingRequestListener;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->mSetRepeatingRequestListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->$r8$classId:I

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->mSetRepeatingRequestListener:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    return-void
.end method

.method private final onComplete$com$motorola$camera$fsm$camera$states$runnables$PanoCaptureRequestRunnable()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->$r8$classId:I

    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->onComplete(Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->onError(Ljava/lang/Exception;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->mSetRepeatingRequestListener:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable$PanoSetRepeatingRequestListener;

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p3

    invoke-static {p3}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 4
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 5
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 6
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    const-string v2, "REPEATING_BURST"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x3

    if-eqz p3, :cond_0

    .line 8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 11
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3, p0, v0, p1}, Lcom/google/zxing/Result;->setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 15
    invoke-static {p3, v2, p0, v0, p1}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p3

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    .line 17
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-virtual {p3, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 22
    invoke-static {v2, v4, p0, v0, p1}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 24
    invoke-virtual {p3, v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 25
    :goto_0
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 27
    invoke-direct {p1, p3, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 28
    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 1
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendComplete(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sendComplete(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void

    :pswitch_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->mSetRepeatingRequestListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->mLock:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
