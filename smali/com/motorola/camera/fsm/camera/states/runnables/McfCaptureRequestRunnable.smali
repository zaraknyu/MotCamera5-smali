.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfCancelInterface;


# static fields
.field public static final sShotTimeoutCallbacks:Ljava/util/Map;


# instance fields
.field public final mCaptureQueueListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

.field public mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;

.field public final mMcfJobHolderMap:Ljava/util/Map;

.field public final mMcfReprocList:Ljava/util/List;

.field public final mMcfSwJpegTimeSummationMap:Ljava/util/Map;

.field public final mOnFullFrameListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

.field public final mSwJpegForMetaReceivedListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;


# direct methods
.method public static -$$Nest$smcopyRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;I)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iput-object p1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-boolean p2, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    :goto_0
    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iput-object p3, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput p4, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfSwJpegTimeSummationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mSwJpegForMetaReceivedListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mOnFullFrameListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mCaptureQueueListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    return-void
.end method

.method public static checkJpegReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumFailures:I

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v2, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz p0, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumRequests:I

    if-ne p0, v1, :cond_1

    iput-boolean v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mJpegReceived:Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    iget-boolean p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mJpegReceived:Z

    if-nez p0, :cond_2

    iput-boolean v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mJpegReceived:Z

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static discardReceivedImages(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_6
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public static getHandlerMessageId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    shl-int/lit8 v0, v0, 0x10

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    const v1, 0xffff

    and-int/2addr p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public static hasInstanceFailed(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->EXIF_JPEG_NOT_RECEIVED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->notifyShutter()V

    :cond_0
    return-void
.end method

.method public static postShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized cancelAllJobs(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCancelled:Z

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v4}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    shl-int/lit8 v3, v3, 0x10

    const-string v5, "CancelSnapshot"

    invoke-virtual {v4, v3, v5}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    invoke-static {v4}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    iget-boolean v3, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v5, 0x13

    invoke-direct {v4, v5, p0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final cancelCleanup(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/jms/BgJobManager;->cancelJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    :cond_2
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onJobCompleted(I)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mCaptureQueueListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getHandlerMessageId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCancelSet:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final cancelJob(I)V
    .locals 3

    const-string v0, "No job matching "

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez p0, :cond_0

    const-string p0, "McfCaptureRequestRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    shl-int/lit8 p1, p1, 0x10

    const-string v2, "CancelSnapshot"

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCancelled:Z

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V
    .locals 2

    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCompleteSent:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCompleteSent:Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized getBgHandler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/app/AlertController$ButtonHandler;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mBundle:Landroid/os/Bundle;

    const-string v0, "CANCELLED"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getHandlerMessageId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v2

    .line 4
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    int-to-long v5, v2

    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    .line 6
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    .line 7
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/motorola/camera/analytics/AnalyticsHelper;->startShotToShotLogging(Lcom/motorola/camera/ShotType;JI)V

    .line 8
    invoke-static {v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getNextCaptureScene(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v3

    .line 9
    const-class v5, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v5

    .line 10
    :try_start_0
    sget-boolean v6, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sIsFallBackCapture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v5

    .line 11
    invoke-static {v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v5

    .line 12
    new-instance v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 13
    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 14
    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v8, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v8

    const/4 v10, 0x1

    invoke-direct {v7, v2, v10, v8, v4}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    .line 15
    invoke-virtual {v7, v1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 16
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 17
    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 18
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v11, "FOCUS_SUCCESS"

    .line 19
    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 20
    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v12, v13}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 21
    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocusEnabledAndSuccessful()Z

    move-result v12

    const/4 v14, 0x0

    if-nez v12, :cond_1

    invoke-virtual {v2, v11, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v14

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v10

    .line 22
    :goto_1
    invoke-virtual {v8, v11, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    iget-object v2, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "ANALYTICS_IS_CAF"

    .line 24
    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 25
    invoke-virtual {v11, v13}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 26
    invoke-virtual {v11}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocus()Z

    move-result v11

    .line 27
    invoke-virtual {v2, v8, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateExtendedInfo()V

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v2

    xor-int/2addr v2, v10

    .line 30
    iput-boolean v2, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    .line 31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoOn()Z

    move-result v2

    xor-int/2addr v2, v10

    .line 32
    iput-boolean v2, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutterSound:Z

    .line 33
    iput-object v3, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 34
    iput-boolean v5, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    .line 35
    iget-object v2, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v3, "REVIEW_REQUIRED"

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostCaptureReview()Z

    move-result v5

    .line 37
    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->isSlowCaptureExperience(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    iput-boolean v2, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsSlowShot:Z

    .line 39
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;-><init>()V

    .line 40
    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mStartTime:J

    .line 42
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "DETERMINATE_FG_PROCESSING_TIME"

    .line 44
    invoke-virtual {v3, v5, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v10

    goto :goto_2

    :cond_2
    move v3, v14

    .line 45
    :goto_2
    iput-boolean v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isDeterminateFgProcessingShot:Z

    .line 46
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegThumbnailSize()Landroid/util/Size;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mJpegThumbnailSize:Landroid/util/Size;

    .line 47
    iput-boolean v6, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isFallBack:Z

    .line 48
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v5, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v5, v5, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v2, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne v2, v4, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 50
    invoke-static {v7}, Lcom/motorola/camera/saving/SaveImageService;->saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 51
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 53
    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    .line 54
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "DOCUMENT_WIDTH"

    const-string v5, "DOCUMENT_WIDTH"

    .line 55
    invoke-virtual {v2, v5, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 56
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 57
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "DOCUMENT_HEIGHT"

    const-string v5, "DOCUMENT_HEIGHT"

    .line 58
    invoke-virtual {v2, v5, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "DOCUMENT_POINTS"

    const-string v5, "DOCUMENT_POINTS"

    .line 61
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 62
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 63
    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 64
    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SEQ_ID"

    iget-object v4, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 65
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 67
    invoke-virtual {v2, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "REVIEW_REQUIRED"

    .line 68
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostCaptureReview()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 70
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MCF_PROCESSING"

    invoke-virtual {v2, v3, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ON_DOWN_COUNT"

    invoke-virtual {v2, v3, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownCount:I

    .line 72
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ON_DOWN_DURATION"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownDuration:J

    .line 73
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ON_DOWN_JOBS"

    .line 74
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    sget-object v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    .line 76
    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownJobs:I

    .line 77
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 78
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79
    :cond_5
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 80
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIModes(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 81
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->supportShutterAnimationUIForPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 82
    :cond_6
    iget-object v1, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 83
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v2, :cond_7

    .line 84
    const-string v1, "McfCaptureRequestRunnable"

    const-string/jumbo v2, "processForTimeout invalid holder!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 85
    :cond_7
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 86
    sget-object v7, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v7, v7, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    if-eqz v7, :cond_a

    .line 87
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 88
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 89
    sget-object v7, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v7, v7, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    if-eqz v7, :cond_8

    .line 90
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 91
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    :cond_8
    move-wide v6, v4

    :goto_3
    cmp-long v8, v6, v4

    if-gtz v8, :cond_9

    goto :goto_4

    .line 92
    :cond_9
    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 93
    new-instance v11, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;

    const/4 v12, 0x4

    invoke-direct {v11, v1, v12, v0}, Lcom/motorola/camera/shared/OrientationEvent$1$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-static {v8, v1, v11, v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/Runnable;J)V

    .line 94
    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIForNightVisionMode()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 95
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 96
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v2, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;I)V

    .line 97
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getFastCaptureTimeForNVMode()J

    move-result-wide v11

    .line 98
    invoke-static {v6, v1, v7, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/Runnable;J)V

    .line 99
    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->supportShutterAnimationUIForPortraitMode()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 100
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 101
    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v2, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;I)V

    .line 102
    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 103
    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->SHUTTER_ANIMATION_FOR_TF_BOKEH:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v11, v2

    .line 104
    invoke-static {v6, v1, v7, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/Runnable;J)V

    .line 105
    :cond_c
    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 106
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    .line 107
    const-string v2, "SEQ_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-nez v2, :cond_d

    .line 108
    const-string v1, "McfCaptureRequestRunnable"

    const-string v2, "No valid seqId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 110
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    .line 111
    :cond_d
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v7, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v6, :cond_e

    .line 112
    const-string v1, "McfCaptureRequestRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jobHolder for seqId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is NULL"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 114
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    .line 115
    :cond_e
    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 116
    invoke-virtual {v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v7

    invoke-static {v7}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v7

    .line 117
    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 118
    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v8

    .line 119
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    .line 120
    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 121
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 122
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v9

    if-nez v9, :cond_f

    if-eqz v8, :cond_10

    :cond_f
    move v8, v10

    goto :goto_5

    :cond_10
    move v8, v14

    .line 123
    :goto_5
    iget-object v9, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput-boolean v8, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    .line 124
    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 125
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v11

    iget v12, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    monitor-enter v3

    .line 127
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    invoke-direct {v15, v9}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V

    invoke-interface {v3, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v11, v11, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCurrentFsmJobs:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    new-instance v3, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v3}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    const/4 v11, 0x6

    .line 131
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v12

    const/4 v13, -0x1

    const/16 v15, 0x10

    if-eqz v12, :cond_12

    .line 132
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getBokehLevel()F

    move-result v12

    float-to-int v12, v12

    .line 133
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result v16

    if-nez v16, :cond_11

    goto :goto_6

    :cond_11
    move v13, v12

    .line 134
    :goto_6
    invoke-virtual {v3, v13, v14}, Lcom/motorola/camera/mcf/McfParameters;->setDualDepthParameters(IZ)V

    goto :goto_8

    .line 135
    :cond_12
    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 136
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->CUTOUT_DEFAULT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    .line 137
    iget-object v12, v12, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 138
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 139
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result v16

    if-nez v16, :cond_13

    goto :goto_7

    :cond_13
    move v13, v12

    .line 140
    :goto_7
    invoke-virtual {v3, v13, v10}, Lcom/motorola/camera/mcf/McfParameters;->setDualDepthParameters(IZ)V

    .line 141
    :cond_14
    :goto_8
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    .line 142
    iget-object v12, v12, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 143
    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 144
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isContinuousKnifeSwitch()Z

    move-result v13

    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v13, :cond_15

    .line 145
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    div-float v12, v16, v12

    .line 146
    invoke-static {v12, v13}, Lcom/motorola/camera/utility/ZoomHelper;->getUIZoomXMappingManual(FLcom/motorola/camera/settings/CameraType;)F

    move-result v12

    div-float v12, v16, v12

    .line 147
    :cond_15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPzs4XMappingNeeded()Z

    move-result v13

    if-eqz v13, :cond_17

    div-float v12, v16, v12

    .line 148
    sget-object v13, Lcom/motorola/camera/utility/ZoomHelper;->PSZ_4X_RANGE:Landroid/util/Range;

    move-wide/from16 v17, v4

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 149
    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v12

    :cond_16
    div-float v12, v16, v12

    goto :goto_9

    :cond_17
    move-wide/from16 v17, v4

    .line 150
    :goto_9
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v4

    .line 151
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    .line 152
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->m3aMap:Ljava/util/Map;

    .line 153
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 154
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;

    goto :goto_a

    .line 155
    :cond_18
    new-instance v4, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;

    invoke-direct {v4}, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;-><init>()V

    .line 156
    :goto_a
    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseAppShutterControl:Z

    if-eqz v5, :cond_19

    move v5, v14

    goto :goto_b

    .line 157
    :cond_19
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/JsonConfig;->getSnapshotMinInterval(Ljava/lang/String;)I

    move-result v5

    .line 158
    :goto_b
    sget v13, Lcom/motorola/camera/saving/ImageCaptureManager;->mMinShotIntervalSystemProp:I

    if-lez v13, :cond_1b

    .line 159
    sget-boolean v5, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v5, :cond_1a

    .line 160
    const-string v5, "McfCaptureRequestRunnable"

    move/from16 p1, v11

    new-instance v11, Ljava/lang/StringBuilder;

    move/from16 p2, v15

    const-string v15, "Using snapShotInterval="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " from MIN_SHOT_INTERVAL system prop"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_1a
    move/from16 p1, v11

    move/from16 p2, v15

    :goto_c
    move v5, v13

    goto :goto_d

    :cond_1b
    move/from16 p1, v11

    move/from16 p2, v15

    .line 161
    :goto_d
    const-string v11, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {v1, v11, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 162
    const-string v13, "CAPTURE_AUTO_CAPTURE_REF_TIME"

    move v15, v11

    const-wide/16 v10, -0x1

    move/from16 v19, v15

    invoke-virtual {v1, v13, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 163
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 164
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    .line 165
    iget-object v13, v13, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 166
    check-cast v13, Landroid/util/Size;

    .line 167
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v20

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v13

    mul-int v13, v13, v20

    move-wide/from16 v20, v10

    .line 168
    sget-object v10, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 169
    sget-object v11, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PIC_RES_LIMIT:Lcom/motorola/camera/AppFeatures$Feature;

    const v22, 0x7fffffff

    .line 170
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 171
    invoke-virtual {v10, v11, v0}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v13, v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_e

    :cond_1c
    move-wide/from16 v20, v10

    :cond_1d
    const/4 v0, 0x0

    .line 172
    :goto_e
    const-string v10, "FOCUS_TIMEOUT"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 173
    iget-object v11, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v11, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    if-eqz v11, :cond_1f

    .line 174
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashTorchModeEnable()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v11

    if-eqz v11, :cond_1e

    goto :goto_f

    :cond_1e
    const/4 v11, 0x1

    goto :goto_10

    :cond_1f
    :goto_f
    const/4 v11, 0x0

    .line 175
    :goto_10
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v13

    iget-object v13, v13, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    move/from16 v22, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 176
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 177
    invoke-static {v5}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/IqConfigManager$ZslSetting;

    goto :goto_11

    :cond_20
    const/4 v5, 0x0

    :goto_11
    if-nez v5, :cond_21

    .line 178
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    const-string v13, "default"

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 179
    invoke-static {v5}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/IqConfigManager$ZslSetting;

    :cond_21
    if-eqz v5, :cond_23

    .line 180
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v13

    if-eqz v13, :cond_22

    .line 181
    iget-boolean v5, v5, Lcom/motorola/camera/IqConfigManager$ZslSetting;->frontCameraUseZsl:Z

    goto :goto_12

    :cond_22
    iget-boolean v5, v5, Lcom/motorola/camera/IqConfigManager$ZslSetting;->useZsl:Z

    :goto_12
    if-nez v11, :cond_23

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    goto :goto_13

    :cond_23
    const/4 v5, 0x0

    :goto_13
    if-nez v5, :cond_24

    .line 182
    sget-boolean v13, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v13, :cond_24

    .line 183
    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 184
    invoke-virtual {v13}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v13

    move-wide/from16 v23, v14

    sget-object v14, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 185
    invoke-virtual {v13, v14}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_14

    :cond_24
    move-wide/from16 v23, v14

    .line 186
    :goto_14
    const-string v13, "ON_DOWN"

    invoke-virtual {v1, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/motorola/camera/SensorTime;->convertTime(J)J

    move-result-wide v13

    .line 187
    const-string v15, "ON_UP"

    invoke-virtual {v1, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    move v15, v7

    move/from16 v27, v8

    invoke-static/range {v25 .. v26}, Lcom/motorola/camera/SensorTime;->convertTime(J)J

    move-result-wide v7

    move/from16 v25, v15

    .line 188
    iget-object v15, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-object/from16 v26, v4

    move/from16 v28, v5

    iget-wide v4, v15, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    .line 189
    sget-object v15, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v15

    .line 190
    iget-object v15, v15, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 191
    check-cast v15, Landroid/util/Size;

    move-wide/from16 v29, v4

    .line 192
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v4

    .line 193
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getThumbnailJpegQuality()I

    move-result v5

    .line 194
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result v31

    if-eqz v31, :cond_25

    move/from16 v31, v5

    .line 195
    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    move/from16 v32, v4

    .line 196
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->SENSOR_RATIO_SAME_TO_PREVIEW:Lcom/motorola/camera/AppFeatures$Feature;

    .line 197
    iget-object v5, v5, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v5, Ljava/util/EnumSet;

    .line 198
    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    goto :goto_15

    :cond_25
    move/from16 v32, v4

    move/from16 v31, v5

    :cond_26
    const/4 v4, 0x0

    .line 199
    :goto_15
    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    shl-int/lit8 v2, v2, 0x10

    .line 200
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 201
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 202
    check-cast v5, Ljava/lang/String;

    move/from16 v33, v4

    .line 203
    iget-boolean v4, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isFallBack:Z

    .line 204
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result v34

    if-eqz v34, :cond_28

    .line 205
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostProcSupported()Z

    move-result v34

    if-eqz v34, :cond_28

    move/from16 v34, v4

    .line 206
    iget-object v4, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    .line 207
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    move-object/from16 v35, v5

    .line 208
    sget-object v5, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    if-eq v4, v5, :cond_27

    .line 209
    invoke-static {v15, v4}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocPictureSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v15

    .line 210
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->getPhotoScaleSizes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    goto :goto_17

    :cond_27
    :goto_16
    move/from16 v4, v33

    goto :goto_17

    :cond_28
    move/from16 v34, v4

    move-object/from16 v35, v5

    goto :goto_16

    .line 211
    :goto_17
    const-string v5, "TOUCH_DOWN_EV_LIST"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/16 v33, 0x2

    if-eqz v5, :cond_2b

    move-object/from16 v36, v15

    .line 212
    sget-object v15, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v15, v15, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastFrameScenes:Ljava/util/HashSet;

    move/from16 v37, v4

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 213
    iget-object v4, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    .line 214
    const-string v4, "McfCaptureRequestRunnable"

    const-string v5, "evList scene changed!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 215
    :cond_29
    iget-object v4, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput-object v5, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    .line 216
    sget-boolean v4, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v4, :cond_2a

    .line 217
    const-string v4, "McfCaptureRequestRunnable"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v38, v5

    const-string/jumbo v5, "set touchdown evList:"

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v38 .. v38}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " captureScene:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2a
    :goto_18
    const-string v4, "TOUCH_DOWN_EV_LIST"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 219
    iget-object v1, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mForceEvList:Z

    goto :goto_19

    :cond_2b
    move/from16 v37, v4

    move-object/from16 v36, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 220
    const-string v15, "TOUCH_DOWN_EV_LIST_EXCLUDE_LUX"

    invoke-virtual {v1, v15}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 221
    iget-object v1, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    .line 222
    iput-boolean v4, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mForceEvList:Z

    .line 223
    sget-boolean v1, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v1, :cond_2c

    .line 224
    const-string v1, "McfCaptureRequestRunnable"

    const-string v4, "evList exclude lux"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    move/from16 v1, v33

    goto :goto_1a

    .line 225
    :cond_2d
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastFrameScenes:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 226
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTouchDownFrameCollection()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 227
    invoke-static {v9}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getSceneParams(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 228
    iget-object v4, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    check-cast v1, [I

    iput-object v1, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    const/4 v15, 0x1

    .line 229
    iput-boolean v15, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mForceEvList:Z

    .line 230
    sget-boolean v4, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v4, :cond_2e

    .line 231
    const-string v4, "McfCaptureRequestRunnable"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "set recent evList:"

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " captureScene:"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_19
    const/4 v1, 0x0

    .line 232
    :goto_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitMode()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 233
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_STATES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 234
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 235
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    goto :goto_1b

    :cond_2f
    const/4 v5, 0x0

    .line 236
    :goto_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    .line 237
    sget-object v15, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v15, v15, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUhdrCameraModes:Ljava/util/HashSet;

    invoke-static {v4}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 238
    invoke-static/range {v33 .. v33}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/16 v33, 0xc

    .line 239
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v15

    move/from16 v38, v1

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_SUPPORT_OFFLINE_POSTPROC_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v15, v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    .line 240
    invoke-virtual {v4, v1}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 241
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_1d

    :cond_30
    :goto_1c
    move/from16 v42, v0

    move/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v39, v5

    move-object/from16 v50, v6

    move-wide/from16 v44, v7

    move/from16 v41, v10

    move/from16 v40, v11

    move/from16 v43, v12

    move-wide/from16 v46, v13

    goto/16 :goto_25

    .line 242
    :cond_31
    :goto_1d
    const-string v1, "ai_group_photo"

    const-string/jumbo v4, "tilt-shift"

    const-string v15, "motion_capture"

    move-object/from16 v39, v5

    const-string/jumbo v5, "super_portrait"

    move/from16 v40, v11

    const-string/jumbo v11, "super_night"

    move/from16 v41, v10

    const-string/jumbo v10, "qcfa_high_resolution"

    move/from16 v42, v0

    const-string/jumbo v0, "ultra_resolution_hw_remosaic"

    move/from16 v43, v12

    const-string/jumbo v12, "ultra_resolution"

    move-wide/from16 v44, v7

    const-string v7, "auto_ultra_resolution"

    const-string/jumbo v8, "single_bokeh_with_nv"

    move-wide/from16 v46, v13

    const-string/jumbo v13, "single_bokeh"

    const-string/jumbo v14, "spot_color"

    move/from16 v48, v2

    const-string v2, "bokeh"

    move-object/from16 v49, v3

    const-string v3, "flash"

    move-object/from16 v50, v6

    const-string v6, "auto_super_night"

    move-object/from16 v51, v1

    const-string v1, "default_cam_type"

    move-object/from16 v52, v1

    const-string v1, "default_mode"

    move-object/from16 v53, v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 243
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSATFallbackSupported()Z

    move-result v54

    if-eqz v54, :cond_32

    move-object/from16 v54, v4

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v4, :cond_33

    .line 244
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v4, :cond_33

    .line 245
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 246
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    .line 247
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    .line 248
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    goto :goto_1e

    :cond_32
    move-object/from16 v54, v4

    .line 249
    :cond_33
    :goto_1e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v55, v1

    .line 250
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mUhdrSettingsAdvanced:Ljava/util/HashMap;

    move-object/from16 v56, v4

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    move-object/from16 v4, v52

    goto :goto_1f

    :cond_34
    move-object/from16 v4, v56

    .line 251
    :goto_1f
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mUhdrSettingsAdvanced:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_35

    :goto_20
    const/4 v11, 0x0

    goto/16 :goto_24

    .line 252
    :cond_35
    invoke-virtual {v9}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 253
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 254
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 255
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    :goto_21
    move-object/from16 v0, v53

    goto/16 :goto_23

    :cond_36
    if-eqz v40, :cond_38

    .line 256
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 257
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 258
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_21

    :cond_37
    move-object/from16 v0, v53

    goto/16 :goto_22

    .line 259
    :cond_38
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 260
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 261
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 262
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_21

    .line 263
    :cond_39
    invoke-static/range {v33 .. v33}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 264
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 265
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 266
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_21

    :cond_3a
    const/16 v2, 0x12

    .line 267
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 268
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 269
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 270
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 271
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_3b

    .line 272
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 273
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 274
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_21

    .line 275
    :cond_3b
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 276
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    .line 277
    :cond_3c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 278
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 279
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 280
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    :cond_3d
    const/16 v2, 0x23

    .line 281
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 282
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 283
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v2, :cond_3e

    .line 284
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/QcfaShotGuardRunnable;->isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 285
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 286
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 287
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    .line 288
    :cond_3e
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 289
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    .line 290
    :cond_3f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 291
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 292
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 293
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    .line 294
    :cond_40
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 295
    const-string v0, "cutout"

    .line 296
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 297
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    .line 298
    :cond_41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 299
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 300
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    .line 301
    :cond_42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 302
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 303
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    .line 304
    :cond_43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableMotionCapture()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 305
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 306
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 307
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    .line 308
    :cond_44
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTiltShiftMode()Z

    move-result v0

    if-eqz v0, :cond_45

    move-object/from16 v0, v54

    .line 309
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 310
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 311
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    .line 312
    :cond_45
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiGroupPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_46

    move-object/from16 v0, v51

    .line 313
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 314
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 315
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_21

    :cond_46
    move-object/from16 v0, v53

    .line 316
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 317
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 318
    invoke-static {v9, v1}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_23

    :cond_47
    :goto_22
    const/4 v13, 0x0

    :goto_23
    if-nez v13, :cond_48

    .line 319
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mUhdrSettingsAdvanced:Ljava/util/HashMap;

    move-object/from16 v2, v52

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_48

    .line 320
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 321
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 322
    invoke-static {v9, v0}, Lcom/motorola/camera/IqConfigManager;->getUseUhdrForSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v13

    :cond_48
    if-nez v13, :cond_49

    goto/16 :goto_20

    .line 323
    :cond_49
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :goto_24
    if-eqz v11, :cond_4b

    .line 324
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v0

    if-nez v0, :cond_4b

    const/4 v11, 0x1

    goto :goto_26

    :cond_4a
    move/from16 v38, v1

    const/16 v33, 0xc

    goto/16 :goto_1c

    :cond_4b
    :goto_25
    const/4 v11, 0x0

    :goto_26
    if-eqz v11, :cond_4c

    .line 325
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->UHDR_DEBUG:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    .line 326
    const-string/jumbo v1, "vendor.debug.camera.disableuhdr"

    .line 327
    iget-boolean v0, v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    .line 328
    invoke-static {v1, v0}, Lcom/motorola/camera/shared/SystemSetting;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4c

    const/4 v11, 0x1

    goto :goto_27

    :cond_4c
    const/4 v11, 0x0

    .line 329
    :goto_27
    sget-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sMoonChooseScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 330
    sget-boolean v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sIsOutDoorScene:Z

    move-object/from16 v6, v50

    .line 331
    iget-object v2, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    goto :goto_28

    :cond_4d
    const/4 v2, 0x0

    :goto_28
    if-nez v2, :cond_4e

    or-int v2, v2, v38

    .line 332
    :cond_4e
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_4f

    .line 333
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 334
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_MCF_TO_ON_DEMAND_LAG:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 335
    const-string v3, "SHOT_MCF_TO_ON_DEMAND_LAG"

    move/from16 v4, v33

    invoke-static {v4, v3}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(ILjava/lang/String;)V

    .line 336
    :cond_4f
    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    .line 337
    const-string v4, "\""

    move-object/from16 v5, v49

    iget-boolean v6, v5, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    if-nez v6, :cond_50

    .line 338
    iget-object v6, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_50
    const/4 v6, 0x0

    .line 339
    iput-boolean v6, v5, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 340
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "{\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, "DoSnapshot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, "\":{\"jobId\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v8, v48

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"touchDownTime\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-wide/from16 v12, v46

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"touchUpTime\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-wide/from16 v12, v44

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 348
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"sceneMode\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"zoomRatio\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v12, v43

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 352
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"bgServiceEnabled\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v8, v42

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 354
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"focusTimeout\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v8, v41

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 356
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"useZsl\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v8, v28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 358
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"isFlash\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v8, v40

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 360
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"javaCaptureRecordTimestamp\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-wide/from16 v8, v29

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 362
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"jpegWidth\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual/range {v36 .. v36}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"jpegHeight\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual/range {v36 .. v36}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"imageJpegQuality\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v8, v32

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"thumbJpegQuality\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v8, v31

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ", \"aiScene\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-object/from16 v8, v35

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, "\", \"isFallBack\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v8, v34

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v7, v26

    .line 374
    iget-object v8, v7, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mExposureTime:Ljava/lang/Long;

    iget-object v9, v7, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mLensFocusDistance:Ljava/lang/Float;

    iget-object v10, v7, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mIso100Gain:Ljava/lang/Float;

    iget-object v12, v7, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mBoost:Ljava/lang/Integer;

    iget-object v13, v7, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mSensitivity:Ljava/lang/Integer;

    if-eqz v8, :cond_51

    .line 375
    iget-object v8, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v14, ",\"expTime\":"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v8, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/motorola/camera/mcf/McfParameters$Mcf3aParams;->mExposureTime:Ljava/lang/Long;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_51
    if-eqz v13, :cond_52

    .line 377
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"sensitivity\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_52
    if-eqz v12, :cond_53

    .line 379
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"boost\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_53
    if-eqz v10, :cond_54

    .line 381
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"iso100gain\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_54
    if-eqz v9, :cond_55

    .line 383
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"focusDistance\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    :cond_55
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"orientation\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v15, v25

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"frontMirror\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v14, v27

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_56

    .line 389
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"autoCaptureType\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v15, v19

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    cmp-long v7, v23, v17

    if-eqz v7, :cond_56

    cmp-long v7, v23, v20

    if-eqz v7, :cond_56

    .line 391
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"autoCaptureRefTimestampNs\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-wide/from16 v8, v23

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_56
    if-eqz v39, :cond_57

    .line 393
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"rtBokehState\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move-object/from16 v8, v39

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    :cond_57
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"doUltraHDR\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 397
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v8, ",\"moonSceneMode\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v7, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v4, ",\"isOutDoorScene\":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 401
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"fastFrameState\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"snapshotInterval\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v13, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"finalJpegSizeBasedOnInput\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5a

    .line 407
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ",\"touchDownEvList\": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v14, v6

    .line 408
    :goto_29
    array-length v0, v3

    if-ge v14, v0, :cond_59

    .line 409
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    aget v1, v3, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    array-length v0, v3

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    if-ge v14, v0, :cond_58

    .line 411
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    add-int/lit8 v14, v14, 0x1

    goto :goto_29

    .line 412
    :cond_59
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_5a
    iget-object v0, v5, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_5b

    .line 415
    const-string v0, "McfCaptureRequestRunnable"

    const-string v1, "bgHandler is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    .line 416
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 417
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_5b
    move-object/from16 v1, p0

    .line 418
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mCaptureQueueListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    const-class v4, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v4

    .line 419
    :try_start_2
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 420
    iget-object v6, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 421
    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2a

    :catchall_0
    move-exception v0

    goto :goto_2b

    .line 422
    :cond_5c
    :goto_2a
    monitor-exit v4

    .line 423
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v2

    .line 424
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCancelSet:Ljava/util/HashSet;

    .line 425
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mOnFullFrameListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-static {v1, v0}, Lcom/motorola/camera/mcf/Mcf;->setFullFrameListener(Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;Landroid/os/Handler;)V

    .line 427
    invoke-static {v5}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    return-void

    .line 428
    :goto_2b
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 429
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 430
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
