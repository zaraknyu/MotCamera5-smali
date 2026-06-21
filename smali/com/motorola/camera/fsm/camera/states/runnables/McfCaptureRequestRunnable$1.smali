.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    return-void
.end method


# virtual methods
.method public final dequeueImageForReprocess(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Image;
    .locals 3

    const-string p0, "No mImageWriter for reprocessCameraId="

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->getReprocessCameraId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object p2, p2, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p0, "ImageCaptureManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "No writerHolder for reprocessCameraId="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p2, p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    if-nez p2, :cond_1

    const-string p2, "ImageCaptureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enqueueImageForReprocess(Ljava/lang/String;Ljava/lang/String;Landroid/media/Image;)V
    .locals 1

    const-string p0, "No mImageWriter for reprocessCameraId="

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->getReprocessCameraId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object p2, p2, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    if-nez p2, :cond_0

    const-string p0, "ImageCaptureManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No writerHolder for reprocessCameraId="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    if-nez p2, :cond_1

    const-string p2, "ImageCaptureManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAuxiliaryData(Lcom/motorola/camera/mcf/McfAuxiliaryData;)V
    .locals 9

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfAuxFrameData;

    sget-object v3, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/mcf/McfDepthRender;

    const/16 v5, 0x100

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v7

    :try_start_0
    invoke-static {v7}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {v8, v1, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    invoke-virtual {v8, v3, v4}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget v1, v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-static {v1, v7, v6, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->-$$Nest$smcopyRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;I)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v1

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v7, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v3, v7, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->POSTCAPFRAME:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfAuxFrameData;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p0

    invoke-virtual {p0, v2, v1, v4}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onPostViewFrame(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/McfAuxFrameData;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIModes(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v3, :cond_2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "null McfJobHolder for seqId: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "McfCaptureRequestRunnable"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p0

    invoke-virtual {p0, v2, v1, v4}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onPostViewFrame(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/McfAuxFrameData;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p0

    invoke-virtual {p0, v2, v1, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onPostViewFrame(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/McfAuxFrameData;Landroid/os/Bundle;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "PostView Update"

    invoke-static {p0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_3
    :goto_1
    sget-object p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfAuxBinData;->getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {v3, p0, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    iget p0, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-static {p0, v2, v6, v0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->-$$Nest$smcopyRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;I)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v2, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    :cond_4
    :goto_2
    sget-object p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DOCUMENT_DATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfAuxBmpData;

    return-void
.end method

.method public final onFullFrameRequest(Ljava/lang/String;[Lcom/motorola/camera/mcf/McfInstanceIdentifier;[Lcom/motorola/camera/mcf/McfMetadata;)V
    .locals 12

    array-length v0, p2

    const-string v1, "McfCaptureRequestRunnable"

    if-nez v0, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string p0, "Missing mcf identifiers"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_MCF_TO_ON_DEMAND_LAG:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    const-string v0, "SHOT_MCF_TO_ON_DEMAND_LAG"

    const/16 v2, 0xc

    invoke-static {v2, v0}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-static {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/Mcf$FrameTarget;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object p0, v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    if-nez v0, :cond_3

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No job matching "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_3
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    aget-object v6, p2, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-nez v11, :cond_4

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "No request matching "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p2, v2

    iget p2, p2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_4
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v7

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$InstanceType;Ljava/util/List;Ljava/util/ArrayList;Landroid/os/Handler;)V

    iget-object p1, v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p2, 0x0

    invoke-virtual {v3, p1, p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    iget-object p0, v11, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mCreateRequestList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onJpegData(Lcom/motorola/camera/mcf/McfInstanceIdentifier;[B[BLcom/motorola/camera/mcf/Mcf$ShotSlot;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfSwJpegTimeSummationMap:Ljava/util/Map;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    if-lez v2, :cond_0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p10}, Ljava/lang/Integer;->intValue()I

    move-result p10

    add-int/2addr p10, v3

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    if-eqz v2, :cond_1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {p10}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p10

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_JPEG_ENCODING_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3, p10}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V

    iget p10, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    invoke-interface {v0, p10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v2, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p10

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v2, p10, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-eqz v0, :cond_9

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    iput-object p7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSwJpegRequestSeq:Ljava/lang/Integer;

    :try_start_0
    invoke-static {p10}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p7
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const/16 v3, 0x100

    invoke-static {p7, p10, v1, v0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->-$$Nest$smcopyRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;I)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p7

    invoke-static {p7}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    :goto_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-nez v0, :cond_3

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;-><init>(Lcom/motorola/camera/mcf/Mcf$InstanceType;)V

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mSoftJpegRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;

    invoke-direct {p1}, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;-><init>()V

    iget-object v1, p7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-static {p2, p5, p6, v1, p3}, Lcom/motorola/camera/utility/ExifUtility;->appendExifToJpeg([BLandroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/String;[B)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p1, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mJpegData:Ljava/nio/ByteBuffer;

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mWidth:I

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mHeight:I

    iget-boolean p2, p7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz p2, :cond_5

    iget-object p2, p7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    if-eqz p2, :cond_4

    sget-object p3, Lcom/motorola/camera/mcf/McfMetadata;->MOTO_MAKERNOTE_BYTE_DATA:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {p6, p3}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    iput-object p3, p2, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    iget-object p2, p7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    sget-object p3, Lcom/motorola/camera/mcf/McfMetadata;->MOTO_APPX_BYTE_DATA:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {p6, p3}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    iput-object p3, p2, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    goto :goto_3

    :cond_4
    sget-object p2, Lcom/motorola/camera/mcf/McfMetadata;->MOTO_MAKERNOTE_BYTE_DATA:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {p6, p2}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegMakerNote:[B

    sget-object p2, Lcom/motorola/camera/mcf/McfMetadata;->MOTO_APPX_BYTE_DATA:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {p6, p2}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegAppX:[B

    :cond_5
    :goto_3
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p5, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_4

    :cond_6
    const-wide/16 p2, 0x0

    :goto_4
    iput-wide p2, p1, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    iput-object p5, p1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object p4, p1, Lcom/motorola/camera/saving/CaptureHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p10, p1, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p2, p7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p10, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkJpegReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz p1, :cond_7

    iget-object p1, p7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    if-eqz p1, :cond_8

    :cond_7
    invoke-virtual {p0, p10}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    :cond_8
    return-void

    :cond_9
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No job matching "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "McfCaptureRequestRunnable"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onProcessTimeEstimate(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;)V
    .locals 2

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    iget v1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p1, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/LinkedHashMap;

    iget p1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget p2, p2, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTotalTimeEst:I

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;->mTimeEstimate:J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIForNightVisionMode()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL_ONDEMAND:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-wide p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;->mTimeEstimate:J

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onCaptureEstimate(J)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public final onProgressIndication(Lcom/motorola/camera/mcf/Mcf$ProgressType;Lcom/motorola/camera/mcf/McfInstanceIdentifier;)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v3

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sget-object v7, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_MCF_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v6, v11, :cond_3

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_2

    const/16 v12, 0x10

    if-eq v6, v12, :cond_2

    const/16 v12, 0x11

    if-eq v6, v12, :cond_1

    iget v6, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v12, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v12, v12, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    iget-object v13, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/LinkedHashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;

    iget-object v12, v12, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;->mProgressList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eq v12, v8, :cond_0

    goto :goto_0

    :cond_0
    sget-object v12, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v12, v5, :cond_3

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPhotoSolidDataManager:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-boolean v5, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_0

    :cond_2
    iget v6, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    new-instance v6, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;

    iget-object v12, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v12}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;-><init>(Lcom/motorola/camera/mcf/Mcf$InstanceType;)V

    iget-object v12, v6, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;->mProgressList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/LinkedHashMap;

    iget-object v12, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v12, v12, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v6, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    if-ne v1, v0, :cond_12

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    iget v1, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onJobCompleted(I)V

    return-void

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No job matching "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfCaptureRequestRunnable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_5
    iget-object v6, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    iget v12, v1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-eqz v12, :cond_6

    iget-object v12, v12, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mProgressTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eq v12, v10, :cond_14

    const/4 v10, 0x0

    if-eq v12, v9, :cond_13

    if-eq v12, v8, :cond_c

    const/16 v8, 0xb

    if-eq v12, v8, :cond_c

    const/16 v8, 0xc

    if-eq v12, v8, :cond_c

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "TAG"

    if-eqz v0, :cond_8

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-eqz v0, :cond_7

    iget v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumRequests:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumRequests:I

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Mcf request holder for instance={"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string v0, "Missing mcf request holder"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-nez v0, :cond_9

    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    return-void

    :cond_9
    :try_start_0
    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const/16 v3, 0x100

    invoke-static {v0, v2, v10, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->-$$Nest$smcopyRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;I)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    :goto_1
    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessInForeground:Z

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_APP_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_a
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-static {v0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->supportShutterAnimationUIForPortraitMode()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    goto/16 :goto_2

    :pswitch_2
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/mcf/Mcf$InstanceType;I)V

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    iput-boolean v11, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    iget v3, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_2

    :cond_b
    new-instance v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mAlgoContext:Ljava/lang/String;

    iput-object v3, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTransferData:Lcom/motorola/camera/shared/PostProcTransferData;

    iput-boolean v10, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsTransferToJms:Z

    iput-boolean v10, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsForegroundService:Z

    iput-object v3, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTaskId:Lcom/motorola/camera/background/common/TaskId;

    iput-object v3, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string/jumbo v4, "randomUUID(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "randomUUID"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-static {v3, v4, v5, v10}, Lkotlin/text/StringsKt__StringsJVMKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    sget-object v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v12, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->SAVE_IMAGE_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v3, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v4, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    new-instance v11, Lcom/motorola/camera/background/common/TaskId;

    iget v4, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v13, v4

    const/16 v20, 0x0

    const/16 v19, 0x0

    const-string v21, "app_context_bg_bound_job"

    move/from16 v17, v12

    move/from16 v18, v3

    invoke-direct/range {v11 .. v21}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    iput-boolean v10, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsTransferToJms:Z

    iput-object v11, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTaskId:Lcom/motorola/camera/background/common/TaskId;

    iput-object v2, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    :pswitch_3
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;

    invoke-direct {v6, v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;I)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    invoke-virtual {v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    if-eq v1, v0, :cond_e

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    if-ne v6, v0, :cond_10

    :cond_e
    sget-boolean v6, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v6, :cond_f

    sget-object v8, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL_ONDEMAND:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v3, v8, :cond_f

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v8, v9}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_f
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v8, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FRAME_COLLECTION_DONE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    if-eqz v6, :cond_10

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL_ONDEMAND:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v3, v4, :cond_10

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_MCF_PROCESS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_10
    iget-boolean v3, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    if-eqz v3, :cond_12

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    if-eq v3, v0, :cond_11

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    if-eq v3, v0, :cond_11

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    if-eq v3, v0, :cond_11

    if-ne v1, v0, :cond_12

    :cond_11
    invoke-static {v2}, Lcom/motorola/camera/jms/BgJobManager;->cancelJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput-boolean v10, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    :cond_12
    :goto_2
    return-void

    :cond_13
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/mcf/Mcf$InstanceType;I)V

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void

    :cond_14
    iput-boolean v11, v5, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    invoke-virtual {v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final onReprocessRequest(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/camera/mcf/Mcf$FrameTarget;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;)V
    .locals 14

    move/from16 v10, p3

    move-object/from16 v4, p4

    move-object/from16 v9, p5

    move-object/from16 v0, p6

    invoke-static {v0, v9, v4}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/Mcf$FrameTarget;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v12, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v3, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const-string v5, "McfCaptureRequestRunnable"

    if-nez v2, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No job matching "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v12, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_0
    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-nez v13, :cond_1

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No request matching "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v12, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_1
    iput-object v9, v13, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput v10, v13, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v0, v4, :cond_2

    iget v3, v13, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumRequests:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v13, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumRequests:I

    :cond_2
    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;

    invoke-direct {v8, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;-><init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v0, v4, :cond_5

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v0, v3, :cond_6

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v3, :cond_5

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v5, v3, :cond_4

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->ZSL_DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v5, v3, :cond_4

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne v5, v3, :cond_5

    :cond_4
    sget-object v3, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfDepthRender;

    if-eqz v0, :cond_5

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v3, v3, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfDepthRender;->getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    if-ne v3, v0, :cond_5

    goto :goto_1

    :catch_0
    :cond_5
    :goto_0
    move-object/from16 v5, p8

    goto :goto_3

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    move-object/from16 v5, p8

    invoke-virtual {v3, v1, v10, v9, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onJpegReprocRequest(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ILcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfMetadata;)V

    goto :goto_2

    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getReprocessCameraId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$FrameTarget;Lcom/motorola/camera/mcf/McfMetadata;Ljava/util/ArrayList;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;Lcom/motorola/camera/mcf/Mcf$ShotSlot;ILandroid/os/Handler;)V

    iget-object p0, v13, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mCreateRequestList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, v12, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final onTransferToJMS(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;Lcom/motorola/camera/shared/PostProcTransferData;)V
    .locals 3

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v1, v1, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    iget v2, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    if-eqz v1, :cond_0

    iput-object p2, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mAlgoContext:Ljava/lang/String;

    iput-object p3, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTransferData:Lcom/motorola/camera/shared/PostProcTransferData;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget p3, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget p2, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mJpegReceived:Z

    :cond_1
    return-void
.end method
