.class public Lcom/motorola/camera/jms/BgJobManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBgJobHolderMap:Ljava/util/Map;

.field public final mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final mTransferJobListener:Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/motorola/camera/jms/BgJobManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/jms/BgJobManager$1;-><init>(Lcom/motorola/camera/jms/BgJobManager;)V

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobManager;->mTransferJobListener:Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;

    sget-object p0, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJobListener:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static cancelJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Lcom/motorola/camera/jms/BgJobManager;->removeJob(I)Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    :cond_0
    return-void
.end method

.method public static getPendingJobs()Ljava/util/HashSet;
    .locals 3

    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static processBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    iget v2, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    iget v2, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v3, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessInForeground:Z

    iput-boolean v2, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsForegroundService:Z

    iput-object p0, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsTransferToJms:Z

    if-nez p0, :cond_0

    iget-object p0, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTaskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-static {p1, v1, p0}, Lcom/motorola/camera/jms/BgJobTransferService;->processBgJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;Lcom/motorola/camera/background/common/TaskId;)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsTransferToJms:Z

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

    :cond_1
    const-string v0, "BgJobManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No information is found for Job SeqId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Normal shot will be saved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/camera/jms/BgJobManager;->cancelJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    return-void

    :cond_2
    const-string v0, "BgJobManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing background job Not ready for transfer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "Normal shot will be saved"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    return-void
.end method

.method public static removeJob(I)Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;
    .locals 2

    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;

    invoke-interface {v1}, Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;->onQueueEmpty()V

    goto :goto_0

    :cond_0
    return-object p0
.end method
