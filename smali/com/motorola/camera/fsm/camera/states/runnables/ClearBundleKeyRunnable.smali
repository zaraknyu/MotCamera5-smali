.class public final Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mBundleType:Ljava/lang/Object;

.field public mKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mBundleType:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mKey:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 5
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mBundleType:Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->createCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mBundleType:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    .line 11
    invoke-static {p3, p1, v1, v0}, Lcom/google/zxing/Result;->createCaptureRequests(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    :cond_1
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mKey:Ljava/lang/Object;

    .line 14
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->createCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p3

    .line 21
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mKey:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    invoke-static {p3, p1, p0, v0}, Lcom/google/zxing/Result;->createCaptureRequests(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 22
    :cond_4
    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2, p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 23
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 24
    sget-object p0, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_CAPTURE_VIDEO_REQUESTS:Ljava/util/List;

    goto :goto_2

    .line 25
    :cond_5
    sget-object p0, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_PREVIEW_REQUESTS:Ljava/util/List;

    .line 26
    :goto_2
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setStreamingRequests(Ljava/util/List;)V

    return-void

    .line 27
    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mBundleType:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mKey:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    .line 28
    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mBundleType:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->mKey:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
