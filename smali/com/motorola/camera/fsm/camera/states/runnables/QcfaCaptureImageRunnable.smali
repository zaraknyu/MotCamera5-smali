.class public final Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mCaptureRequestListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    return-void

    :pswitch_1
    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    invoke-direct {p1, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Void;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_0
    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->WAIT_TOP_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v2, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    const/4 p0, 0x0

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, p1, v2, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 6
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$2;

    .line 9
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 10
    invoke-static {v0, v2, p0, v3, p2}, Lcom/google/zxing/Result;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Landroid/os/Handler;)V

    .line 11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1, v1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 13
    :pswitch_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v2, "FACING"

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 15
    const-string v4, "CAMERA_TYPE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    if-eqz v5, :cond_2

    .line 16
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v0, :cond_0

    .line 18
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v0, :cond_1

    .line 20
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->run$com$motorola$camera$fsm$camera$states$runnables$OpenCameraRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 24
    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 25
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 26
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    .line 27
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 29
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 33
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->run$com$motorola$camera$fsm$camera$states$runnables$OpenCameraRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    :goto_3
    return-void

    .line 34
    :pswitch_1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p3

    if-eqz p3, :cond_9

    const/4 p3, 0x2

    .line 37
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_4

    .line 38
    :cond_7
    sget-object p3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p3, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    .line 41
    iget-object p3, p3, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object p3, p3, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 42
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v1

    .line 43
    iget-object v2, p3, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 44
    sget-object v3, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_8

    .line 45
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/media/Image;->setTimestamp(J)V

    .line 46
    invoke-virtual {v2}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 47
    :try_start_0
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-virtual {p3}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    .line 49
    iget-object p3, v0, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {p3, v1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 50
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 52
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Reflected class AndroidImageUtils was not initialized."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_9
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    .line 55
    iget-object v4, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v2, p0

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/Result;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_common/zzje;Landroid/os/Handler;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run$com$motorola$camera$fsm$camera$states$runnables$OpenCameraRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    sget-object v3, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    iget-object v3, v3, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager;

    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mIdentifier:Ljava/lang/Integer;

    const-string v5, "openFsmCameraInfo "

    monitor-enter v3

    :try_start_0
    sget-boolean v6, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "CameraStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2a

    :cond_1
    :goto_0
    iput-object v4, v3, Lcom/motorola/camera/device/CameraStateManager;->mFsmThreadId:Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/motorola/camera/device/CameraStateManager;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "USE_CASE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_3

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v8

    :goto_2
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getMainCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v10

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v5, v11, :cond_5

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v5, v11, :cond_5

    if-eqz v6, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    move v9, v7

    goto :goto_4

    :cond_5
    :goto_3
    move v9, v8

    :goto_4
    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v5, v11, :cond_6

    move v5, v8

    goto :goto_5

    :cond_6
    move v5, v7

    :goto_5
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v11

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getMainCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode(I)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    const/4 v10, 0x6

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_6
    const-string v10, "CAMERA_TYPE"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/settings/CameraType;

    const/4 v12, -0x1

    if-nez v10, :cond_a

    invoke-static {v12, v12, v11}, Lcom/motorola/camera/settings/SettingsManager;->decideCameraType(IIZ)Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    if-ne v10, v13, :cond_a

    const-string v0, "OpenCameraRunnable"

    const-string v1, "cameraType is UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v14, v14, Lcom/motorola/camera/settings/SettingsManager;->mCameraMap:Ljava/util/EnumMap;

    invoke-virtual {v14}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    goto :goto_7

    :cond_c
    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->isExternalCamera(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v1, "OPEN_CAMERA_ERROR"

    invoke-virtual {v4, v1, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "IS_EXTERNAL_CAMERA"

    invoke-virtual {v4, v1, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2, v4, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_d
    :goto_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v13

    if-nez v13, :cond_e

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->DEBUG_ID:Lcom/motorola/camera/settings/CameraType;

    if-eq v10, v13, :cond_e

    move v13, v8

    goto :goto_8

    :cond_e
    move v13, v7

    :goto_8
    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    check-cast v14, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    iget-object v14, v14, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->mMasterCameras:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    if-eqz v13, :cond_f

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v3, v14, v15}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    invoke-virtual {v3, v14, v8}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    iget-object v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    check-cast v15, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    iget-object v15, v15, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->mMasterCameras:Ljava/util/HashMap;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    check-cast v12, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    iget-object v15, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v14, v0, v12, v15}, Lcom/google/zxing/Result;->openCamera(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Landroid/os/Handler;)V

    :cond_f
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->switchInDualCaptureModeByLayoutChange(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitchState()Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_9

    :cond_10
    move v12, v7

    goto :goto_a

    :cond_11
    :goto_9
    move v12, v8

    :goto_a
    const-string v14, "SettingsManager"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 p3, v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    if-ne v8, v10, :cond_12

    move/from16 v17, p3

    goto :goto_b

    :cond_12
    move/from16 v17, v7

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move/from16 v18, v4

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_PREVIOUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v19, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move/from16 v20, v6

    invoke-static/range {v19 .. v19}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Landroid/util/Size;

    invoke-static {v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iput-object v10, v4, Lcom/motorola/camera/settings/SettingsManager;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move/from16 v19, v9

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    move/from16 v21, v12

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move/from16 v22, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    move-wide/from16 v23, v7

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;

    move/from16 v25, v5

    const/4 v5, 0x1

    invoke-direct {v8, v5, v0}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;-><init>(ILcom/motorola/camera/settings/CameraType;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual60fps(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;

    move/from16 v26, v11

    const/4 v11, 0x1

    invoke-direct {v8, v11, v5}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda17;-><init>(ILcom/motorola/camera/settings/CameraType;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;

    const/16 v8, 0x13

    invoke-direct {v7, v8}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;

    const/16 v8, 0x14

    invoke-direct {v7, v8, v0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_c

    :cond_13
    move/from16 v26, v11

    goto/16 :goto_c

    :cond_14
    move/from16 v25, v5

    move-wide/from16 v23, v7

    move/from16 v26, v11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual8KSize(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-nez v7, :cond_15

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual8KSize(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_15
    sget-object v7, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;

    const/16 v11, 0x15

    invoke-direct {v8, v11}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;

    const/4 v11, 0x0

    invoke-direct {v8, v11, v0}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_16
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual60fps(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual60fps(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;

    const/16 v8, 0x16

    invoke-direct {v7, v8}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_18
    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v7, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_PORTRAIT_HD:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v5, v5, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v5, Ljava/util/EnumSet;

    invoke-virtual {v5, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;

    const/16 v8, 0x17

    invoke-direct {v7, v8}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v0}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda14;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_19
    :goto_c
    new-instance v5, Lcom/motorola/camera/VideoFormat;

    new-instance v7, Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getInitVideoSize(Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-direct {v5, v7}, Lcom/motorola/camera/VideoFormat;-><init>(Lcom/motorola/camera/PreviewSize;)V

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5, v7}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_d

    :cond_1a
    const/4 v7, 0x0

    goto :goto_e

    :cond_1b
    :goto_d
    move/from16 v7, p3

    :goto_e
    iput-boolean v7, v5, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v5, :cond_1c

    new-instance v5, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;

    const/16 v7, 0x18

    invoke-direct {v5, v7}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_1c
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;

    const/16 v8, 0x19

    invoke-direct {v7, v8}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_1d

    new-instance v5, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;

    const/16 v7, 0x14

    invoke-direct {v5, v7}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/VideoFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionFHDSupported()Z

    move-result v8

    if-eqz v8, :cond_1f

    sget-object v8, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    iget-object v11, v7, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v11, 0x18

    if-ne v8, v11, :cond_1f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOn()Z

    move-result v8

    if-nez v8, :cond_1f

    goto :goto_f

    :cond_1f
    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v11, v7, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-static {v7}, Lcom/motorola/camera/utility/ColorUtil;->findAspectRatio(Lcom/motorola/camera/VideoFormat;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v7

    if-eqz v7, :cond_1e

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_22
    invoke-static {v6, v0}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v1, v12}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v1, v13}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/VideoFormat;

    invoke-static {v1, v5}, Lcom/motorola/camera/settings/SettingsManager;->getVideoResolutionString(Lcom/motorola/camera/CameraApp;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v11, v8, Lcom/motorola/camera/settings/SettingsManager;->mFormatToSummaryMap:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_23

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager;->mFormatToSummaryMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getHighSpeedVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda37;

    invoke-direct {v8, v0, v1, v5}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda37;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v4, v7}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v5}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v5, v0}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lcom/motorola/camera/utility/SizeUtility$SizeComparator;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-static {v9, v1}, Lcom/motorola/camera/settings/SettingsManager;->getVideoResolutionString(Lcom/motorola/camera/CameraApp;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :cond_25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    iput-object v1, v0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    goto :goto_12

    :cond_26
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    iput-object v1, v0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    :goto_12
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v4, :cond_27

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_FRNT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Range;

    goto :goto_13

    :cond_27
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_BACK_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Range;

    :goto_13
    invoke-virtual {v0, v1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/motorola/camera/settings/SettingsHelper;->getMotoCameraAEFpsRange(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)[Landroid/util/Range;

    move-result-object v1

    if-eqz v1, :cond_2e

    array-length v4, v1

    if-nez v4, :cond_28

    goto :goto_17

    :cond_28
    array-length v4, v1

    const/16 v6, 0x190

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v4, :cond_2a

    aget-object v8, v1, v7

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v11, 0x1e

    if-lt v8, v11, :cond_29

    if-gt v9, v11, :cond_29

    if-ge v9, v6, :cond_29

    move v6, v9

    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_2a
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v12, -0x1

    :goto_15
    array-length v8, v1

    if-ge v4, v8, :cond_2c

    aget-object v8, v1, v4

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v9, v6, :cond_2b

    if-ge v7, v8, :cond_2b

    move v12, v4

    move v7, v8

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_2c
    if-ltz v12, :cond_2d

    aget-object v1, v1, v12

    goto :goto_18

    :cond_2d
    const-string v1, "Can\'t find an appropriate frame rate range!"

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    move-object v1, v5

    goto :goto_18

    :cond_2e
    :goto_17
    const-string v1, "No supported frame rates returned!"

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_2f
    :goto_18
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Landroid/util/Range;

    if-eqz v1, :cond_30

    invoke-virtual {v0, v1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {v4, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_30
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v5}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :cond_31
    if-nez v17, :cond_32

    if-nez v21, :cond_32

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupZoom()V

    :cond_32
    if-eqz v18, :cond_35

    if-eqz v25, :cond_35

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    if-ne v10, v1, :cond_33

    move/from16 v1, p3

    goto :goto_19

    :cond_33
    const/4 v1, 0x0

    :goto_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    if-ne v10, v4, :cond_34

    move/from16 v4, p3

    goto :goto_1a

    :cond_34
    const/4 v4, 0x0

    :goto_1a
    invoke-static {v0, v1, v4}, Lcom/motorola/camera/settings/SettingsManager;->setupDualCaptureZoom(ZZZ)V

    :cond_35
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupZoomLimitMaxValue()Z

    move-result v0

    if-nez v0, :cond_36

    move/from16 v1, v26

    const/4 v0, 0x0

    goto/16 :goto_25

    :cond_36
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/Setting;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v6, v1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f12051c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f12051b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->updateMediaVolumes()V

    goto :goto_1b

    :cond_37
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_1c

    :cond_38
    iget-object v4, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto :goto_1b

    :cond_39
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ignore setting "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_3a
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v15, v0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->OUTPUT_YUV_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    new-array v4, v0, [Landroid/util/Size;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/PreviewSize;->transformFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3b

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/PreviewSize;

    new-instance v7, Landroid/util/Size;

    iget v8, v6, Lcom/motorola/camera/PreviewSize;->width:I

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_3b
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v1, v2, v4}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v1, v5, v4}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v1, v6, v4}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v5, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v6, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    move/from16 v1, v26

    invoke-static {v1, v0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    move/from16 v7, v25

    const/4 v0, 0x0

    invoke-static {v1, v0, v7}, Lcom/motorola/camera/settings/SettingsManager;->setInitialVideoSize(ZZZ)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isProModeSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :cond_3c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v1, :cond_3d

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0, v15, v5}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    goto :goto_1e

    :cond_3d
    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :goto_1e
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v15}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v4}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v4

    move/from16 v5, p3

    if-ne v4, v5, :cond_3e

    move v4, v5

    goto :goto_1f

    :cond_3e
    const/4 v4, 0x0

    :goto_1f
    sget-object v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->AUDIO_SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    iget-boolean v7, v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    if-nez v7, :cond_3f

    const-string v7, "audio.camerasound.force"

    iget-boolean v8, v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    invoke-static {v7, v8}, Lcom/motorola/camera/shared/SystemSetting;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    iput-boolean v5, v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    :cond_3f
    iget-boolean v5, v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "config_camera_sound_forced"

    const-string v8, "bool"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_40

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto :goto_20

    :cond_40
    const/4 v6, 0x0

    :goto_20
    if-nez v6, :cond_42

    if-nez v4, :cond_42

    if-eqz v5, :cond_41

    goto :goto_21

    :cond_41
    const/4 v4, 0x0

    goto :goto_22

    :cond_42
    :goto_21
    const/4 v4, 0x1

    :goto_22
    if-eqz v4, :cond_43

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v0, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_23

    :cond_43
    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :goto_23
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBGServiceProcessingSupported()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupBGServiceProcessing()V

    :cond_44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->NATIVE_MAX_EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_45

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    :cond_45
    const/4 v5, 0x1

    invoke-static {v10, v1, v5}, Lcom/motorola/camera/settings/SettingsManager;->setupHdr(Lcom/motorola/camera/settings/CameraType;ZZ)V

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->setupFaceBeauty(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupAutoNV()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/settings/CaptureIntent;->isGeoAllowed()Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_24

    :cond_46
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FALSE_LIST:Ljava/util/List;

    :goto_24
    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCurrentCamera dur:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v4, v23

    invoke-static {v4, v5, v0, v14}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_47
    const/4 v0, 0x1

    :goto_25
    if-nez v0, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_48
    move-object/from16 v0, p0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v6

    if-eqz v6, :cond_49

    const-string v2, "OpenCameraRunnable"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mcf initialization blocks dur:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->setupDualCameraAllowedValues(Z)V

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->setupModeAllowedValues(Z)V

    if-eqz v19, :cond_4d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getMainCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v6, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v2}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-static {v7, v2, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getFallbackMode(ILjava/util/List;Z)I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v2

    if-ne v2, v7, :cond_4a

    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_4a
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_4b

    invoke-interface {v2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->saveSlider(Ljava/util/ArrayList;)V

    :cond_4b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "MODE"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move v7, v1

    :cond_4c
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_4d
    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->resetState()V

    goto :goto_26

    :cond_4e
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v5

    if-eqz v5, :cond_4f

    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_MASTER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v4

    move-object v4, v2

    move-object/from16 v2, v27

    goto :goto_27

    :cond_4f
    const/4 v5, 0x0

    :cond_50
    :goto_27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    :cond_51
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    :cond_52
    :goto_28
    if-nez v22, :cond_53

    sget-object v6, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v3, v2, v6}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    xor-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v2, v6}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->mMasterCameras:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    iget-object v7, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v0, v6, v7}, Lcom/google/zxing/Result;->openCamera(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Landroid/os/Handler;)V

    :cond_53
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-nez v2, :cond_54

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_54
    sget-object v2, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v3, v4, v2}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;->mMasterCameras:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v0, v2, v5}, Lcom/google/zxing/Result;->openCamera(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Landroid/os/Handler;)V

    :cond_55
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/device/CameraStateManager$Status;->CLOSE:Lcom/motorola/camera/device/CameraStateManager$Status;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$Status;)V

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;->mCaptureRequestListener:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    iget-object v6, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v0, v5, v6}, Lcom/google/zxing/Result;->openCamera(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;Landroid/os/Handler;)V

    goto :goto_29

    :cond_56
    if-eqz v20, :cond_57

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MCF_PROCESSING"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_57
    return-void

    :goto_2a
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
