.class public final synthetic Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/BootReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 1
    const/16 p1, 0x9

    iput p1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p3, Lkotlin/jvm/internal/Lambda;

    iput-object p3, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    return-void
.end method

.method private final run$com$motorola$camera$jms$BgJobTransferService$$ExternalSyntheticLambda2()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    iget-object v2, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/motorola/camera/background/common/TaskId;

    iget-boolean v0, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsForegroundService:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    sget-object v4, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iget-object v5, v4, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v0, v4, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v7, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v5

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v4, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v7, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/motorola/camera/jms/BgJobTransferService;->incJobRefCount(Ljava/lang/Long;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v7, Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v5

    const-string v7, "CameraForegroundProcessingService.EXTRA_ALGO_CONTEXT"

    iget-object v8, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mAlgoContext:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v7, "CameraForegroundProcessingService.EXTRA_TASK_ID"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    :try_start_1
    iget-wide v7, v6, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-object v11, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    sget-object v12, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v12, v12, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v12, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v6, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-object v8, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTransferData:Lcom/motorola/camera/shared/PostProcTransferData;

    invoke-static {v6, v7, v8}, Lcom/motorola/camera/shared/PostProcTransferData;->savePostProcTransferDataForForegroundProcessing(JLcom/motorola/camera/shared/PostProcTransferData;)V

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v7, "USE_EXTENDED_TIMEOUT"

    invoke-virtual {v6, v7, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v10, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v0, v0

    invoke-static {v0, v1, v3, v10}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "BgJobTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "transferToForegroundProcessing exception for seq ID"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ERROR_TYPE"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ERROR_MSG"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v5, v0

    invoke-static {v5, v6, v9, v1}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V

    :cond_2
    :goto_2
    iget-object v1, v4, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2
    iget-object v0, v4, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->run()V

    iput-object v10, v4, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    monitor-exit v1

    goto/16 :goto_f

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    sget-object v11, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    iget-object v4, v11, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v0, v11, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v5, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    monitor-exit v4

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :cond_5
    iget-object v0, v11, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v5, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget v0, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/motorola/camera/jms/BgJobTransferService;->incJobRefCount(Ljava/lang/Long;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget v7, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/motorola/camera/jms/BgJobTransferService;->saveCaptureData(Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4, v9}, Lcom/motorola/camera/service/JmsServiceInterface;->startAndBindJMSSync(Z)V

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_6
    :goto_6
    invoke-virtual {v4}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v0, :cond_c

    :try_start_7
    iget-object v0, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->getPid()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_8
    const-string v7, "BgJobTransferService"

    const-string v8, "Process Manager Service getPid exception: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_7
    :try_start_9
    sget-object v0, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    iget-object v7, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    iget v8, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceClientId:I

    invoke-interface {v7, v8, v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->setPriority(ILcom/motorola/camera/background/common/Priority;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_8

    :catch_3
    move-exception v0

    :try_start_a
    const-string v7, "BgJobTransferService"

    const-string v8, "Process Manager Service setPriority exception: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    iget-object v0, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/16 v7, 0x30

    if-ne v0, v7, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v4}, Lcom/motorola/camera/service/JmsServiceInterface;->getExpeditedJobAvailableAndMarkUsed()Z

    move-result v3

    :goto_9
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mAlgoContext:Ljava/lang/String;

    sget-object v7, Lcom/motorola/camera/background/common/Priority;->NORMAL:Lcom/motorola/camera/background/common/Priority;

    const-string v8, "appContext"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "algContext"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    invoke-direct {v8, v0, v5, v7, v3}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;Z)V

    sget-object v0, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;

    invoke-virtual {v3}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v3, v8}, Lkotlinx/serialization/json/Json$Default;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    if-eqz v0, :cond_9

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string/jumbo v5, "task_id"

    invoke-virtual {v3, v5, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->addBgRecord(Lcom/motorola/camera/CameraData;)V

    :cond_8
    iget-wide v12, v6, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-object v0, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTransferData:Lcom/motorola/camera/shared/PostProcTransferData;

    invoke-static {v12, v13, v0}, Lcom/motorola/camera/shared/PostProcTransferData;->savePostProcTransferDataForForegroundProcessing(JLcom/motorola/camera/shared/PostProcTransferData;)V

    iget-object v0, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Lcom/motorola/camera/background/service/jms/IJobMgrService;

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/IJobMgrService;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v3

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v4, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v7, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object v5, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v3 .. v8}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, v10

    :goto_a
    if-eqz v0, :cond_b

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne v0, v1, :cond_a

    iget-object v0, v11, Lcom/motorola/camera/jms/BgJobTransferService;->mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/SimpleWatchDog;->reset()V

    goto/16 :goto_d

    :cond_a
    const-string v0, "BgJobTransferService"

    const-string v1, "Jms Can not process Job"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Jms can not process Job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v0, "BgJobTransferService"

    const-string v1, "JobMgrService is null. Probably killed by lowmemorykiller"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Jms is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Unable to send JMS message (transferToJMS) "

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    const-string v1, "BgJobTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Process Manager Service processJob exception: for seq ID"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ERROR_TYPE"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ERROR_MSG"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v14

    iget-object v0, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v3, "THUMB_PATH"

    invoke-virtual {v0, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v13, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v12, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;JLjava/lang/Object;I)V

    invoke-virtual {v13, v12}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :cond_d
    iget-wide v3, v6, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v3, v4}, Lcom/motorola/camera/shared/PostProcTransferData;->retrievePostProcTransferDataForForegroundProcessing(J)Lcom/motorola/camera/shared/PostProcTransferData;

    iget v0, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v3, v0

    invoke-static {v3, v4, v9, v1}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V

    :goto_d
    iget-object v1, v11, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_d
    iget-object v0, v11, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v11, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;->run()V

    iput-object v10, v11, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    goto :goto_e

    :catchall_3
    move-exception v0

    goto :goto_10

    :cond_e
    :goto_e
    monitor-exit v1

    :goto_f
    return-void

    :goto_10
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/view/Window;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeHelper$startSplashHideAnim$1$1$1;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeHelper$startSplashHideAnim$1$1$1;-><init>(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->remove()V

    goto :goto_1

    :cond_1
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->inflateViewStub()V

    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v4, :cond_3

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeAdapter;

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object v0, v6, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeAdapter;->screenList:Ljava/util/List;

    iget v7, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->navbarHeight:I

    iput v7, v6, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialModeAdapter;->navbarHeight:I

    invoke-virtual {v4, v6}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v6, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->controlDots:Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v4}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->attachTo(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_2
    new-instance v6, Landroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-direct {v6, v3, v0}, Landroidx/viewpager2/widget/PageTransformerAdapter;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->updateControl(II)V

    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p0, v5}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialModeConfig;->mIsVideo:Z

    if-eqz p0, :cond_5

    const-wide/16 v6, 0x12c

    goto :goto_0

    :cond_5
    const-wide/16 v6, 0x0

    :goto_0
    iget-object p0, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;->contentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialModeComponent;I)V

    invoke-virtual {p0, v0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    if-eqz v0, :cond_9

    iget-object v2, v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iget-object v6, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;->targetFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne v2, v6, :cond_9

    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, p0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object p0, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    iget-object v7, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    iget-object v7, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    if-eqz p0, :cond_7

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;I)V

    invoke-virtual {v2, p0, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    :cond_7
    iget p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    if-eqz p0, :cond_8

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;I)V

    invoke-virtual {v2, p0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    iput-object v3, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;->targetFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    :cond_9
    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->autoSetting:Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_a

    move v3, v4

    goto :goto_2

    :cond_a
    move v3, v5

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result p0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateItems()V

    goto :goto_5

    :cond_b
    const/4 v6, 0x4

    if-nez v3, :cond_e

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v6, p0, :cond_11

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v4, p0, :cond_11

    :cond_e
    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v6, :cond_10

    goto :goto_4

    :cond_10
    :goto_3
    move v4, v5

    :goto_4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateItems()V

    :cond_11
    :goto_5
    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/settings/Setting;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->getClickEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateSettingValue(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateControlBarState(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;)V

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$cancelSwitchToDefaultTimer$1;

    invoke-direct {p0, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$cancelSwitchToDefaultTimer$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;Lkotlin/coroutines/Continuation;)V

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :goto_6
    return-void

    :pswitch_5
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/lang/Object;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_13

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v12, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_13
    iput-object v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    return-void

    :pswitch_6
    invoke-direct {p0}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->run$com$motorola$camera$jms$BgJobTransferService$$ExternalSyntheticLambda2()V

    return-void

    :pswitch_7
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;->-$$Nest$smgetActiveInstanceId()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mIdentifier:Ljava/lang/Integer;

    if-ne v2, v3, :cond_15

    :cond_14
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    if-eqz v2, :cond_15

    const-string v2, "error_retry_count"

    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->mTargetMode:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreModeRunnable;->mTargetMode:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_7

    :cond_15
    const-string p0, "RetryCheckRunnable"

    const-string v0, "Activity or fsm are no longer valid, skip retry"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v7, "SEQ_ID"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v8, "MCF_PROCESSING"

    invoke-virtual {v3, v8, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {v3}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput-boolean v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mBackupImageSaved:Z

    :cond_16
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mBackupImageSaved:Z

    if-nez v1, :cond_17

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v8, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v9, 0x7f1200d3

    invoke-direct {v8, v9}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput-object v2, v8, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v4, v8, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    :goto_8
    invoke-static {v8, v1, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_9

    :cond_17
    sget-boolean v1, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v1, :cond_18

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v8, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v9, 0x7f1200d4

    invoke-direct {v8, v9}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput-object v2, v8, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v4, v8, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    goto :goto_8

    :cond_18
    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v7, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_FAILED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v1, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/concurrent/FileLock;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1a
    return-void

    :pswitch_a
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/concurrent/FileLock;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CameraKpi;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, v0, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/fsm/Fsm;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/StateKey$Key;->values()[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, v8, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v8, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    iget-object v9, v8, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/SecureDataHelper;

    const/4 v11, 0x7

    invoke-direct {v10, v11}, Lcom/motorola/camera/SecureDataHelper;-><init>(I)V

    iput-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-result-object v11

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    move-result-object v11

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->resetState()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    iput-boolean v4, v12, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFirstRun:Z

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v10, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v10, :cond_1b

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v10, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mEnable:Z

    if-eqz v10, :cond_1c

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    iput-boolean v4, v12, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    iput-boolean v5, v12, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    new-instance v13, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-direct {v13, v2, v12}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v13}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-result-object v2

    array-length v10, v2

    move v11, v5

    :goto_b
    if-ge v11, v10, :cond_1d

    aget-object v12, v2, v11

    iget-object v13, v9, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v13, v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Zoom;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SettingsStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SecondUseStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/ExposureStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/HistoryState;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/BokehStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SpotColorState;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/FoldScreenStates;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    :cond_1e
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {v1, p0}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {p0}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object p0

    new-array v1, v4, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {p0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz p0, :cond_1f

    new-instance v1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v1, v3}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;)V

    invoke-interface {p0, v1}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/CameraKpi;)V

    iget-object p0, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraState;

    invoke-virtual {v8, v1}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    goto :goto_c

    :cond_1f
    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {p0}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object p0

    new-array v1, v4, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {p0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    aget-object v0, v1, v5

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz p0, :cond_20

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, v3}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/CameraKpi;)V

    iget-object p0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraState;

    invoke-virtual {v8, v0}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    goto :goto_d

    :cond_20
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iput-object p0, v8, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_21

    const-string p0, "CameraFsm"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fsm init dur:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7, v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_21
    return-void

    :pswitch_b
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/concurrent/FileLock;

    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/Fsm;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/motorola/camera/fsm/Fsm;->handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_c
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/content/BroadcastReceiver$PendingResult;

    sget v3, Lcom/motorola/camera/BootReceiver;->$r8$clinit:I

    const-class v3, Lcom/motorola/camera/CountryDetector;

    monitor-enter v3

    :try_start_2
    invoke-static {v0}, Lcom/motorola/camera/CameraApp;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "com.motorola.camera.country_iso"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v3

    if-nez v6, :cond_22

    invoke-static {v0, v4}, Lcom/motorola/camera/SimStateReceiver;->enableReceiver(Landroid/content/Context;Z)V

    :cond_22
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_DOCUMENT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumSet;

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/motorola/camera/CameraScan;

    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v3, :cond_23

    move v3, v4

    goto :goto_e

    :cond_23
    move v3, v2

    :goto_e
    invoke-virtual {v6, v7, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v3, Landroid/content/ComponentName;

    const-class v7, Lcom/motorola/camera/service/QrScannerTileService;

    invoke-direct {v3, v0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-boolean v7, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v7

    if-eqz v7, :cond_24

    move v7, v4

    goto :goto_f

    :cond_24
    move v7, v2

    :goto_f
    invoke-virtual {v6, v3, v7, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CARRIER_INFO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_MODE_SHORTCUT_HIDE_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_10

    :cond_25
    move v5, v4

    :cond_26
    :goto_10
    new-instance v3, Landroid/content/ComponentName;

    const-class v7, Lcom/motorola/camera/MirrorCameraActivity;

    invoke-direct {v3, v0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v5, :cond_27

    move v5, v4

    goto :goto_11

    :cond_27
    move v5, v2

    :goto_11
    invoke-virtual {v6, v3, v5, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v3, Landroid/content/ComponentName;

    const-class v5, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    invoke-direct {v3, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v5, :cond_28

    move v2, v4

    :cond_28
    invoke-virtual {v6, v3, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/mcf/McfAlgoAssets;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Z)V

    if-eqz v2, :cond_2a

    sget v1, Lcom/motorola/camera/utility/ClearCacheService;->$r8$clinit:I

    const-class v1, Lcom/motorola/camera/utility/ClearCacheService;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    sget-object v1, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;

    if-nez v5, :cond_29

    new-instance v5, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;

    invoke-direct {v5, v0, v3}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-virtual {v5}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->ensureJobId()V

    iget-object v1, v5, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v3, v5, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    new-instance v5, Landroid/app/job/JobWorkItem;

    invoke-direct {v5, v2}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v3, v5}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_2b

    const-string v1, "com.google.android.apps.photos"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_12

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_2a
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->initIfNot(Landroid/content/Context;)V

    :cond_2b
    :goto_12
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_d
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraKpi;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/StartStopToken;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/MenuHostHelper;

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/Processor;

    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/Processor;->startWork(Landroidx/work/impl/StartStopToken;Landroidx/core/view/MenuHostHelper;)Z

    return-void

    :pswitch_e
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    :try_start_6
    iget-object v1, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    const-string v1, "Processor "

    iget-object v2, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-static {v3}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v3

    iget-object v5, v3, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroidx/work/impl/Processor;->getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v6

    if-ne v6, p0, :cond_2c

    invoke-virtual {v0, v5}, Landroidx/work/impl/Processor;->cleanUpWorkerUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_15

    :cond_2c
    :goto_13
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    sget-object v6, Landroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " executed; reschedule = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/ExecutionListener;

    invoke-interface {v0, v3, v4}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    goto :goto_14

    :cond_2d
    monitor-exit v2

    return-void

    :goto_15
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :pswitch_f
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_16

    :cond_2e
    :try_start_8
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_16

    :catchall_4
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    :goto_16
    return-void

    :pswitch_10
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzs;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceView;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    if-nez v1, :cond_2f

    goto :goto_17

    :cond_2f
    new-instance v3, Landroid/window/SurfaceSyncGroup;

    const-string v4, "exo-sync-b-334901521"

    invoke-direct {v3, v4}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v3, v1, v0}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;->run()V

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {v1, p0}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    :goto_17
    return-void

    :pswitch_11
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraKpi;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    new-instance v3, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    const/16 v4, 0x11

    invoke-direct {v3, v2, v1, p0, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;I)V

    const/16 p0, 0x3f9

    invoke-virtual {v0, v2, p0, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/tinder/StateMachine;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v0, v0, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    new-instance v3, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    const/16 v4, 0x1c

    invoke-direct {v3, v2, v1, p0, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;I)V

    const/16 p0, 0x3f1

    invoke-virtual {v0, v2, p0, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2, v1, p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableList$Builder;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/motorola/camera/fsm/Fsm;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v1, v5}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object v1, v2, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v2, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    :cond_30
    iget-object p0, v2, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez p0, :cond_31

    iget-object p0, v2, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/ImmutableList;

    iget-object v1, v2, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v2, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, p0, v1, v3}, Lcom/motorola/camera/fsm/Fsm;->findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    iput-object p0, v2, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    :cond_31
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/Fsm;->updateMediaPeriodTimelines(Landroidx/media3/common/Timeline;)V

    return-void

    :pswitch_15
    iget-object v0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object p0, p0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Lambda;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_18

    :cond_32
    :try_start_9
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_18

    :catchall_5
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    :goto_18
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
