.class public final Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mediacodec/ActivePhotoEngine$VideoSaveListener;
.implements Lcom/motorola/camera/mediacodec/ActivePhotoJpegDivert;


# instance fields
.field public final mActivePhotoJobs:Ljava/util/Set;

.field public mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

.field public final mEngine:Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mExecutorLock:Ljava/lang/Object;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public final mMcfStateAdapter:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

.field public mPreviousSettingValue:Ljava/lang/Integer;

.field public final mSavedMap:Ljava/util/Map;

.field public final mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final mVideoListeners:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutorLock:Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mPreviousSettingValue:Ljava/lang/Integer;

    new-instance p2, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v0, 0x1a

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mMcfStateAdapter:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mVideoListeners:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mActivePhotoJobs:Ljava/util/Set;

    new-instance p2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_BUFFER_DURATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p2, p1, v0, v1}, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;J)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mEngine:Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    return-void
.end method


# virtual methods
.method public final addActiveVideoImageData(I)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_JPEG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_VIDEO"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_VIDEO_START_TIMESTAMP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_VIDEO_STOP_TIMESTAMP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->keepActivePhotoVideoFiles()Z

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_1
    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mActivePhotoDataManager:Lcom/google/android/gms/tasks/zzb;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_4

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    iput-wide v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mActiveVideoPresentationOffsetUs:J

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setActiveVideoFile(Ljava/io/File;)V

    :cond_4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mActivePhotoDataManager:Lcom/google/android/gms/tasks/zzb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v3, v3, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, "ANALYTICS_ACTIVE_PHOTO_SAVED"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v1, "ANALYTICS_ACTIVE_PHOTO_VIDDUR"

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mActivePhotoJobs:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final addActiveVideoToMedia(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 3

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v0, v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->addActiveVideoImageData(I)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    return-void
.end method

.method public final generateActivePhoto(I)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->addActiveVideoImageData(I)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ActivePhotoComponent"

    return-object p0
.end method

.method public final isActivePhotoJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget p1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mActivePhotoJobs:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadTextures()Z
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->loadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 5

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mEngine:Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object v0, p3, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;->RUNNING:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p3, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/utility/EGLHelper;->makeCurrent()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p3, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const-string v1, "ActivePhotoEngine"

    const-string v4, "egl makeCurrent fail"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v3

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mTimestamp:J

    iget-object v0, p3, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v4, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object p3, p3, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/utility/EGLHelper;->swapBuffers(J)Z

    move-result v3

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {p1, p2, p3, p0}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->makeCurrent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_8
    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public final onDrawFbo([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mEngine:Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object p1, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    sget-object p1, Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;->RUNNING:Lcom/motorola/camera/mediacodec/ActivePhotoEngine$Flag;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onRotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->setSelfieFlip(I)V

    :cond_0
    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final runOnExecutor(Ljava/lang/Runnable;)V
    .locals 3

    const-string/jumbo v0, "trying to execute "

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "ActivePhotoComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with stopped executor"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setEnable$1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->SETUP:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mPreviousSettingValue:Ljava/lang/Integer;

    invoke-static {p1, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final declared-synchronized startEngine()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ACTIVE_PHOTO_AUDIO_TIMESTAMP_OFFSET:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(I)V

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->runOnExecutor(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mMcfStateAdapter:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$1;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->setEnable$1(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->stopEngine()V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->setEnable$1(Z)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mVideoListeners:Ljava/util/Map;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_4

    check-cast v1, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;->onVideoReady()V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_6
    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->setEnable$1(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->getCLICodecVideoSize(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/PreviewSize;

    move-result-object p1

    :cond_7
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->setPreviewSize(Lcom/motorola/camera/PreviewSize;)V

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->startEngine()V

    :cond_9
    return-void
.end method

.method public final stopEngine()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mEngine:Lcom/motorola/camera/mediacodec/ActivePhotoEngine;

    const-string v1, "MediaMuxer stop failed."

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2}, Lcom/motorola/camera/utility/Flags;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->stopAudioRecordAndAudioCodecHelper()V

    iget-object v2, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mVideoBuffers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v2, v0, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->mAudioBuffers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/ActivePhotoEngine;->stopMuxer()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "ActivePhotoEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->runOnExecutor(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_4
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-interface {v0, v1, v2, p0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ActivePhotoComponent"

    const-string v1, "Unable to gracefully shutdown executor"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    :goto_1
    return-void

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final unloadTextures()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->setEnable$1(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ActivePhotoComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->unloadTexture()V

    return-void
.end method
