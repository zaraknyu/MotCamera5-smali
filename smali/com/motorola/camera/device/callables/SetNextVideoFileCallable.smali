.class public final Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mSessionData:Ljava/lang/Object;

.field public final mVideoData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/CallableListener;Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Landroidx/media3/extractor/text/pgs/PgsParser;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->$r8$classId:I

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1, v0}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 8
    iput-object p2, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Ljava/lang/Object;

    .line 9
    iput-object p3, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;Lcom/motorola/camera/CameraKpi;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->$r8$classId:I

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->$r8$classId:I

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    iput-object v0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Lcom/tinder/StateMachine;
    .locals 8

    iget v0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    check-cast v1, Ljava/lang/String;

    iget-object p0, v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string/jumbo v2, "set"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/motorola/camera/shared/SystemSetting;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemSetting"

    const-string/jumbo v1, "setString error "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    new-instance p0, Lcom/tinder/StateMachine;

    invoke-direct {p0, v5, v3, v4}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v0

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraManager;

    iput-object v6, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/CameraKpi;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;-><init>(Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;)V

    iput-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    iget-object p0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    invoke-virtual {v6, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    iput-object v5, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    :goto_1
    new-instance p0, Lcom/tinder/StateMachine;

    invoke-direct {p0, v5, v3, v4}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    return-object p0

    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->setNextVideoFile()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p0, Lcom/tinder/StateMachine;

    invoke-direct {p0, v5, v3, v4}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Object;ZI)V

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "SetSystemPropertyCallable"

    return-object p0

    :pswitch_0
    const-string p0, "AddOrRemoveAvailabilityListenerCallable"

    return-object p0

    :pswitch_1
    const-string p0, "SetNextVideoFileCallable"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNextVideoFile()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/fsm/Fsm;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    new-instance v3, Lcom/motorola/camera/saving/FileName;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v3, v4}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iget-object v4, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/saving/FileName;->setFileNumber(I)Lcom/motorola/camera/saving/FileName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v3}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/FileDescriptor;)V

    iput-object p0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "sharedMediaFile is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Media recorder is null, it may be closed"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
