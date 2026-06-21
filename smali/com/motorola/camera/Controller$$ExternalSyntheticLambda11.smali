.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;Lcom/google/android/gms/tasks/zzw;J)V
    .locals 0

    .line 2
    const/16 p3, 0xa

    iput p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 0

    .line 3
    const/16 p2, 0x1c

    iput p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->$r8$classId:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    instance-of v2, v1, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    if-eqz v2, :cond_0

    move-object v8, v1

    check-cast v8, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    iget-object v3, v8, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGesturePauseTime:Ljava/util/ArrayList;

    iget-wide v4, v8, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;->mGestureStopTime:J

    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v2}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v3 .. v9}, Lcom/motorola/camera/saving/SaveImageService;->cutGestureAndSaveVideo(Ljava/util/List;JJLcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;Lcom/motorola/camera/storage/MediaFile;)V

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->finishVideoFile(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "SaveImageService"

    const-string v0, "Image canceled before processing could register!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    iget-object v2, v1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v7, v0, Lcom/motorola/camera/saving/SaveImageService;->mMediaLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreFile;->getProcessingMediaUri()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v8, "SaveImageService"

    const-string v9, "Failed to create processing media URI"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v3

    :goto_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    const-string v3, "ID"

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    const-string v3, "URI"

    invoke-virtual {v2, v3, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string p0, "null"

    :goto_1
    invoke-static {v0, p0, v5}, Lcom/motorola/camera/saving/SaveImageService;->notifyProcessingUri(Landroid/net/Uri;Ljava/lang/String;Z)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, v6}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v2, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->startBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "SaveImageService"

    const-string v1, "addProcessingImage: failed to insert in MediaStore"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    sget-object v5, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v5, v5, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v7, v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v7, v1, :cond_8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    :cond_9
    const-string v1, "ERROR_CASE"

    invoke-virtual {v2, v4, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putInt(ILjava/lang/String;)V

    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    invoke-static {p0, v3}, Lcom/motorola/camera/saving/SaveImageService;->notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_a
    :goto_3
    return-void

    :goto_4
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveImageService;->addImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;->onJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/panorama/PanoCallable;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzb;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/panorama/PanoCallable;->callback(Lcom/google/android/gms/tasks/zzb;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/Result;

    iget-object p0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    const-string v3, "RTBokehMode"

    invoke-virtual {v0, v6}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_6

    :cond_b
    new-instance v1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_c

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_5

    :cond_c
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    goto/16 :goto_c

    :cond_d
    :goto_6
    new-instance v5, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v5}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v6, 0x7

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_9

    :cond_e
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    :goto_7
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_8

    :cond_11
    move v2, v4

    :goto_8
    const-string v3, "SegmentationMode"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    invoke-static {v1, p0, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_b

    :cond_12
    :goto_9
    iget-boolean v1, v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfMultiFrameBokehSupported(Z)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    :cond_13
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    move v2, v4

    :goto_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    invoke-static {v1, p0, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :goto_b
    invoke-static {v5}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :goto_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v2, v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mTorchControlListener:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_15
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    iget-object v0, v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mMcfStateListener:Lcom/motorola/camera/mcfmanagers/McfSettingManager$1;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v1, :cond_17

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_d

    :cond_17
    const-string v1, "BgJobManager"

    const-string v2, "Found a pending job, but it has no mMediaData"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_18
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;

    invoke-interface {v0}, Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;->onQueueEmpty()V

    goto :goto_e

    :cond_19
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureResult;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManual(FLcom/motorola/camera/settings/CameraType;)F

    move-result v7

    :cond_1a
    sub-float v9, v7, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3c75c28f    # 0.015f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1b

    move v9, v6

    goto :goto_f

    :cond_1b
    move v9, v5

    :goto_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPzs4XMappingNeeded()Z

    move-result v11

    if-eqz v11, :cond_1c

    sget-object v11, Lcom/motorola/camera/utility/ZoomHelper;->PSZ_4X_RANGE:Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_1c

    move v9, v6

    :cond_1c
    sget-boolean v7, Lcom/motorola/camera/FeaturesUtil;->ZOOM_COMPLETE_CHECK_ACTIVE_CAMERA:Z

    if-eqz v7, :cond_23

    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    if-nez v7, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v7

    if-eqz v7, :cond_23

    const-wide/16 v10, 0xa

    if-eqz v9, :cond_21

    iget-wide v12, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleteFrameNum:J

    cmp-long v7, v12, v10

    if-gtz v7, :cond_21

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    sget-object v7, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v7, v7, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    if-eqz v7, :cond_20

    array-length v12, v7

    if-ne v12, v2, :cond_20

    sget-object v12, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v7, v12

    sget-object v13, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v7, v7, v13

    cmpg-float v13, v3, v12

    if-gez v13, :cond_1d

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    goto :goto_10

    :cond_1d
    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v14

    if-eqz v14, :cond_1f

    cmpl-float v12, v3, v12

    if-ltz v12, :cond_1e

    cmpg-float v3, v3, v7

    if-gez v3, :cond_1e

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_10

    :cond_1e
    move-object v3, v13

    goto :goto_10

    :cond_1f
    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_10

    :cond_20
    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_10
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    iget-wide v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleteFrameNum:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleteFrameNum:J

    move v9, v5

    goto :goto_11

    :cond_21
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_22

    iget-wide v12, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleteFrameNum:J

    cmp-long p0, v12, v10

    if-lez p0, :cond_22

    const-string p0, "ZoomStateMachine"

    const-string/jumbo v3, "waiting for active physical camera update timeout"

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleteFrameNum:J

    :cond_23
    :goto_11
    iget-boolean p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    if-nez p0, :cond_24

    if-eqz v9, :cond_24

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;

    invoke-interface {v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;->onZoomCompleted()V

    goto :goto_12

    :cond_24
    iput-boolean v9, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    iget-boolean p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    if-eqz p0, :cond_28

    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result p0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManual(FLcom/motorola/camera/settings/CameraType;)F

    move-result p0

    :cond_25
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v3

    invoke-static {v3, v8}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->isEqual(FF)Z

    move-result v3

    if-eqz v3, :cond_26

    move v2, v6

    goto :goto_13

    :cond_26
    iget v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    invoke-static {v3, p0}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->isEqual(FF)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_13

    :cond_27
    move v2, v4

    :goto_13
    iput v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:I

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-interface {v2, p0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;->onZoomStateChange(FLcom/motorola/camera/settings/CameraType;)V

    goto :goto_14

    :cond_28
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exif Jpeg not received, cancel capture of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No job matching "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ignoring"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_29
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->EXIF_JPEG_NOT_RECEIVED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    shl-int/lit8 p0, p0, 0x10

    invoke-static {p0, v5}, Lcom/motorola/camera/mcf/Mcf;->mcfJobSeqCanStop(IZ)V

    :goto_15
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v7

    if-eqz v7, :cond_2b

    new-instance v0, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_2b
    new-instance v7, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mIsMaster:Z

    invoke-direct {v7, v1, v4, v0}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    move-object v0, v7

    :goto_16
    iput-object p0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    if-nez p0, :cond_2c

    iput-object v3, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    :cond_2c
    invoke-interface {v2, v5, v6, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RequestListener;->onRequest(IILcom/motorola/camera/fsm/RequestWrapper;)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->onComplete(I)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->cancelCleanup(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/storage/MediaVolume;

    sget-object v1, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2d

    goto :goto_17

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_2e

    move v5, v6

    :cond_2e
    :goto_17
    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    if-nez v1, :cond_2f

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Current storage location is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;->onError(Ljava/lang/Exception;)V

    goto :goto_18

    :cond_2f
    invoke-virtual {v1, p0}, Lcom/motorola/camera/storage/MediaVolume;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_18

    :cond_30
    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/storage/MediaVolumesHolder$addFreeBytesUpdatedListener$$inlined$runOnWorker$1;

    invoke-direct {v2, v0, v6}, Lcom/motorola/camera/storage/MediaVolumesHolder$addFreeBytesUpdatedListener$$inlined$runOnWorker$1;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    const-string/jumbo v2, "shotType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficient(Lcom/motorola/camera/ShotType;J)Z

    move-result v1

    if-nez v1, :cond_31

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not enough space: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;->onError(Ljava/lang/Exception;)V

    goto :goto_18

    :cond_31
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;

    if-nez p0, :cond_32

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Video session data is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;->onError(Ljava/lang/Exception;)V

    goto :goto_18

    :cond_32
    invoke-virtual {p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    new-instance v3, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v3}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/google/zxing/Result;

    new-instance v3, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;

    invoke-direct {v3, v0, v2, p0}, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;-><init>(Lcom/motorola/camera/device/callables/CallableListener;Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Landroidx/media3/extractor/text/pgs/PgsParser;)V

    invoke-virtual {v1, v3}, Lcom/google/zxing/Result;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    :goto_18
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/concurrent/FileLock;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_34

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_33
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_34
    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/concurrent/FileLock;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger;

    monitor-enter v1

    :try_start_3
    iget-object v0, v1, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Lcom/motorola/camera/fsm/Fsm;->handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_e
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/Error;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-interface {v0, p0}, Lcom/motorola/camera/device/callables/MediaStatusListener;->onStatusCallback(Lcom/motorola/camera/utility/Error;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/OpenCameraRunnable$OpenCameraRunnableCameraListener;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CameraCallable;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/tinder/StateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/motorola/camera/device/callables/CameraCallable;->mBegin:J

    sub-long/2addr v1, v3

    iget-object v3, v0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/callables/CallableListener;

    iget-object v4, p0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Exception;

    if-eqz v4, :cond_36

    instance-of p0, v0, Lcom/motorola/camera/device/callables/CloseCameraCallable;

    if-nez p0, :cond_35

    invoke-virtual {v0}, Lcom/motorola/camera/device/callables/CameraCallable;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception in result cid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (dur:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    if-eqz v3, :cond_37

    invoke-interface {v3, v4}, Lcom/motorola/camera/device/callables/CallableListener;->onError(Ljava/lang/Exception;)V

    goto :goto_1a

    :cond_36
    if-eqz v3, :cond_37

    iget-object p0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    invoke-interface {v3, p0}, Lcom/motorola/camera/device/callables/CallableListener;->onComplete(Ljava/lang/Object;)V

    :cond_37
    :goto_1a
    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->onComplete(Lcom/google/android/gms/tasks/zzw;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->showImagePreview(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v6}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_15
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cli/content/CliContentViewModel;->showContentPriv(Landroid/content/Intent;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaPlayer;

    iget-object v1, v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->prepareStartFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    iget-object p0, v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->playerSurface:Landroid/view/Surface;

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_38
    iput-object v3, v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->playerSurface:Landroid/view/Surface;

    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/concurrent/FileLock;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->HEADSET_PLUG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2, p0, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_18
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    iget-boolean v1, v0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    invoke-virtual {v0, v1, v6}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v0

    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    invoke-interface {p0, v1, v0}, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;->onRotationChanged(II)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    return-void

    :pswitch_1b
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "IS_SPLIT_SCREEN"

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :pswitch_1c
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v2, "REVIEW_PLAY"

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
