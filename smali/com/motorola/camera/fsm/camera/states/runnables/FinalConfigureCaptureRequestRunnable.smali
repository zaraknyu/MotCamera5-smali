.class public final Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ShotType;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    return-void
.end method

.method private final onCreateCaptureRecord$com$motorola$camera$fsm$camera$states$runnables$FinalConfigureCaptureRequestRunnable(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1, v0, v2, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupReprocCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/ShotType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SEQ_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;->onPostConfigureCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1, v0, v2, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupReprocCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/ShotType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SEQ_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;->onPostConfigureCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onConfigureCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit v1

    :goto_0
    move-object v4, v3

    goto/16 :goto_3

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v5, v4, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v5, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_5

    iget-object v2, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    iget-wide v4, v4, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/CaptureHolder;

    iput-object v2, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    if-nez v2, :cond_3

    const-string v0, "ImageCaptureManager"

    const-string v2, "Attempting to remove recently found capture failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v2, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriterLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v4, v4, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    iget-object v5, v4, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v2, v5}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    invoke-virtual {v4}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->processAfterClose()V

    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_4
    :goto_2
    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v3, v0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    goto :goto_0

    :cond_5
    monitor-exit v1

    goto :goto_0

    :goto_3
    if-eqz v4, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v2, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    const/4 v7, 0x4

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;I)V

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    goto :goto_4

    :cond_6
    move-object v5, p0

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CAPTURE_TYPE"

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-super {v5, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;->onConfigureCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_4
    return-void

    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :pswitch_0
    move-object v5, p0

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CAPTURE_TYPE"

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-super {v5, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;->onConfigureCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;->onCreateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

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

.method public run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FinalConfigureCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
