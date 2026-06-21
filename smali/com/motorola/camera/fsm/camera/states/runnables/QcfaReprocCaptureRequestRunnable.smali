.class public final Lcom/motorola/camera/fsm/camera/states/runnables/QcfaReprocCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0, p0, v1, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupReprocCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/ShotType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CREATE_REPROC_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 7

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;-><init>(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p3

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v5, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-static {v0, p3, p1, v5}, Lcom/google/zxing/Result;->createCaptureRequests(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 8
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/saving/CaptureHolder;

    .line 11
    iget-object v0, p3, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 13
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_3

    .line 15
    iget-object p1, p3, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez p1, :cond_4

    :cond_3
    move-object v4, p0

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 17
    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    .line 18
    new-instance v1, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v6, 0x4

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void

    .line 19
    :goto_1
    const-string p0, "QcfaReprocCaptureRequestRunnable"

    const-string p1, "Missing capture result for reproc request"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 21
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaReprocCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
