.class public final Lcom/motorola/camera/ui/widgets/gl/PostCapture;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# instance fields
.field public mCaptureType:I

.field public mCroppedBuffer:Ljava/nio/ByteBuffer;

.field public mCroppedSize:Landroid/graphics/Point;

.field public final mMcfAdapter:Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

.field public final mMcfJpegReqQueue:Ljava/util/List;

.field public final mPostCaptureListeners:Ljava/util/Set;

.field public mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

.field public mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mTimestamp:J


# direct methods
.method public static -$$Nest$mgetOrientationForHolder(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0

    iget p0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getSequenceListForRoot(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :catch_1
    :goto_0
    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    const-string p1, "PostCapture"

    if-eqz v0, :cond_1

    iget p0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using fallback capture record orientation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_2

    sget p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    :goto_1
    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Unable to get orientation from record, assuming default "

    invoke-static {v0, p0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_2
    return p0
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    const/4 p1, 0x7

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostCaptureListeners:Ljava/util/Set;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfAdapter:Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addPostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostCaptureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final createTempThumbnail(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SEQ_ID"

    const-class v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getMcfJpegReq(IJ)Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    const/4 v2, 0x2

    if-eq v2, v1, :cond_1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p3, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;-><init>(JILjava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final declared-synchronized getPostCaptureTexture(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final getPreviewFrame(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;
    .locals 3

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    iput-object p1, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedSize:Landroid/graphics/Point;

    iput-object p1, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput p1, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    iput p1, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedSize:Landroid/graphics/Point;

    return-object v0

    :cond_0
    const-string p0, "PostCapture"

    const-string p1, "mCroppedBuffer is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {p0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->getPostCaptureTexture(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, v2, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->renderToFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object p1

    iput-object p1, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:Ljava/lang/Object;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput p0, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    iput p0, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 11

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v10}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PostCapture"

    return-object p0
.end method

.method public final isHighestPriority(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)Z
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v4, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mPriority:I

    iget v4, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mPriority:I

    if-le v3, v4, :cond_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->loadTexture()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized notifyPostCaptureListeners(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mDirty:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->loadYuvTex()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mFirstFrame:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->isHighestPriority(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->getPreviewFrame(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostCaptureListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;

    invoke-interface {v2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;->onPostCaptureAvailable(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    sget-boolean v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/utility/BoostManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/utility/BoostManager$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F[F)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized onRotate(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized removePostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostCaptureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final renderToFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v5, :cond_0

    :try_start_0
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mOrientation:I

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/motorola/camera/Util;->undoCorrectOrientationRelativeToSensor(IIIZ)I

    move-result v5
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v5, :cond_1

    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    goto :goto_0

    :cond_1
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    :goto_0
    instance-of v6, v3, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    new-instance v8, Lcom/motorola/camera/PreviewSize;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    float-to-int v9, v9

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    invoke-direct {v8, v9, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    goto :goto_1

    :cond_2
    move-object v8, v7

    :goto_1
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v11, 0xb4

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v6, :cond_e

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v6, :cond_3

    goto/16 :goto_8

    :cond_3
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v13

    invoke-static {v5, v6, v7, v13}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v6

    invoke-static {v8}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    :goto_2
    new-instance v7, Lcom/motorola/camera/PreviewSize;

    const/16 v13, 0x10e

    const/16 v14, 0x5a

    if-eq v6, v14, :cond_6

    if-ne v6, v13, :cond_5

    goto :goto_3

    :cond_5
    iget v15, v8, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_4

    :cond_6
    :goto_3
    iget v15, v8, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_4
    if-eq v6, v14, :cond_8

    if-ne v6, v13, :cond_7

    goto :goto_5

    :cond_7
    iget v8, v8, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_6

    :cond_8
    :goto_5
    iget v8, v8, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_6
    invoke-direct {v7, v15, v8}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    new-instance v8, Lcom/motorola/camera/PreviewSize;

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v14, v13, Lcom/motorola/camera/PreviewSize;->width:I

    iget v13, v13, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v8, v14, v13}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    if-eqz v6, :cond_9

    if-ne v6, v11, :cond_a

    :cond_9
    new-instance v8, Lcom/motorola/camera/PreviewSize;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v13, v6, Lcom/motorola/camera/PreviewSize;->height:I

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-direct {v8, v13, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    :cond_a
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v6, :cond_b

    new-instance v8, Lcom/motorola/camera/PreviewSize;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v8, v6, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    :cond_b
    iget v0, v8, Lcom/motorola/camera/PreviewSize;->width:I

    iget v6, v7, Lcom/motorola/camera/PreviewSize;->width:I

    if-lt v0, v6, :cond_c

    iget v13, v8, Lcom/motorola/camera/PreviewSize;->height:I

    iget v14, v7, Lcom/motorola/camera/PreviewSize;->height:I

    if-lt v13, v14, :cond_c

    move v0, v6

    goto :goto_7

    :cond_c
    if-ge v0, v6, :cond_d

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    int-to-float v8, v0

    int-to-float v6, v6

    div-float/2addr v8, v6

    mul-float/2addr v8, v7

    float-to-int v14, v8

    goto :goto_7

    :cond_d
    int-to-float v0, v6

    iget v14, v8, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v14

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v0

    float-to-int v0, v6

    :goto_7
    invoke-virtual {v1, v0, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    int-to-float v0, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v0, v6

    int-to-float v7, v14

    mul-float/2addr v7, v6

    invoke-virtual {v1, v0, v7, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    new-array v15, v10, [F

    invoke-static {v15, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    neg-float v6, v0

    neg-float v8, v7

    const/high16 v21, 0x41200000    # 10.0f

    const/high16 v22, 0x41a00000    # 20.0f

    const/16 v16, 0x0

    move/from16 v18, v0

    move/from16 v17, v6

    move/from16 v20, v7

    move/from16 v19, v8

    invoke-static/range {v15 .. v22}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    move-object/from16 v16, v15

    goto :goto_9

    :cond_e
    :goto_8
    move-object/from16 v16, v7

    :goto_9
    if-nez v16, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x4

    if-eqz v2, :cond_12

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mMcfMetadata:Lcom/motorola/camera/mcf/McfMetadata;

    if-eqz v2, :cond_12

    sget-object v6, Lcom/motorola/camera/mcf/McfMetadata;->QCAMERA3_JPEG_ENCODE_CROP_RECT:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v8

    if-eqz v2, :cond_12

    if-eqz v6, :cond_12

    aget v13, v2, v9

    int-to-float v13, v13

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v14

    aget v15, v2, v7

    sub-int/2addr v14, v15

    int-to-float v14, v14

    aget v15, v2, v9

    const/16 v17, 0x2

    aget v18, v2, v17

    add-int v15, v15, v18

    int-to-float v15, v15

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v18

    aget v19, v2, v7

    const/16 v20, 0x3

    aget v2, v2, v20

    add-int v19, v19, v2

    sub-int v2, v18, v19

    int-to-float v2, v2

    move/from16 p0, v7

    new-array v7, v0, [F

    aput v13, v7, v9

    aput v14, v7, p0

    aput v15, v7, v17

    aput v2, v7, v20

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v18, -0x41000000    # -0.5f

    mul-float v15, v15, v18

    move/from16 v24, v9

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v18

    invoke-virtual {v2, v15, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    if-eqz v5, :cond_10

    if-ne v5, v11, :cond_11

    :cond_10
    iget v9, v8, Landroid/graphics/Point;->y:I

    iget v15, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9, v15}, Landroid/graphics/Point;->set(II)V

    :cond_11
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v9, v15

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v12

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v8, v6

    invoke-virtual {v13, v9, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    invoke-static {v6}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v14, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v13}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v6, v14}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v7, v24

    aget v6, v7, v17

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v18

    aget v2, v7, v24

    aget v6, v7, v17

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v19

    aget v2, v7, p0

    aget v6, v7, v20

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aget v6, v7, p0

    aget v7, v7, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v21

    const/high16 v22, 0x41200000    # 10.0f

    const/high16 v23, 0x41a00000    # 20.0f

    const/16 v17, 0x0

    move/from16 v20, v2

    invoke-static/range {v16 .. v23}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_a

    :cond_12
    move/from16 v24, v9

    :goto_a
    move-object/from16 v15, v16

    const v2, 0x8d40

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v6

    invoke-static {v2, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v6, :cond_13

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    invoke-virtual {v3, v2, v2, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    :cond_14
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    rem-int/lit16 v6, v5, 0xb4

    const/high16 v7, 0x43340000    # 180.0f

    if-nez v6, :cond_15

    invoke-virtual {v3, v7, v12, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    invoke-virtual {v3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_b

    :cond_15
    invoke-virtual {v3, v7, v2, v12, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-direct {v6, v7, v1, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v3, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_b
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    new-array v0, v10, [F

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    move/from16 v6, v24

    invoke-static {v1, v6, v0, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-float v1, v5

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->rotate([FFFFF)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_19

    :cond_16
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz v5, :cond_17

    if-ne v5, v11, :cond_18

    :cond_17
    const/4 v1, 0x0

    goto :goto_c

    :cond_18
    const/4 v1, 0x0

    invoke-static {v0, v1, v12, v6, v12}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_d

    :goto_c
    invoke-static {v0, v1, v6, v12, v12}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_19
    :goto_d
    invoke-virtual {v3, v0, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final declared-synchronized setCaptureType$1(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized stateChanged(Lcom/google/zxing/Result;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    const-string v0, "SHOT_TO_SHOT_UI_O"

    const/16 v1, 0xe

    invoke-static {v1, v0}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, "SHOT_ONGOING"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "PRELOCK_FOCUS_EXIT"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, "SHOT_ONGOING"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$1(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$1(I)V

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->createTempThumbnail(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_4

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$1(I)V

    goto/16 :goto_4

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$1(I)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->createTempThumbnail(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_4

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$1(I)V

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, "SHOT_ONGOING"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, "SHOT_ONGOING"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$1(I)V

    goto/16 :goto_4

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_d

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RECORDING_ERROR"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mTimestamp:J

    invoke-virtual {p0, v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->getMcfJpegReq(IJ)Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1, v3}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v3, "PANO_CAPTURE_SUCCESS"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mTimestamp:J

    invoke-virtual {p0, v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->getMcfJpegReq(IJ)Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfAdapter:Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_4

    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfAdapter:Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto :goto_4

    :cond_12
    :goto_3
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$1(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_13
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
